(letrec ((any? (lambda (v) (letrec ((g7233 #t)) g7233)))
         (meta (lambda (v) (letrec ((g7234 v)) g7234)))
         (member
          (lambda (v lst)
            (letrec ((g7235
                      (letrec ((g7236
                                (letrec ((x-e7237 lst))
                                  (match
                                   x-e7237
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7238 (eq? v v1)))
                                       (if x-cnd7238 #t (member v vs)))))))))
                        g7236)))
              g7235)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7239 (lambda (v) (letrec ((g7240 v)) g7240)))) g7239)))
         (nonzero?
          (lambda (v)
            (letrec ((g7241 (letrec ((x7242 (= v 0))) (not x7242)))) g7241))))
  (letrec ((g7243
            (letrec ((g7244
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7245 '())
                                 (g7246
                                  (letrec ((real/c
                                            (lambda (g7160 g7161 g7162)
                                              (letrec ((g7247
                                                        (letrec ((x-cnd7248
                                                                  (real?
                                                                   g7162)))
                                                          (if x-cnd7248
                                                            g7162
                                                            (blame
                                                             g7160
                                                             'real?)))))
                                                g7247)))
                                           (boolean?/c
                                            (lambda (g7163 g7164 g7165)
                                              (letrec ((g7249
                                                        (letrec ((x-cnd7250
                                                                  (boolean?
                                                                   g7165)))
                                                          (if x-cnd7250
                                                            g7165
                                                            (blame
                                                             g7163
                                                             'boolean?)))))
                                                g7249)))
                                           (number?/c
                                            (lambda (g7166 g7167 g7168)
                                              (letrec ((g7251
                                                        (letrec ((x-cnd7252
                                                                  (number?
                                                                   g7168)))
                                                          (if x-cnd7252
                                                            g7168
                                                            (blame
                                                             g7166
                                                             'number?)))))
                                                g7251)))
                                           (any/c
                                            (lambda (g7169 g7170 g7171)
                                              (letrec ((g7253
                                                        (letrec ((x-cnd7254
                                                                  ((lambda (v)
                                                                     (letrec ((g7255
                                                                               #t))
                                                                       g7255))
                                                                   g7171)))
                                                          (if x-cnd7254
                                                            g7171
                                                            (blame
                                                             g7169
                                                             '(lambda (v)
                                                                #t))))))
                                                g7253)))
                                           (any?/c
                                            (lambda (g7172 g7173 g7174)
                                              (letrec ((g7256
                                                        (letrec ((x-cnd7257
                                                                  ((lambda (v)
                                                                     (letrec ((g7258
                                                                               #t))
                                                                       g7258))
                                                                   g7174)))
                                                          (if x-cnd7257
                                                            g7174
                                                            (blame
                                                             g7172
                                                             '(lambda (v)
                                                                #t))))))
                                                g7256)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7175 g7176 g7177)
                                              (letrec ((g7259
                                                        (letrec ((x-cnd7260
                                                                  (pair?
                                                                   g7177)))
                                                          (if x-cnd7260
                                                            g7177
                                                            (blame
                                                             g7175
                                                             'pair?)))))
                                                g7259)))
                                           (pair?/c
                                            (lambda (g7178 g7179 g7180)
                                              (letrec ((g7261
                                                        (letrec ((x-cnd7262
                                                                  (pair?
                                                                   g7180)))
                                                          (if x-cnd7262
                                                            g7180
                                                            (blame
                                                             g7178
                                                             'pair?)))))
                                                g7261)))
                                           (integer?
                                            (lambda (g7181 g7182 g7183)
                                              (letrec ((g7263
                                                        (letrec ((x-cnd7264
                                                                  (integer?
                                                                   g7183)))
                                                          (if x-cnd7264
                                                            g7183
                                                            (blame
                                                             g7181
                                                             'integer?)))))
                                                g7263)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7265
                                                        (lambda (k j v)
                                                          (letrec ((g7266
                                                                    (letrec ((x-cnd7267
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7267
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7266))))
                                                g7265)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7268
                                                        (lambda (k j v)
                                                          (letrec ((g7269
                                                                    (letrec ((x-cnd7270
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7270
                                                                        '()
                                                                        (letrec ((x7274
                                                                                  (letrec ((x7275
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7275)))
                                                                                 (x7271
                                                                                  (letrec ((x7273
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7272
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7273
                                                                                     k
                                                                                     j
                                                                                     x7272))))
                                                                          (cons
                                                                           x7274
                                                                           x7271))))))
                                                            g7269))))
                                                g7268)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7276 #t)) g7276)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7277
                                                        (letrec ((x7278
                                                                  (= v 0)))
                                                          (not x7278))))
                                                g7277)))
                                           (nonzero?/c
                                            (lambda (g7184 g7185 g7186)
                                              (letrec ((g7279
                                                        (letrec ((x-cnd7280
                                                                  ((lambda (v)
                                                                     (letrec ((g7281
                                                                               (letrec ((x7282
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7282))))
                                                                       g7281))
                                                                   g7186)))
                                                          (if x-cnd7280
                                                            g7186
                                                            (blame
                                                             g7184
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7279)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7283 v)) g7283)))
                                           (+
                                            ((lambda (j7189 k7190 f7191)
                                               (letrec ((g7285
                                                         (lambda (g7187 g7188)
                                                           (letrec ((g7286
                                                                     (letrec ((x7287
                                                                               (letrec ((x7289
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7187))
                                                                                        (x7288
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7188)))
                                                                                 (f7191
                                                                                  x7289
                                                                                  x7288))))
                                                                       (number?/c
                                                                        j7189
                                                                        k7190
                                                                        x7287))))
                                                             g7286))))
                                                 g7285))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7284 (orig-+ a b)))
                                                 g7284))))
                                           (-
                                            ((lambda (j7194 k7195 f7196)
                                               (letrec ((g7291
                                                         (lambda (g7192 g7193)
                                                           (letrec ((g7292
                                                                     (letrec ((x7293
                                                                               (letrec ((x7295
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7192))
                                                                                        (x7294
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7193)))
                                                                                 (f7196
                                                                                  x7295
                                                                                  x7294))))
                                                                       (number?/c
                                                                        j7194
                                                                        k7195
                                                                        x7293))))
                                                             g7292))))
                                                 g7291))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7290 (orig-- a b)))
                                                 g7290))))
                                           (*
                                            ((lambda (j7199 k7200 f7201)
                                               (letrec ((g7297
                                                         (lambda (g7197 g7198)
                                                           (letrec ((g7298
                                                                     (letrec ((x7299
                                                                               (letrec ((x7301
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7197))
                                                                                        (x7300
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7198)))
                                                                                 (f7201
                                                                                  x7301
                                                                                  x7300))))
                                                                       (number?/c
                                                                        j7199
                                                                        k7200
                                                                        x7299))))
                                                             g7298))))
                                                 g7297))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7296 (orig-* a b)))
                                                 g7296))))
                                           (/
                                            ((lambda (j7204 k7205 f7206)
                                               (letrec ((g7303
                                                         (lambda (g7202 g7203)
                                                           (letrec ((g7304
                                                                     (letrec ((x7305
                                                                               (letrec ((x7307
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7202))
                                                                                        (x7306
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7203)))
                                                                                 (f7206
                                                                                  x7307
                                                                                  x7306))))
                                                                       (number?/c
                                                                        j7204
                                                                        k7205
                                                                        x7305))))
                                                             g7304))))
                                                 g7303))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7302 (orig-/ a b)))
                                                 g7302))))
                                           (car
                                            ((lambda (j7208 k7209 f7210)
                                               (letrec ((g7309
                                                         (lambda (g7207)
                                                           (letrec ((g7310
                                                                     (letrec ((x7311
                                                                               (letrec ((x7312
                                                                                         (pair?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7207)))
                                                                                 (f7210
                                                                                  x7312))))
                                                                       (any/c
                                                                        j7208
                                                                        k7209
                                                                        x7311))))
                                                             g7310))))
                                                 g7309))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7308 (orig-car p)))
                                                 g7308))))
                                           (cdr
                                            ((lambda (j7212 k7213 f7214)
                                               (letrec ((g7314
                                                         (lambda (g7211)
                                                           (letrec ((g7315
                                                                     (letrec ((x7316
                                                                               (letrec ((x7317
                                                                                         (pair?/c
                                                                                          j7212
                                                                                          k7213
                                                                                          g7211)))
                                                                                 (f7214
                                                                                  x7317))))
                                                                       (any/c
                                                                        j7212
                                                                        k7213
                                                                        x7316))))
                                                             g7315))))
                                                 g7314))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7313 (orig-cdr p)))
                                                 g7313))))
                                           (cons
                                            ((lambda (j7217 k7218 f7219)
                                               (letrec ((g7319
                                                         (lambda (g7215 g7216)
                                                           (letrec ((g7320
                                                                     (letrec ((x7321
                                                                               (letrec ((x7323
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7215))
                                                                                        (x7322
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7216)))
                                                                                 (f7219
                                                                                  x7323
                                                                                  x7322))))
                                                                       (pair?/c
                                                                        j7217
                                                                        k7218
                                                                        x7321))))
                                                             g7320))))
                                                 g7319))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7318 (cons a b)))
                                                 g7318))))
                                           (vector-ref
                                            ((lambda (j7221 k7222 f7223)
                                               (letrec ((g7325
                                                         (lambda (g7220)
                                                           (letrec ((g7326
                                                                     (letrec ((x7327
                                                                               (letrec ((x7328
                                                                                         (vector?/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7220)))
                                                                                 (f7223
                                                                                  x7328))))
                                                                       (integer?/c
                                                                        j7221
                                                                        k7222
                                                                        x7327))))
                                                             g7326))))
                                                 g7325))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7324
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7324))))
                                           (vector-set!
                                            ((lambda (j7226 k7227 f7228)
                                               (letrec ((g7330
                                                         (lambda (g7224 g7225)
                                                           (letrec ((g7331
                                                                     (letrec ((x7332
                                                                               (letrec ((x7334
                                                                                         (vector?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7224))
                                                                                        (x7333
                                                                                         (integer?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7225)))
                                                                                 (f7228
                                                                                  x7334
                                                                                  x7333))))
                                                                       (any/c
                                                                        j7226
                                                                        k7227
                                                                        x7332))))
                                                             g7331))))
                                                 g7330))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7329
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7329))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7335 #t)) g7335)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7336
                                                        (letrec ((x7337
                                                                  (letrec ((x7338
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7338))))
                                                          (cdr x7337))))
                                                g7336)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7339
                                                        (letrec ((x7342
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7342)))
                                                       (g7340
                                                        (letrec ((x7343
                                                                  (list? l)))
                                                          (assert x7343)))
                                                       (g7341
                                                        (letrec ((x-cnd7344
                                                                  (null? l)))
                                                          (if x-cnd7344
                                                            '()
                                                            (letrec ((x7347
                                                                      (letrec ((x7348
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7348)))
                                                                     (x7345
                                                                      (letrec ((x7346
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7346))))
                                                              (cons
                                                               x7347
                                                               x7345))))))
                                                g7341)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7349
                                                        (letrec ((x7350
                                                                  (car x)))
                                                          (cdr x7350))))
                                                g7349)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7351
                                                        (letrec ((x7352
                                                                  (letrec ((x7353
                                                                            (letrec ((x7354
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7354))))
                                                                    (cdr
                                                                     x7353))))
                                                          (car x7352))))
                                                g7351)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7355
                                                        (letrec ((x7356
                                                                  (letrec ((x7357
                                                                            (letrec ((x7358
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7358))))
                                                                    (car
                                                                     x7357))))
                                                          (cdr x7356))))
                                                g7355)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7359
                                                        (letrec ((x7362
                                                                  (string?
                                                                   filename)))
                                                          (assert x7362)))
                                                       (g7360
                                                        (letrec ((x7363
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7363)))
                                                       (g7361
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7364
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7365 res))
                                                            g7365))))
                                                g7361)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7366
                                                        (letrec ((x7367
                                                                  (letrec ((x7368
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7368))))
                                                          (car x7367))))
                                                g7366)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7369
                                                        (letrec ((x7370
                                                                  (letrec ((x7371
                                                                            (letrec ((x7372
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7372))))
                                                                    (car
                                                                     x7371))))
                                                          (cdr x7370))))
                                                g7369)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7373
                                                        (letrec ((x7375
                                                                  (list? l)))
                                                          (assert x7375)))
                                                       (g7374
                                                        (letrec ((x-cnd7376
                                                                  (null? l)))
                                                          (if x-cnd7376
                                                            #f
                                                            (letrec ((x-cnd7377
                                                                      (letrec ((x7378
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7378
                                                                         k))))
                                                              (if x-cnd7377
                                                                (car l)
                                                                (letrec ((x7379
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7379))))))))
                                                g7374)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7380
                                                        (letrec ((x7381
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7381))))
                                                g7380)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7382
                                                        (letrec ((x7384
                                                                  (list? l)))
                                                          (assert x7384)))
                                                       (g7383
                                                        (letrec ((x-cnd7385
                                                                  (null? l)))
                                                          (if x-cnd7385
                                                            ""
                                                            (letrec ((x7388
                                                                      (letrec ((x7389
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7389)))
                                                                     (x7386
                                                                      (letrec ((x7387
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7387))))
                                                              (string-append
                                                               x7388
                                                               x7386))))))
                                                g7383)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7390
                                                        (letrec ((x7393
                                                                  (char? c1)))
                                                          (assert x7393)))
                                                       (g7391
                                                        (letrec ((x7394
                                                                  (char? c2)))
                                                          (assert x7394)))
                                                       (g7392
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7395
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7395))))
                                                g7392)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7396
                                                        (letrec ((x7397
                                                                  (letrec ((x7398
                                                                            (letrec ((x7399
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7399))))
                                                                    (cdr
                                                                     x7398))))
                                                          (cdr x7397))))
                                                g7396)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7400
                                                        (letrec ((x7403
                                                                  (list? l)))
                                                          (assert x7403)))
                                                       (g7401
                                                        (letrec ((x7404
                                                                  (numer?)))
                                                          (assert x7404)))
                                                       (g7402
                                                        (letrec ((x-cnd7405
                                                                  (zero? k)))
                                                          (if x-cnd7405
                                                            x
                                                            (letrec ((x7407
                                                                      (cdr x))
                                                                     (x7406
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7407
                                                               x7406))))))
                                                g7402)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7408 '())) g7408)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7409
                                                        (letrec ((x-cnd7410
                                                                  (letrec ((x7411
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7411))))
                                                          (if x-cnd7410
                                                            (letrec ((x7412
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7412))
                                                            #f))))
                                                g7409)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7413
                                                        (letrec ((x7415
                                                                  (number? x)))
                                                          (assert x7415)))
                                                       (g7414
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7416
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7417
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7417)))))
                                                            g7416))))
                                                g7414)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7418
                                                        (letrec ((val7146
                                                                  (letrec ((x7419
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7419
                                                                     9))))
                                                          (letrec ((g7420
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7421
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7421
                                                                                   10))))
                                                                        (letrec ((g7422
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7423
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7423
                                                                                       32)))))
                                                                          g7422)))))
                                                            g7420))))
                                                g7418)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7424
                                                        (letrec ((x7425
                                                                  (letrec ((x7426
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7426))))
                                                          (cdr x7425))))
                                                g7424)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7427
                                                        (letrec ((x7429
                                                                  (number? x)))
                                                          (assert x7429)))
                                                       (g7428 (> x 0)))
                                                g7428)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7430 #f)) g7430)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7431
                                                        (letrec ((x7432
                                                                  (cdr x)))
                                                          (cdr x7432))))
                                                g7431)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7433
                                                        (letrec ((x7435
                                                                  (number? x)))
                                                          (assert x7435)))
                                                       (g7434
                                                        (letrec ((x-cnd7436
                                                                  (< x 0)))
                                                          (if x-cnd7436
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7434)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7437
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7438
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7440
                                                                                          (null?
                                                                                           a))
                                                                                         (x7439
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7440
                                                                                       x7439))))
                                                                        (letrec ((g7441
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7444
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7443
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7442
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7444
                                                                                                     x7443
                                                                                                     x7442))))
                                                                                      (letrec ((g7445
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7453
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7452
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7449
                                                                                                                      (letrec ((x7451
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7450
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7451
                                                                                                                         x7450)))
                                                                                                                     (x7446
                                                                                                                      (letrec ((x7448
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7447
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7448
                                                                                                                         x7447))))
                                                                                                              (and x7453
                                                                                                                   x7452
                                                                                                                   x7449
                                                                                                                   x7446))))
                                                                                                    (letrec ((g7454
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7473
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7472
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7455
                                                                                                                          (letrec ((x7469
                                                                                                                                    (letrec ((x7470
                                                                                                                                              (letrec ((x7471
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7471))))
                                                                                                                                      (x7470)))
                                                                                                                                   (x7456
                                                                                                                                    (letrec ((x7467
                                                                                                                                              (letrec ((x7468
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7468
                                                                                                                                                 n)))
                                                                                                                                             (x7457
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7458
                                                                                                                                                                    (letrec ((x7465
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7459
                                                                                                                                                                              (letrec ((x7462
                                                                                                                                                                                        (letrec ((x7464
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7463
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7464
                                                                                                                                                                                           x7463)))
                                                                                                                                                                                       (x7460
                                                                                                                                                                                        (letrec ((x7461
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7461))))
                                                                                                                                                                                (and x7462
                                                                                                                                                                                     x7460))))
                                                                                                                                                                      (or x7465
                                                                                                                                                                          x7459))))
                                                                                                                                                            g7458))))
                                                                                                                                                (letrec ((g7466
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7466))))
                                                                                                                                      (and x7467
                                                                                                                                           x7457))))
                                                                                                                            (let x7469 x7456))))
                                                                                                                  (and x7473
                                                                                                                       x7472
                                                                                                                       x7455)))))
                                                                                                      g7454)))))
                                                                                        g7445)))))
                                                                          g7441)))))
                                                            g7438))))
                                                g7437)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7474
                                                        (letrec ((x7475
                                                                  (letrec ((x7476
                                                                            (letrec ((x7477
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7477))))
                                                                    (car
                                                                     x7476))))
                                                          (cdr x7475))))
                                                g7474)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7478
                                                        (letrec ((x7479
                                                                  (letrec ((x7480
                                                                            (letrec ((x7481
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7481))))
                                                                    (car
                                                                     x7480))))
                                                          (car x7479))))
                                                g7478)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7482 (eq? x y)))
                                                g7482)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7483
                                                        (letrec ((x7485
                                                                  (number? x)))
                                                          (assert x7485)))
                                                       (g7484
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7486
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7487
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7487)))))
                                                            g7486))))
                                                g7484)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7488
                                                        (letrec ((x7491
                                                                  (string?
                                                                   filename)))
                                                          (assert x7491)))
                                                       (g7489
                                                        (letrec ((x7492
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7492)))
                                                       (g7490
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7493
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7494 res))
                                                            g7494))))
                                                g7490)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7495 (cons x '())))
                                                g7495)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7496
                                                        (letrec ((x7499
                                                                  (char? c1)))
                                                          (assert x7499)))
                                                       (g7497
                                                        (letrec ((x7500
                                                                  (char? c2)))
                                                          (assert x7500)))
                                                       (g7498
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7501
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7501))))
                                                g7498)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7502
                                                        (letrec ((x7503
                                                                  (letrec ((x7504
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7504))))
                                                          (cdr x7503))))
                                                g7502)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7505
                                                        (letrec ((x7506
                                                                  (letrec ((x7507
                                                                            (letrec ((x7508
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7508))))
                                                                    (car
                                                                     x7507))))
                                                          (cdr x7506))))
                                                g7505)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7509
                                                        (letrec ((x7510
                                                                  (letrec ((x7511
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7511))))
                                                          (car x7510))))
                                                g7509)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7512
                                                        (letrec ((x7513
                                                                  (letrec ((x7514
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7514))))
                                                          (car x7513))))
                                                g7512)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7515
                                                        (letrec ((x7518
                                                                  (char? c1)))
                                                          (assert x7518)))
                                                       (g7516
                                                        (letrec ((x7519
                                                                  (char? c2)))
                                                          (assert x7519)))
                                                       (g7517
                                                        (letrec ((x7520
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7520))))
                                                g7517)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7521
                                                        (letrec ((x7522
                                                                  (letrec ((x7523
                                                                            (letrec ((x7524
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7524))))
                                                                    (car
                                                                     x7523))))
                                                          (car x7522))))
                                                g7521)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7525
                                                        (letrec ((x7527
                                                                  (number? x)))
                                                          (assert x7527)))
                                                       (g7526 (< x 0)))
                                                g7526)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7528 (memq e l)))
                                                g7528)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7529
                                                        (letrec ((x7530
                                                                  (letrec ((x7531
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7531))))
                                                          (car x7530))))
                                                g7529)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7532 '())) g7532)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7533
                                                        (letrec ((x7535
                                                                  (list? l)))
                                                          (assert x7535)))
                                                       (g7534
                                                        (letrec ((x-cnd7536
                                                                  (null? l)))
                                                          (if x-cnd7536
                                                            '()
                                                            (letrec ((x7539
                                                                      (letrec ((x7540
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7540)))
                                                                     (x7537
                                                                      (letrec ((x7538
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7538))))
                                                              (append
                                                               x7539
                                                               x7537))))))
                                                g7534)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7541
                                                        (letrec ((x7542
                                                                  (letrec ((x7543
                                                                            (letrec ((x7544
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7544))))
                                                                    (car
                                                                     x7543))))
                                                          (car x7542))))
                                                g7541)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7545
                                                        (letrec ((x7546
                                                                  (letrec ((x7547
                                                                            (letrec ((x7548
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7548))))
                                                                    (cdr
                                                                     x7547))))
                                                          (cdr x7546))))
                                                g7545)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7549
                                                        (letrec ((x7551
                                                                  (number? x)))
                                                          (assert x7551)))
                                                       (g7550
                                                        (letrec ((x7552
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7552))))
                                                g7550)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7553
                                                        (letrec ((x7554
                                                                  (letrec ((x7555
                                                                            (letrec ((x7556
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7556))))
                                                                    (car
                                                                     x7555))))
                                                          (car x7554))))
                                                g7553)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7557
                                                        (letrec ((x7560
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7560)))
                                                       (g7558
                                                        (letrec ((x7561
                                                                  (list?
                                                                   args)))
                                                          (assert x7561)))
                                                       (g7559
                                                        (if cnd
                                                          (letrec ((g7562
                                                                    (proc)))
                                                            g7562)
                                                          (if cnd
                                                            (letrec ((g7563
                                                                      (letrec ((x7564
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7564))))
                                                              g7563)
                                                            (if cnd
                                                              (letrec ((g7565
                                                                        (letrec ((x7567
                                                                                  (car
                                                                                   args))
                                                                                 (x7566
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7567
                                                                           x7566))))
                                                                g7565)
                                                              (if cnd
                                                                (letrec ((g7568
                                                                          (letrec ((x7571
                                                                                    (car
                                                                                     args))
                                                                                   (x7570
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7569
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7571
                                                                             x7570
                                                                             x7569))))
                                                                  g7568)
                                                                (if cnd
                                                                  (letrec ((g7572
                                                                            (letrec ((x7576
                                                                                      (car
                                                                                       args))
                                                                                     (x7575
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7574
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7573
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7576
                                                                               x7575
                                                                               x7574
                                                                               x7573))))
                                                                    g7572)
                                                                  (if cnd
                                                                    (letrec ((g7577
                                                                              (letrec ((x7583
                                                                                        (car
                                                                                         args))
                                                                                       (x7582
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7581
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7580
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7578
                                                                                        (letrec ((x7579
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7579))))
                                                                                (proc
                                                                                 x7583
                                                                                 x7582
                                                                                 x7581
                                                                                 x7580
                                                                                 x7578))))
                                                                      g7577)
                                                                    (if cnd
                                                                      (letrec ((g7584
                                                                                (letrec ((x7592
                                                                                          (car
                                                                                           args))
                                                                                         (x7591
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7590
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7589
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7587
                                                                                          (letrec ((x7588
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7588)))
                                                                                         (x7585
                                                                                          (letrec ((x7586
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7586))))
                                                                                  (proc
                                                                                   x7592
                                                                                   x7591
                                                                                   x7590
                                                                                   x7589
                                                                                   x7587
                                                                                   x7585))))
                                                                        g7584)
                                                                      (if cnd
                                                                        (letrec ((g7593
                                                                                  (letrec ((x7603
                                                                                            (car
                                                                                             args))
                                                                                           (x7602
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7601
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7600
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7598
                                                                                            (letrec ((x7599
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7599)))
                                                                                           (x7596
                                                                                            (letrec ((x7597
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7597)))
                                                                                           (x7594
                                                                                            (letrec ((x7595
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7595))))
                                                                                    (proc
                                                                                     x7603
                                                                                     x7602
                                                                                     x7601
                                                                                     x7600
                                                                                     x7598
                                                                                     x7596
                                                                                     x7594))))
                                                                          g7593)
                                                                        (letrec ((g7604
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7604)))))))))))
                                                g7559)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7605
                                                        (letrec ((x7607
                                                                  (list? l)))
                                                          (assert x7607)))
                                                       (g7606
                                                        (letrec ((x-cnd7608
                                                                  (null? l)))
                                                          (if x-cnd7608
                                                            #f
                                                            (letrec ((x-cnd7609
                                                                      (letrec ((x7610
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7610
                                                                         e))))
                                                              (if x-cnd7609
                                                                l
                                                                (letrec ((x7611
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7611))))))))
                                                g7606)))
                                           (cddddr
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
                                                          (cdr x7613))))
                                                g7612)))
                                           (cadddr
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
                                                          (car x7617))))
                                                g7616)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7620 (random 42)))
                                                g7620)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7621
                                                        (letrec ((x7623
                                                                  (number? x)))
                                                          (assert x7623)))
                                                       (g7622 (= x 0)))
                                                g7622)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7624
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7625
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7625))))
                                                g7624)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7626
                                                        (letrec ((x7627
                                                                  (cdr x)))
                                                          (car x7627))))
                                                g7626)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7628
                                                        (letrec ((val7156
                                                                  (letrec ((x7631
                                                                            (pair?
                                                                             l))
                                                                           (x7629
                                                                            (letrec ((x7630
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7630))))
                                                                    (and x7631
                                                                         x7629))))
                                                          (letrec ((g7632
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7632))))
                                                g7628)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7633
                                                        (letrec ((x7634
                                                                  (letrec ((x7635
                                                                            (letrec ((x7636
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7636))))
                                                                    (cdr
                                                                     x7635))))
                                                          (cdr x7634))))
                                                g7633)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7637
                                                        (letrec ((x-cnd7638
                                                                  (letrec ((x7639
                                                                            #\0))
                                                                    (char<=?
                                                                     x7639
                                                                     c))))
                                                          (if x-cnd7638
                                                            (letrec ((x7640
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7640))
                                                            #f))))
                                                g7637)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7641
                                                        (letrec ((x7643
                                                                  (list? l)))
                                                          (assert x7643)))
                                                       (g7642
                                                        (letrec ((x-cnd7644
                                                                  (null? l)))
                                                          (if x-cnd7644
                                                            #f
                                                            (letrec ((x-cnd7645
                                                                      (letrec ((x7646
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7646
                                                                         k))))
                                                              (if x-cnd7645
                                                                (car l)
                                                                (letrec ((x7647
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7647))))))))
                                                g7642)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7648 (if x #f #t)))
                                                g7648)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7649 (append l1 l2)))
                                                g7649)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7650
                                                        (letrec ((x7652
                                                                  (list? l)))
                                                          (assert x7652)))
                                                       (g7651
                                                        (letrec ((x-cnd7653
                                                                  (null? l)))
                                                          (if x-cnd7653
                                                            #f
                                                            (letrec ((x-cnd7654
                                                                      (letrec ((x7655
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7655
                                                                         e))))
                                                              (if x-cnd7654
                                                                l
                                                                (letrec ((x7656
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7656))))))))
                                                g7651)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7657
                                                        (letrec ((x7658
                                                                  (letrec ((x7659
                                                                            (letrec ((x7660
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7660))))
                                                                    (cdr
                                                                     x7659))))
                                                          (car x7658))))
                                                g7657)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7661
                                                        (letrec ((x7663
                                                                  (list? l)))
                                                          (assert x7663)))
                                                       (g7662
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7664
                                                                              (letrec ((x-cnd7665
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7665
                                                                                  0
                                                                                  (letrec ((x7666
                                                                                            (letrec ((x7667
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7667))))
                                                                                    (+
                                                                                     1
                                                                                     x7666))))))
                                                                      g7664))))
                                                          (letrec ((g7668
                                                                    (rec l)))
                                                            g7668))))
                                                g7662)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7669
                                                        (letrec ((x7672
                                                                  (char? c1)))
                                                          (assert x7672)))
                                                       (g7670
                                                        (letrec ((x7673
                                                                  (char? c2)))
                                                          (assert x7673)))
                                                       (g7671
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7674
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7674))))
                                                g7671)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7675
                                                        (letrec ((x7676
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7676))))
                                                g7675)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7677
                                                        (letrec ((x7678
                                                                  (letrec ((x7679
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7679))))
                                                          (cdr x7678))))
                                                g7677)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7680
                                                        (letrec ((x7682
                                                                  (list? l)))
                                                          (assert x7682)))
                                                       (g7681
                                                        (letrec ((x-cnd7683
                                                                  (null? l)))
                                                          (if x-cnd7683
                                                            #f
                                                            (letrec ((x-cnd7684
                                                                      (letrec ((x7685
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7685
                                                                         k))))
                                                              (if x-cnd7684
                                                                (car l)
                                                                (letrec ((x7686
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7686))))))))
                                                g7681)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7687
                                                        (letrec ((x7688
                                                                  (car x)))
                                                          (car x7688))))
                                                g7687)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7689
                                                        (letrec ((x7692
                                                                  (char? c1)))
                                                          (assert x7692)))
                                                       (g7690
                                                        (letrec ((x7693
                                                                  (char? c2)))
                                                          (assert x7693)))
                                                       (g7691
                                                        (letrec ((x7694
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7694))))
                                                g7691)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7695
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7696
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7696))))
                                                g7695)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7697
                                                        (letrec ((x7700
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7700)))
                                                       (g7698
                                                        (letrec ((x7701
                                                                  (list? l)))
                                                          (assert x7701)))
                                                       (g7699
                                                        (letrec ((x-cnd7702
                                                                  (null? l)))
                                                          (if x-cnd7702
                                                            #t
                                                            (letrec ((x-cnd7703
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7703
                                                                (letrec ((g7704
                                                                          (letrec ((x7706
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7706)))
                                                                         (g7705
                                                                          (letrec ((x7707
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7707))))
                                                                  g7705)
                                                                '()))))))
                                                g7699)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7708
                                                        (letrec ((x7710
                                                                  (number? x)))
                                                          (assert x7710)))
                                                       (g7709
                                                        (letrec ((x-cnd7711
                                                                  (< x 0)))
                                                          (if x-cnd7711
                                                            (- 0 x)
                                                            x))))
                                                g7709)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7712
                                                        (letrec ((x7715
                                                                  (char? c1)))
                                                          (assert x7715)))
                                                       (g7713
                                                        (letrec ((x7716
                                                                  (char? c2)))
                                                          (assert x7716)))
                                                       (g7714
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7717
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7717))))
                                                g7714)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7718
                                                        (letrec ((x7719
                                                                  (letrec ((x7720
                                                                            (letrec ((x7721
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7721))))
                                                                    (cdr
                                                                     x7720))))
                                                          (car x7719))))
                                                g7718)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7722 #f)) g7722)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7723
                                                        (letrec ((x7725
                                                                  (letrec ((x7726
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7726)))
                                                                 (x7724
                                                                  (gcd m n)))
                                                          (/ x7725 x7724))))
                                                g7723)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7727
                                                        (letrec ((x7729
                                                                  (number? x)))
                                                          (assert x7729)))
                                                       (g7728
                                                        (letrec ((x7730
                                                                  (<= x y)))
                                                          (not x7730))))
                                                g7728)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7731
                                                        (letrec ((x7735
                                                                  (list? l)))
                                                          (assert x7735)))
                                                       (g7732
                                                        (letrec ((x7736
                                                                  (number?
                                                                   index)))
                                                          (assert x7736)))
                                                       (g7733
                                                        (letrec ((x7737
                                                                  (letrec ((x7738
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7738))))
                                                          (assert x7737)))
                                                       (g7734
                                                        (letrec ((x-cnd7739
                                                                  (= index 0)))
                                                          (if x-cnd7739
                                                            (car l)
                                                            (letrec ((x7741
                                                                      (cdr l))
                                                                     (x7740
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7741
                                                               x7740))))))
                                                g7734)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7742
                                                        (letrec ((x-cnd7743
                                                                  (= b 0)))
                                                          (if x-cnd7743
                                                            a
                                                            (letrec ((x7744
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7744))))))
                                                g7742)))
                                           (len
                                            (lambda (xs)
                                              (letrec ((g7745 (len-acc xs 0)))
                                                g7745)))
                                           (len-acc
                                            (lambda (xs acc)
                                              (letrec ((g7746
                                                        (letrec ((x-cnd7747
                                                                  (empty? xs)))
                                                          (if x-cnd7747
                                                            acc
                                                            (letrec ((x7749
                                                                      (cdr xs))
                                                                     (x7748
                                                                      (+
                                                                       1
                                                                       acc)))
                                                              (len-acc
                                                               x7749
                                                               x7748))))))
                                                g7746))))
                                    (letrec ((g7750
                                              (letrec ((x7752
                                                        ((lambda (j7230
                                                                  k7231
                                                                  f7232)
                                                           (letrec ((g7753
                                                                     (lambda (g7229)
                                                                       (letrec ((g7754
                                                                                 (letrec ((x7758
                                                                                           (letrec ((x7759
                                                                                                     (>=/c
                                                                                                      0)))
                                                                                             (and/c
                                                                                              integer?/c
                                                                                              x7759)))
                                                                                          (x7755
                                                                                           (letrec ((x7756
                                                                                                     (letrec ((x7757
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7757
                                                                                                        j7230
                                                                                                        k7231
                                                                                                        g7229))))
                                                                                             (f7232
                                                                                              x7756))))
                                                                                   (x7758
                                                                                    j7230
                                                                                    k7231
                                                                                    x7755))))
                                                                         g7754))))
                                                             g7753))
                                                         'module
                                                         'importer
                                                         len))
                                                       (x7751 (input)))
                                                (x7752 x7751))))
                                      g7750))))
                          g7246))))
              g7244)))
    g7243))
