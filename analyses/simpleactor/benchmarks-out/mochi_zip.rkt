(letrec ((any? (lambda (v) (letrec ((g7237 #t)) g7237)))
         (meta (lambda (v) (letrec ((g7238 v)) g7238)))
         (member
          (lambda (v lst)
            (letrec ((g7239
                      (letrec ((g7240
                                (letrec ((x-e7241 lst))
                                  (match
                                   x-e7241
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7242 (eq? v v1)))
                                       (if x-cnd7242 #t (member v vs)))))))))
                        g7240)))
              g7239)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7243 (lambda (v) (letrec ((g7244 v)) g7244)))) g7243)))
         (nonzero?
          (lambda (v)
            (letrec ((g7245 (letrec ((x7246 (= v 0))) (not x7246)))) g7245))))
  (letrec ((g7247
            (letrec ((g7248
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7249 '())
                                 (g7250
                                  (letrec ((real/c
                                            (lambda (g7160 g7161 g7162)
                                              (letrec ((g7251
                                                        (letrec ((x-cnd7252
                                                                  (real?
                                                                   g7162)))
                                                          (if x-cnd7252
                                                            g7162
                                                            (blame
                                                             g7160
                                                             'real?)))))
                                                g7251)))
                                           (boolean?/c
                                            (lambda (g7163 g7164 g7165)
                                              (letrec ((g7253
                                                        (letrec ((x-cnd7254
                                                                  (boolean?
                                                                   g7165)))
                                                          (if x-cnd7254
                                                            g7165
                                                            (blame
                                                             g7163
                                                             'boolean?)))))
                                                g7253)))
                                           (number?/c
                                            (lambda (g7166 g7167 g7168)
                                              (letrec ((g7255
                                                        (letrec ((x-cnd7256
                                                                  (number?
                                                                   g7168)))
                                                          (if x-cnd7256
                                                            g7168
                                                            (blame
                                                             g7166
                                                             'number?)))))
                                                g7255)))
                                           (any/c
                                            (lambda (g7169 g7170 g7171)
                                              (letrec ((g7257
                                                        (letrec ((x-cnd7258
                                                                  ((lambda (v)
                                                                     (letrec ((g7259
                                                                               #t))
                                                                       g7259))
                                                                   g7171)))
                                                          (if x-cnd7258
                                                            g7171
                                                            (blame
                                                             g7169
                                                             '(lambda (v)
                                                                #t))))))
                                                g7257)))
                                           (any?/c
                                            (lambda (g7172 g7173 g7174)
                                              (letrec ((g7260
                                                        (letrec ((x-cnd7261
                                                                  ((lambda (v)
                                                                     (letrec ((g7262
                                                                               #t))
                                                                       g7262))
                                                                   g7174)))
                                                          (if x-cnd7261
                                                            g7174
                                                            (blame
                                                             g7172
                                                             '(lambda (v)
                                                                #t))))))
                                                g7260)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7175 g7176 g7177)
                                              (letrec ((g7263
                                                        (letrec ((x-cnd7264
                                                                  (pair?
                                                                   g7177)))
                                                          (if x-cnd7264
                                                            g7177
                                                            (blame
                                                             g7175
                                                             'pair?)))))
                                                g7263)))
                                           (pair?/c
                                            (lambda (g7178 g7179 g7180)
                                              (letrec ((g7265
                                                        (letrec ((x-cnd7266
                                                                  (pair?
                                                                   g7180)))
                                                          (if x-cnd7266
                                                            g7180
                                                            (blame
                                                             g7178
                                                             'pair?)))))
                                                g7265)))
                                           (integer?
                                            (lambda (g7181 g7182 g7183)
                                              (letrec ((g7267
                                                        (letrec ((x-cnd7268
                                                                  (integer?
                                                                   g7183)))
                                                          (if x-cnd7268
                                                            g7183
                                                            (blame
                                                             g7181
                                                             'integer?)))))
                                                g7267)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7269
                                                        (lambda (k j v)
                                                          (letrec ((g7270
                                                                    (letrec ((x-cnd7271
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7271
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7270))))
                                                g7269)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7272
                                                        (lambda (k j v)
                                                          (letrec ((g7273
                                                                    (letrec ((x-cnd7274
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7274
                                                                        '()
                                                                        (letrec ((x7278
                                                                                  (letrec ((x7279
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7279)))
                                                                                 (x7275
                                                                                  (letrec ((x7277
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7276
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7277
                                                                                     k
                                                                                     j
                                                                                     x7276))))
                                                                          (cons
                                                                           x7278
                                                                           x7275))))))
                                                            g7273))))
                                                g7272)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7280 #t)) g7280)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7281
                                                        (letrec ((x7282
                                                                  (= v 0)))
                                                          (not x7282))))
                                                g7281)))
                                           (nonzero?/c
                                            (lambda (g7184 g7185 g7186)
                                              (letrec ((g7283
                                                        (letrec ((x-cnd7284
                                                                  ((lambda (v)
                                                                     (letrec ((g7285
                                                                               (letrec ((x7286
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7286))))
                                                                       g7285))
                                                                   g7186)))
                                                          (if x-cnd7284
                                                            g7186
                                                            (blame
                                                             g7184
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7283)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7287 v)) g7287)))
                                           (+
                                            ((lambda (j7189 k7190 f7191)
                                               (letrec ((g7289
                                                         (lambda (g7187 g7188)
                                                           (letrec ((g7290
                                                                     (letrec ((x7291
                                                                               (letrec ((x7293
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7187))
                                                                                        (x7292
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7188)))
                                                                                 (f7191
                                                                                  x7293
                                                                                  x7292))))
                                                                       (number?/c
                                                                        j7189
                                                                        k7190
                                                                        x7291))))
                                                             g7290))))
                                                 g7289))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7288 (orig-+ a b)))
                                                 g7288))))
                                           (-
                                            ((lambda (j7194 k7195 f7196)
                                               (letrec ((g7295
                                                         (lambda (g7192 g7193)
                                                           (letrec ((g7296
                                                                     (letrec ((x7297
                                                                               (letrec ((x7299
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7192))
                                                                                        (x7298
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7193)))
                                                                                 (f7196
                                                                                  x7299
                                                                                  x7298))))
                                                                       (number?/c
                                                                        j7194
                                                                        k7195
                                                                        x7297))))
                                                             g7296))))
                                                 g7295))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7294 (orig-- a b)))
                                                 g7294))))
                                           (*
                                            ((lambda (j7199 k7200 f7201)
                                               (letrec ((g7301
                                                         (lambda (g7197 g7198)
                                                           (letrec ((g7302
                                                                     (letrec ((x7303
                                                                               (letrec ((x7305
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7197))
                                                                                        (x7304
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7198)))
                                                                                 (f7201
                                                                                  x7305
                                                                                  x7304))))
                                                                       (number?/c
                                                                        j7199
                                                                        k7200
                                                                        x7303))))
                                                             g7302))))
                                                 g7301))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7300 (orig-* a b)))
                                                 g7300))))
                                           (/
                                            ((lambda (j7204 k7205 f7206)
                                               (letrec ((g7307
                                                         (lambda (g7202 g7203)
                                                           (letrec ((g7308
                                                                     (letrec ((x7309
                                                                               (letrec ((x7311
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7202))
                                                                                        (x7310
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7203)))
                                                                                 (f7206
                                                                                  x7311
                                                                                  x7310))))
                                                                       (number?/c
                                                                        j7204
                                                                        k7205
                                                                        x7309))))
                                                             g7308))))
                                                 g7307))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7306 (orig-/ a b)))
                                                 g7306))))
                                           (car
                                            ((lambda (j7208 k7209 f7210)
                                               (letrec ((g7313
                                                         (lambda (g7207)
                                                           (letrec ((g7314
                                                                     (letrec ((x7315
                                                                               (letrec ((x7316
                                                                                         (pair?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7207)))
                                                                                 (f7210
                                                                                  x7316))))
                                                                       (any/c
                                                                        j7208
                                                                        k7209
                                                                        x7315))))
                                                             g7314))))
                                                 g7313))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7312 (orig-car p)))
                                                 g7312))))
                                           (cdr
                                            ((lambda (j7212 k7213 f7214)
                                               (letrec ((g7318
                                                         (lambda (g7211)
                                                           (letrec ((g7319
                                                                     (letrec ((x7320
                                                                               (letrec ((x7321
                                                                                         (pair?/c
                                                                                          j7212
                                                                                          k7213
                                                                                          g7211)))
                                                                                 (f7214
                                                                                  x7321))))
                                                                       (any/c
                                                                        j7212
                                                                        k7213
                                                                        x7320))))
                                                             g7319))))
                                                 g7318))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7317 (orig-cdr p)))
                                                 g7317))))
                                           (cons
                                            ((lambda (j7217 k7218 f7219)
                                               (letrec ((g7323
                                                         (lambda (g7215 g7216)
                                                           (letrec ((g7324
                                                                     (letrec ((x7325
                                                                               (letrec ((x7327
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7215))
                                                                                        (x7326
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7216)))
                                                                                 (f7219
                                                                                  x7327
                                                                                  x7326))))
                                                                       (pair?/c
                                                                        j7217
                                                                        k7218
                                                                        x7325))))
                                                             g7324))))
                                                 g7323))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7322 (cons a b)))
                                                 g7322))))
                                           (vector-ref
                                            ((lambda (j7221 k7222 f7223)
                                               (letrec ((g7329
                                                         (lambda (g7220)
                                                           (letrec ((g7330
                                                                     (letrec ((x7331
                                                                               (letrec ((x7332
                                                                                         (vector?/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7220)))
                                                                                 (f7223
                                                                                  x7332))))
                                                                       (integer?/c
                                                                        j7221
                                                                        k7222
                                                                        x7331))))
                                                             g7330))))
                                                 g7329))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7328
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7328))))
                                           (vector-set!
                                            ((lambda (j7226 k7227 f7228)
                                               (letrec ((g7334
                                                         (lambda (g7224 g7225)
                                                           (letrec ((g7335
                                                                     (letrec ((x7336
                                                                               (letrec ((x7338
                                                                                         (vector?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7224))
                                                                                        (x7337
                                                                                         (integer?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7225)))
                                                                                 (f7228
                                                                                  x7338
                                                                                  x7337))))
                                                                       (any/c
                                                                        j7226
                                                                        k7227
                                                                        x7336))))
                                                             g7335))))
                                                 g7334))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7333
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7333))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7339 #t)) g7339)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7340
                                                        (letrec ((x7341
                                                                  (letrec ((x7342
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7342))))
                                                          (cdr x7341))))
                                                g7340)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7343
                                                        (letrec ((x7346
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7346)))
                                                       (g7344
                                                        (letrec ((x7347
                                                                  (list? l)))
                                                          (assert x7347)))
                                                       (g7345
                                                        (letrec ((x-cnd7348
                                                                  (null? l)))
                                                          (if x-cnd7348
                                                            '()
                                                            (letrec ((x7351
                                                                      (letrec ((x7352
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7352)))
                                                                     (x7349
                                                                      (letrec ((x7350
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7350))))
                                                              (cons
                                                               x7351
                                                               x7349))))))
                                                g7345)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7353
                                                        (letrec ((x7354
                                                                  (car x)))
                                                          (cdr x7354))))
                                                g7353)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7355
                                                        (letrec ((x7356
                                                                  (letrec ((x7357
                                                                            (letrec ((x7358
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7358))))
                                                                    (cdr
                                                                     x7357))))
                                                          (car x7356))))
                                                g7355)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7359
                                                        (letrec ((x7360
                                                                  (letrec ((x7361
                                                                            (letrec ((x7362
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7362))))
                                                                    (car
                                                                     x7361))))
                                                          (cdr x7360))))
                                                g7359)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7363
                                                        (letrec ((x7366
                                                                  (string?
                                                                   filename)))
                                                          (assert x7366)))
                                                       (g7364
                                                        (letrec ((x7367
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7367)))
                                                       (g7365
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7368
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7369 res))
                                                            g7369))))
                                                g7365)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7370
                                                        (letrec ((x7371
                                                                  (letrec ((x7372
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7372))))
                                                          (car x7371))))
                                                g7370)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7373
                                                        (letrec ((x7374
                                                                  (letrec ((x7375
                                                                            (letrec ((x7376
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7376))))
                                                                    (car
                                                                     x7375))))
                                                          (cdr x7374))))
                                                g7373)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7377
                                                        (letrec ((x7379
                                                                  (list? l)))
                                                          (assert x7379)))
                                                       (g7378
                                                        (letrec ((x-cnd7380
                                                                  (null? l)))
                                                          (if x-cnd7380
                                                            #f
                                                            (letrec ((x-cnd7381
                                                                      (letrec ((x7382
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7382
                                                                         k))))
                                                              (if x-cnd7381
                                                                (car l)
                                                                (letrec ((x7383
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7383))))))))
                                                g7378)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7384
                                                        (letrec ((x7385
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7385))))
                                                g7384)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7386
                                                        (letrec ((x7388
                                                                  (list? l)))
                                                          (assert x7388)))
                                                       (g7387
                                                        (letrec ((x-cnd7389
                                                                  (null? l)))
                                                          (if x-cnd7389
                                                            ""
                                                            (letrec ((x7392
                                                                      (letrec ((x7393
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7393)))
                                                                     (x7390
                                                                      (letrec ((x7391
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7391))))
                                                              (string-append
                                                               x7392
                                                               x7390))))))
                                                g7387)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7394
                                                        (letrec ((x7397
                                                                  (char? c1)))
                                                          (assert x7397)))
                                                       (g7395
                                                        (letrec ((x7398
                                                                  (char? c2)))
                                                          (assert x7398)))
                                                       (g7396
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7399
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7399))))
                                                g7396)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7400
                                                        (letrec ((x7401
                                                                  (letrec ((x7402
                                                                            (letrec ((x7403
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7403))))
                                                                    (cdr
                                                                     x7402))))
                                                          (cdr x7401))))
                                                g7400)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7404
                                                        (letrec ((x7407
                                                                  (list? l)))
                                                          (assert x7407)))
                                                       (g7405
                                                        (letrec ((x7408
                                                                  (numer?)))
                                                          (assert x7408)))
                                                       (g7406
                                                        (letrec ((x-cnd7409
                                                                  (zero? k)))
                                                          (if x-cnd7409
                                                            x
                                                            (letrec ((x7411
                                                                      (cdr x))
                                                                     (x7410
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7411
                                                               x7410))))))
                                                g7406)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7412 '())) g7412)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7413
                                                        (letrec ((x-cnd7414
                                                                  (letrec ((x7415
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7415))))
                                                          (if x-cnd7414
                                                            (letrec ((x7416
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7416))
                                                            #f))))
                                                g7413)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7417
                                                        (letrec ((x7419
                                                                  (number? x)))
                                                          (assert x7419)))
                                                       (g7418
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7420
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7421
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7421)))))
                                                            g7420))))
                                                g7418)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7422
                                                        (letrec ((val7146
                                                                  (letrec ((x7423
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7423
                                                                     9))))
                                                          (letrec ((g7424
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7425
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7425
                                                                                   10))))
                                                                        (letrec ((g7426
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7427
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7427
                                                                                       32)))))
                                                                          g7426)))))
                                                            g7424))))
                                                g7422)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7428
                                                        (letrec ((x7429
                                                                  (letrec ((x7430
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7430))))
                                                          (cdr x7429))))
                                                g7428)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7431
                                                        (letrec ((x7433
                                                                  (number? x)))
                                                          (assert x7433)))
                                                       (g7432 (> x 0)))
                                                g7432)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7434 #f)) g7434)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7435
                                                        (letrec ((x7436
                                                                  (cdr x)))
                                                          (cdr x7436))))
                                                g7435)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7437
                                                        (letrec ((x7439
                                                                  (number? x)))
                                                          (assert x7439)))
                                                       (g7438
                                                        (letrec ((x-cnd7440
                                                                  (< x 0)))
                                                          (if x-cnd7440
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7438)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7441
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7442
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7444
                                                                                          (null?
                                                                                           a))
                                                                                         (x7443
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7444
                                                                                       x7443))))
                                                                        (letrec ((g7445
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7448
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7447
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7446
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7448
                                                                                                     x7447
                                                                                                     x7446))))
                                                                                      (letrec ((g7449
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7457
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7456
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7453
                                                                                                                      (letrec ((x7455
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7454
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7455
                                                                                                                         x7454)))
                                                                                                                     (x7450
                                                                                                                      (letrec ((x7452
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7451
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7452
                                                                                                                         x7451))))
                                                                                                              (and x7457
                                                                                                                   x7456
                                                                                                                   x7453
                                                                                                                   x7450))))
                                                                                                    (letrec ((g7458
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7477
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7476
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7459
                                                                                                                          (letrec ((x7473
                                                                                                                                    (letrec ((x7474
                                                                                                                                              (letrec ((x7475
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7475))))
                                                                                                                                      (x7474)))
                                                                                                                                   (x7460
                                                                                                                                    (letrec ((x7471
                                                                                                                                              (letrec ((x7472
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7472
                                                                                                                                                 n)))
                                                                                                                                             (x7461
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7462
                                                                                                                                                                    (letrec ((x7469
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7463
                                                                                                                                                                              (letrec ((x7466
                                                                                                                                                                                        (letrec ((x7468
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7467
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7468
                                                                                                                                                                                           x7467)))
                                                                                                                                                                                       (x7464
                                                                                                                                                                                        (letrec ((x7465
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7465))))
                                                                                                                                                                                (and x7466
                                                                                                                                                                                     x7464))))
                                                                                                                                                                      (or x7469
                                                                                                                                                                          x7463))))
                                                                                                                                                            g7462))))
                                                                                                                                                (letrec ((g7470
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7470))))
                                                                                                                                      (and x7471
                                                                                                                                           x7461))))
                                                                                                                            (let x7473 x7460))))
                                                                                                                  (and x7477
                                                                                                                       x7476
                                                                                                                       x7459)))))
                                                                                                      g7458)))))
                                                                                        g7449)))))
                                                                          g7445)))))
                                                            g7442))))
                                                g7441)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7478
                                                        (letrec ((x7479
                                                                  (letrec ((x7480
                                                                            (letrec ((x7481
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7481))))
                                                                    (car
                                                                     x7480))))
                                                          (cdr x7479))))
                                                g7478)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7482
                                                        (letrec ((x7483
                                                                  (letrec ((x7484
                                                                            (letrec ((x7485
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7485))))
                                                                    (car
                                                                     x7484))))
                                                          (car x7483))))
                                                g7482)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7486 (eq? x y)))
                                                g7486)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7487
                                                        (letrec ((x7489
                                                                  (number? x)))
                                                          (assert x7489)))
                                                       (g7488
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7490
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7491
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7491)))))
                                                            g7490))))
                                                g7488)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7492
                                                        (letrec ((x7495
                                                                  (string?
                                                                   filename)))
                                                          (assert x7495)))
                                                       (g7493
                                                        (letrec ((x7496
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7496)))
                                                       (g7494
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7497
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7498 res))
                                                            g7498))))
                                                g7494)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7499 (cons x '())))
                                                g7499)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7500
                                                        (letrec ((x7503
                                                                  (char? c1)))
                                                          (assert x7503)))
                                                       (g7501
                                                        (letrec ((x7504
                                                                  (char? c2)))
                                                          (assert x7504)))
                                                       (g7502
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7505
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7505))))
                                                g7502)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7506
                                                        (letrec ((x7507
                                                                  (letrec ((x7508
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7508))))
                                                          (cdr x7507))))
                                                g7506)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7509
                                                        (letrec ((x7510
                                                                  (letrec ((x7511
                                                                            (letrec ((x7512
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7512))))
                                                                    (car
                                                                     x7511))))
                                                          (cdr x7510))))
                                                g7509)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7513
                                                        (letrec ((x7514
                                                                  (letrec ((x7515
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7515))))
                                                          (car x7514))))
                                                g7513)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7516
                                                        (letrec ((x7517
                                                                  (letrec ((x7518
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7518))))
                                                          (car x7517))))
                                                g7516)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7519
                                                        (letrec ((x7522
                                                                  (char? c1)))
                                                          (assert x7522)))
                                                       (g7520
                                                        (letrec ((x7523
                                                                  (char? c2)))
                                                          (assert x7523)))
                                                       (g7521
                                                        (letrec ((x7524
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7524))))
                                                g7521)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7525
                                                        (letrec ((x7526
                                                                  (letrec ((x7527
                                                                            (letrec ((x7528
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7528))))
                                                                    (car
                                                                     x7527))))
                                                          (car x7526))))
                                                g7525)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7529
                                                        (letrec ((x7531
                                                                  (number? x)))
                                                          (assert x7531)))
                                                       (g7530 (< x 0)))
                                                g7530)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7532 (memq e l)))
                                                g7532)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7533
                                                        (letrec ((x7534
                                                                  (letrec ((x7535
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7535))))
                                                          (car x7534))))
                                                g7533)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7536 '())) g7536)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7537
                                                        (letrec ((x7539
                                                                  (list? l)))
                                                          (assert x7539)))
                                                       (g7538
                                                        (letrec ((x-cnd7540
                                                                  (null? l)))
                                                          (if x-cnd7540
                                                            '()
                                                            (letrec ((x7543
                                                                      (letrec ((x7544
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7544)))
                                                                     (x7541
                                                                      (letrec ((x7542
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7542))))
                                                              (append
                                                               x7543
                                                               x7541))))))
                                                g7538)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7545
                                                        (letrec ((x7546
                                                                  (letrec ((x7547
                                                                            (letrec ((x7548
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7548))))
                                                                    (car
                                                                     x7547))))
                                                          (car x7546))))
                                                g7545)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7549
                                                        (letrec ((x7550
                                                                  (letrec ((x7551
                                                                            (letrec ((x7552
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7552))))
                                                                    (cdr
                                                                     x7551))))
                                                          (cdr x7550))))
                                                g7549)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7553
                                                        (letrec ((x7555
                                                                  (number? x)))
                                                          (assert x7555)))
                                                       (g7554
                                                        (letrec ((x7556
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7556))))
                                                g7554)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7557
                                                        (letrec ((x7558
                                                                  (letrec ((x7559
                                                                            (letrec ((x7560
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7560))))
                                                                    (car
                                                                     x7559))))
                                                          (car x7558))))
                                                g7557)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7561
                                                        (letrec ((x7564
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7564)))
                                                       (g7562
                                                        (letrec ((x7565
                                                                  (list?
                                                                   args)))
                                                          (assert x7565)))
                                                       (g7563
                                                        (if cnd
                                                          (letrec ((g7566
                                                                    (proc)))
                                                            g7566)
                                                          (if cnd
                                                            (letrec ((g7567
                                                                      (letrec ((x7568
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7568))))
                                                              g7567)
                                                            (if cnd
                                                              (letrec ((g7569
                                                                        (letrec ((x7571
                                                                                  (car
                                                                                   args))
                                                                                 (x7570
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7571
                                                                           x7570))))
                                                                g7569)
                                                              (if cnd
                                                                (letrec ((g7572
                                                                          (letrec ((x7575
                                                                                    (car
                                                                                     args))
                                                                                   (x7574
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7573
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7575
                                                                             x7574
                                                                             x7573))))
                                                                  g7572)
                                                                (if cnd
                                                                  (letrec ((g7576
                                                                            (letrec ((x7580
                                                                                      (car
                                                                                       args))
                                                                                     (x7579
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7578
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7577
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7580
                                                                               x7579
                                                                               x7578
                                                                               x7577))))
                                                                    g7576)
                                                                  (if cnd
                                                                    (letrec ((g7581
                                                                              (letrec ((x7587
                                                                                        (car
                                                                                         args))
                                                                                       (x7586
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7585
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7584
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7582
                                                                                        (letrec ((x7583
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7583))))
                                                                                (proc
                                                                                 x7587
                                                                                 x7586
                                                                                 x7585
                                                                                 x7584
                                                                                 x7582))))
                                                                      g7581)
                                                                    (if cnd
                                                                      (letrec ((g7588
                                                                                (letrec ((x7596
                                                                                          (car
                                                                                           args))
                                                                                         (x7595
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7594
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7593
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7591
                                                                                          (letrec ((x7592
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7592)))
                                                                                         (x7589
                                                                                          (letrec ((x7590
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7590))))
                                                                                  (proc
                                                                                   x7596
                                                                                   x7595
                                                                                   x7594
                                                                                   x7593
                                                                                   x7591
                                                                                   x7589))))
                                                                        g7588)
                                                                      (if cnd
                                                                        (letrec ((g7597
                                                                                  (letrec ((x7607
                                                                                            (car
                                                                                             args))
                                                                                           (x7606
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7605
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7604
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7602
                                                                                            (letrec ((x7603
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7603)))
                                                                                           (x7600
                                                                                            (letrec ((x7601
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7601)))
                                                                                           (x7598
                                                                                            (letrec ((x7599
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7599))))
                                                                                    (proc
                                                                                     x7607
                                                                                     x7606
                                                                                     x7605
                                                                                     x7604
                                                                                     x7602
                                                                                     x7600
                                                                                     x7598))))
                                                                          g7597)
                                                                        (letrec ((g7608
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7608)))))))))))
                                                g7563)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7609
                                                        (letrec ((x7611
                                                                  (list? l)))
                                                          (assert x7611)))
                                                       (g7610
                                                        (letrec ((x-cnd7612
                                                                  (null? l)))
                                                          (if x-cnd7612
                                                            #f
                                                            (letrec ((x-cnd7613
                                                                      (letrec ((x7614
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7614
                                                                         e))))
                                                              (if x-cnd7613
                                                                l
                                                                (letrec ((x7615
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7615))))))))
                                                g7610)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7616
                                                        (letrec ((x7617
                                                                  (letrec ((x7618
                                                                            (letrec ((x7619
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7619))))
                                                                    (cdr
                                                                     x7618))))
                                                          (cdr x7617))))
                                                g7616)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7620
                                                        (letrec ((x7621
                                                                  (letrec ((x7622
                                                                            (letrec ((x7623
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7623))))
                                                                    (cdr
                                                                     x7622))))
                                                          (car x7621))))
                                                g7620)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7624 (random 42)))
                                                g7624)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7625
                                                        (letrec ((x7627
                                                                  (number? x)))
                                                          (assert x7627)))
                                                       (g7626 (= x 0)))
                                                g7626)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7628
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7629
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7629))))
                                                g7628)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7630
                                                        (letrec ((x7631
                                                                  (cdr x)))
                                                          (car x7631))))
                                                g7630)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7632
                                                        (letrec ((val7156
                                                                  (letrec ((x7635
                                                                            (pair?
                                                                             l))
                                                                           (x7633
                                                                            (letrec ((x7634
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7634))))
                                                                    (and x7635
                                                                         x7633))))
                                                          (letrec ((g7636
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7636))))
                                                g7632)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7637
                                                        (letrec ((x7638
                                                                  (letrec ((x7639
                                                                            (letrec ((x7640
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7640))))
                                                                    (cdr
                                                                     x7639))))
                                                          (cdr x7638))))
                                                g7637)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7641
                                                        (letrec ((x-cnd7642
                                                                  (letrec ((x7643
                                                                            #\0))
                                                                    (char<=?
                                                                     x7643
                                                                     c))))
                                                          (if x-cnd7642
                                                            (letrec ((x7644
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7644))
                                                            #f))))
                                                g7641)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7645
                                                        (letrec ((x7647
                                                                  (list? l)))
                                                          (assert x7647)))
                                                       (g7646
                                                        (letrec ((x-cnd7648
                                                                  (null? l)))
                                                          (if x-cnd7648
                                                            #f
                                                            (letrec ((x-cnd7649
                                                                      (letrec ((x7650
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7650
                                                                         k))))
                                                              (if x-cnd7649
                                                                (car l)
                                                                (letrec ((x7651
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7651))))))))
                                                g7646)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7652 (if x #f #t)))
                                                g7652)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7653 (append l1 l2)))
                                                g7653)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7654
                                                        (letrec ((x7656
                                                                  (list? l)))
                                                          (assert x7656)))
                                                       (g7655
                                                        (letrec ((x-cnd7657
                                                                  (null? l)))
                                                          (if x-cnd7657
                                                            #f
                                                            (letrec ((x-cnd7658
                                                                      (letrec ((x7659
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7659
                                                                         e))))
                                                              (if x-cnd7658
                                                                l
                                                                (letrec ((x7660
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7660))))))))
                                                g7655)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7661
                                                        (letrec ((x7662
                                                                  (letrec ((x7663
                                                                            (letrec ((x7664
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7664))))
                                                                    (cdr
                                                                     x7663))))
                                                          (car x7662))))
                                                g7661)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7665
                                                        (letrec ((x7667
                                                                  (list? l)))
                                                          (assert x7667)))
                                                       (g7666
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7668
                                                                              (letrec ((x-cnd7669
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7669
                                                                                  0
                                                                                  (letrec ((x7670
                                                                                            (letrec ((x7671
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7671))))
                                                                                    (+
                                                                                     1
                                                                                     x7670))))))
                                                                      g7668))))
                                                          (letrec ((g7672
                                                                    (rec l)))
                                                            g7672))))
                                                g7666)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7673
                                                        (letrec ((x7676
                                                                  (char? c1)))
                                                          (assert x7676)))
                                                       (g7674
                                                        (letrec ((x7677
                                                                  (char? c2)))
                                                          (assert x7677)))
                                                       (g7675
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7678
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7678))))
                                                g7675)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7679
                                                        (letrec ((x7680
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7680))))
                                                g7679)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7681
                                                        (letrec ((x7682
                                                                  (letrec ((x7683
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7683))))
                                                          (cdr x7682))))
                                                g7681)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7684
                                                        (letrec ((x7686
                                                                  (list? l)))
                                                          (assert x7686)))
                                                       (g7685
                                                        (letrec ((x-cnd7687
                                                                  (null? l)))
                                                          (if x-cnd7687
                                                            #f
                                                            (letrec ((x-cnd7688
                                                                      (letrec ((x7689
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7689
                                                                         k))))
                                                              (if x-cnd7688
                                                                (car l)
                                                                (letrec ((x7690
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7690))))))))
                                                g7685)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7691
                                                        (letrec ((x7692
                                                                  (car x)))
                                                          (car x7692))))
                                                g7691)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7693
                                                        (letrec ((x7696
                                                                  (char? c1)))
                                                          (assert x7696)))
                                                       (g7694
                                                        (letrec ((x7697
                                                                  (char? c2)))
                                                          (assert x7697)))
                                                       (g7695
                                                        (letrec ((x7698
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7698))))
                                                g7695)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7699
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7700
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7700))))
                                                g7699)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7701
                                                        (letrec ((x7704
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7704)))
                                                       (g7702
                                                        (letrec ((x7705
                                                                  (list? l)))
                                                          (assert x7705)))
                                                       (g7703
                                                        (letrec ((x-cnd7706
                                                                  (null? l)))
                                                          (if x-cnd7706
                                                            #t
                                                            (letrec ((x-cnd7707
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7707
                                                                (letrec ((g7708
                                                                          (letrec ((x7710
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7710)))
                                                                         (g7709
                                                                          (letrec ((x7711
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7711))))
                                                                  g7709)
                                                                '()))))))
                                                g7703)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7712
                                                        (letrec ((x7714
                                                                  (number? x)))
                                                          (assert x7714)))
                                                       (g7713
                                                        (letrec ((x-cnd7715
                                                                  (< x 0)))
                                                          (if x-cnd7715
                                                            (- 0 x)
                                                            x))))
                                                g7713)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7716
                                                        (letrec ((x7719
                                                                  (char? c1)))
                                                          (assert x7719)))
                                                       (g7717
                                                        (letrec ((x7720
                                                                  (char? c2)))
                                                          (assert x7720)))
                                                       (g7718
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7721
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7721))))
                                                g7718)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7722
                                                        (letrec ((x7723
                                                                  (letrec ((x7724
                                                                            (letrec ((x7725
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7725))))
                                                                    (cdr
                                                                     x7724))))
                                                          (car x7723))))
                                                g7722)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7726 #f)) g7726)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7727
                                                        (letrec ((x7729
                                                                  (letrec ((x7730
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7730)))
                                                                 (x7728
                                                                  (gcd m n)))
                                                          (/ x7729 x7728))))
                                                g7727)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7731
                                                        (letrec ((x7733
                                                                  (number? x)))
                                                          (assert x7733)))
                                                       (g7732
                                                        (letrec ((x7734
                                                                  (<= x y)))
                                                          (not x7734))))
                                                g7732)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7735
                                                        (letrec ((x7739
                                                                  (list? l)))
                                                          (assert x7739)))
                                                       (g7736
                                                        (letrec ((x7740
                                                                  (number?
                                                                   index)))
                                                          (assert x7740)))
                                                       (g7737
                                                        (letrec ((x7741
                                                                  (letrec ((x7742
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7742))))
                                                          (assert x7741)))
                                                       (g7738
                                                        (letrec ((x-cnd7743
                                                                  (= index 0)))
                                                          (if x-cnd7743
                                                            (car l)
                                                            (letrec ((x7745
                                                                      (cdr l))
                                                                     (x7744
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7745
                                                               x7744))))))
                                                g7738)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7746
                                                        (letrec ((x-cnd7747
                                                                  (= b 0)))
                                                          (if x-cnd7747
                                                            a
                                                            (letrec ((x7748
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7748))))))
                                                g7746)))
                                           (zip
                                            (lambda (xs ys)
                                              (letrec ((g7749
                                                        (if cnd
                                                          (letrec ((g7750
                                                                    empty))
                                                            g7750)
                                                          (if cnd
                                                            (letrec ((g7751
                                                                      (letrec ((x7755
                                                                                (letrec ((x7757
                                                                                          (car
                                                                                           xs))
                                                                                         (x7756
                                                                                          (car
                                                                                           ys)))
                                                                                  (cons
                                                                                   x7757
                                                                                   x7756)))
                                                                               (x7752
                                                                                (letrec ((x7754
                                                                                          (cdr
                                                                                           xs))
                                                                                         (x7753
                                                                                          (cdr
                                                                                           ys)))
                                                                                  (zip
                                                                                   x7754
                                                                                   x7753))))
                                                                        (cons
                                                                         x7755
                                                                         x7752))))
                                                              g7751)
                                                            (letrec ((g7758
                                                                      'fail))
                                                              g7758)))))
                                                g7749)))
                                           (mk-list
                                            (lambda (n)
                                              (letrec ((g7759
                                                        (letrec ((x-cnd7760
                                                                  (< n 0)))
                                                          (if x-cnd7760
                                                            empty
                                                            (letrec ((x7761
                                                                      (letrec ((x7762
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (mk-list
                                                                         x7762))))
                                                              (cons
                                                               n
                                                               x7761))))))
                                                g7759)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7763
                                                        (letrec ((xs
                                                                  (mk-list n)))
                                                          (letrec ((g7764
                                                                    (zip
                                                                     xs
                                                                     xs)))
                                                            g7764))))
                                                g7763))))
                                    (letrec ((g7765
                                              (letrec ((x7768
                                                        ((lambda (j7230
                                                                  k7231
                                                                  f7232)
                                                           (letrec ((g7769
                                                                     (lambda (g7229)
                                                                       (letrec ((g7770
                                                                                 (letrec ((x7773
                                                                                           (listof
                                                                                            integer?/c))
                                                                                          (x7771
                                                                                           (letrec ((x7772
                                                                                                     (integer?/c
                                                                                                      j7230
                                                                                                      k7231
                                                                                                      g7229)))
                                                                                             (f7232
                                                                                              x7772))))
                                                                                   (x7773
                                                                                    j7230
                                                                                    k7231
                                                                                    x7771))))
                                                                         g7770))))
                                                             g7769))
                                                         'module
                                                         'importer
                                                         mk-list))
                                                       (x7767 (input)))
                                                (x7768 x7767)))
                                             (g7766
                                              (letrec ((x7775
                                                        ((lambda (j7234
                                                                  k7235
                                                                  f7236)
                                                           (letrec ((g7776
                                                                     (lambda (g7233)
                                                                       (letrec ((g7777
                                                                                 (letrec ((x7780
                                                                                           (letrec ((x7781
                                                                                                     (cons/c
                                                                                                      integer?/c
                                                                                                      integer?/c)))
                                                                                             (listof
                                                                                              x7781)))
                                                                                          (x7778
                                                                                           (letrec ((x7779
                                                                                                     (integer?/c
                                                                                                      j7234
                                                                                                      k7235
                                                                                                      g7233)))
                                                                                             (f7236
                                                                                              x7779))))
                                                                                   (x7780
                                                                                    j7234
                                                                                    k7235
                                                                                    x7778))))
                                                                         g7777))))
                                                             g7776))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7774 (input)))
                                                (x7775 x7774))))
                                      g7766))))
                          g7250))))
              g7248)))
    g7247))
