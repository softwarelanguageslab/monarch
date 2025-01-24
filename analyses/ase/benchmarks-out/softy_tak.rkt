(letrec ((any? (lambda (v) (letrec ((g7235 #t)) g7235)))
         (meta (lambda (v) (letrec ((g7236 v)) g7236)))
         (member
          (lambda (v lst)
            (letrec ((g7237
                      (letrec ((g7238
                                (letrec ((x-e7239 lst))
                                  (match
                                   x-e7239
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7240 (eq? v v1)))
                                       (if x-cnd7240 #t (member v vs)))))))))
                        g7238)))
              g7237)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7241 (lambda (v) (letrec ((g7242 v)) g7242)))) g7241)))
         (nonzero?
          (lambda (v)
            (letrec ((g7243 (letrec ((x7244 (= v 0))) (not x7244)))) g7243))))
  (letrec ((g7245
            (letrec ((g7246
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7247 '())
                                 (g7248
                                  (letrec ((real/c
                                            (lambda (g7160 g7161 g7162)
                                              (letrec ((g7249
                                                        (letrec ((x-cnd7250
                                                                  (real?
                                                                   g7162)))
                                                          (if x-cnd7250
                                                            g7162
                                                            (blame
                                                             g7160
                                                             'real?)))))
                                                g7249)))
                                           (boolean?/c
                                            (lambda (g7163 g7164 g7165)
                                              (letrec ((g7251
                                                        (letrec ((x-cnd7252
                                                                  (boolean?
                                                                   g7165)))
                                                          (if x-cnd7252
                                                            g7165
                                                            (blame
                                                             g7163
                                                             'boolean?)))))
                                                g7251)))
                                           (number?/c
                                            (lambda (g7166 g7167 g7168)
                                              (letrec ((g7253
                                                        (letrec ((x-cnd7254
                                                                  (number?
                                                                   g7168)))
                                                          (if x-cnd7254
                                                            g7168
                                                            (blame
                                                             g7166
                                                             'number?)))))
                                                g7253)))
                                           (any/c
                                            (lambda (g7169 g7170 g7171)
                                              (letrec ((g7255
                                                        (letrec ((x-cnd7256
                                                                  ((lambda (v)
                                                                     (letrec ((g7257
                                                                               #t))
                                                                       g7257))
                                                                   g7171)))
                                                          (if x-cnd7256
                                                            g7171
                                                            (blame
                                                             g7169
                                                             '(lambda (v)
                                                                #t))))))
                                                g7255)))
                                           (any?/c
                                            (lambda (g7172 g7173 g7174)
                                              (letrec ((g7258
                                                        (letrec ((x-cnd7259
                                                                  ((lambda (v)
                                                                     (letrec ((g7260
                                                                               #t))
                                                                       g7260))
                                                                   g7174)))
                                                          (if x-cnd7259
                                                            g7174
                                                            (blame
                                                             g7172
                                                             '(lambda (v)
                                                                #t))))))
                                                g7258)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7175 g7176 g7177)
                                              (letrec ((g7261
                                                        (letrec ((x-cnd7262
                                                                  (pair?
                                                                   g7177)))
                                                          (if x-cnd7262
                                                            g7177
                                                            (blame
                                                             g7175
                                                             'pair?)))))
                                                g7261)))
                                           (pair?/c
                                            (lambda (g7178 g7179 g7180)
                                              (letrec ((g7263
                                                        (letrec ((x-cnd7264
                                                                  (pair?
                                                                   g7180)))
                                                          (if x-cnd7264
                                                            g7180
                                                            (blame
                                                             g7178
                                                             'pair?)))))
                                                g7263)))
                                           (integer?/c
                                            (lambda (g7181 g7182 g7183)
                                              (letrec ((g7265
                                                        (letrec ((x-cnd7266
                                                                  (integer?
                                                                   g7183)))
                                                          (if x-cnd7266
                                                            g7183
                                                            (blame
                                                             g7181
                                                             'integer?)))))
                                                g7265)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7267
                                                        (lambda (k j v)
                                                          (letrec ((g7268
                                                                    (letrec ((x-cnd7269
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7269
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7268))))
                                                g7267)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7270
                                                        (lambda (k j v)
                                                          (letrec ((g7271
                                                                    (letrec ((x-cnd7272
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7272
                                                                        '()
                                                                        (letrec ((x7276
                                                                                  (letrec ((x7277
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7277)))
                                                                                 (x7273
                                                                                  (letrec ((x7275
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7274
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7275
                                                                                     k
                                                                                     j
                                                                                     x7274))))
                                                                          (cons
                                                                           x7276
                                                                           x7273))))))
                                                            g7271))))
                                                g7270)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7278 #t)) g7278)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7279
                                                        (letrec ((x7280
                                                                  (= v 0)))
                                                          (not x7280))))
                                                g7279)))
                                           (nonzero?/c
                                            (lambda (g7184 g7185 g7186)
                                              (letrec ((g7281
                                                        (letrec ((x-cnd7282
                                                                  ((lambda (v)
                                                                     (letrec ((g7283
                                                                               (letrec ((x7284
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7284))))
                                                                       g7283))
                                                                   g7186)))
                                                          (if x-cnd7282
                                                            g7186
                                                            (blame
                                                             g7184
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7281)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7285 v)) g7285)))
                                           (+
                                            ((lambda (j7189 k7190 f7191)
                                               (letrec ((g7287
                                                         (lambda (g7187 g7188)
                                                           (letrec ((g7288
                                                                     (letrec ((x7289
                                                                               (letrec ((x7291
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7187))
                                                                                        (x7290
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7188)))
                                                                                 (f7191
                                                                                  x7291
                                                                                  x7290))))
                                                                       (number?/c
                                                                        j7189
                                                                        k7190
                                                                        x7289))))
                                                             g7288))))
                                                 g7287))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7286 (orig-+ a b)))
                                                 g7286))))
                                           (-
                                            ((lambda (j7194 k7195 f7196)
                                               (letrec ((g7293
                                                         (lambda (g7192 g7193)
                                                           (letrec ((g7294
                                                                     (letrec ((x7295
                                                                               (letrec ((x7297
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7192))
                                                                                        (x7296
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7193)))
                                                                                 (f7196
                                                                                  x7297
                                                                                  x7296))))
                                                                       (number?/c
                                                                        j7194
                                                                        k7195
                                                                        x7295))))
                                                             g7294))))
                                                 g7293))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7292 (orig-- a b)))
                                                 g7292))))
                                           (*
                                            ((lambda (j7199 k7200 f7201)
                                               (letrec ((g7299
                                                         (lambda (g7197 g7198)
                                                           (letrec ((g7300
                                                                     (letrec ((x7301
                                                                               (letrec ((x7303
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7197))
                                                                                        (x7302
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7198)))
                                                                                 (f7201
                                                                                  x7303
                                                                                  x7302))))
                                                                       (number?/c
                                                                        j7199
                                                                        k7200
                                                                        x7301))))
                                                             g7300))))
                                                 g7299))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7298 (orig-* a b)))
                                                 g7298))))
                                           (/
                                            ((lambda (j7204 k7205 f7206)
                                               (letrec ((g7305
                                                         (lambda (g7202 g7203)
                                                           (letrec ((g7306
                                                                     (letrec ((x7307
                                                                               (letrec ((x7309
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7202))
                                                                                        (x7308
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7203)))
                                                                                 (f7206
                                                                                  x7309
                                                                                  x7308))))
                                                                       (number?/c
                                                                        j7204
                                                                        k7205
                                                                        x7307))))
                                                             g7306))))
                                                 g7305))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7304 (orig-/ a b)))
                                                 g7304))))
                                           (car
                                            ((lambda (j7208 k7209 f7210)
                                               (letrec ((g7311
                                                         (lambda (g7207)
                                                           (letrec ((g7312
                                                                     (letrec ((x7313
                                                                               (letrec ((x7314
                                                                                         (pair?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7207)))
                                                                                 (f7210
                                                                                  x7314))))
                                                                       (any/c
                                                                        j7208
                                                                        k7209
                                                                        x7313))))
                                                             g7312))))
                                                 g7311))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7310 (orig-car p)))
                                                 g7310))))
                                           (cdr
                                            ((lambda (j7212 k7213 f7214)
                                               (letrec ((g7316
                                                         (lambda (g7211)
                                                           (letrec ((g7317
                                                                     (letrec ((x7318
                                                                               (letrec ((x7319
                                                                                         (pair?/c
                                                                                          j7212
                                                                                          k7213
                                                                                          g7211)))
                                                                                 (f7214
                                                                                  x7319))))
                                                                       (any/c
                                                                        j7212
                                                                        k7213
                                                                        x7318))))
                                                             g7317))))
                                                 g7316))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7315 (orig-cdr p)))
                                                 g7315))))
                                           (cons
                                            ((lambda (j7217 k7218 f7219)
                                               (letrec ((g7321
                                                         (lambda (g7215 g7216)
                                                           (letrec ((g7322
                                                                     (letrec ((x7323
                                                                               (letrec ((x7325
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7215))
                                                                                        (x7324
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7216)))
                                                                                 (f7219
                                                                                  x7325
                                                                                  x7324))))
                                                                       (pair?/c
                                                                        j7217
                                                                        k7218
                                                                        x7323))))
                                                             g7322))))
                                                 g7321))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7320 (cons a b)))
                                                 g7320))))
                                           (vector-ref
                                            ((lambda (j7221 k7222 f7223)
                                               (letrec ((g7327
                                                         (lambda (g7220)
                                                           (letrec ((g7328
                                                                     (letrec ((x7329
                                                                               (letrec ((x7330
                                                                                         (vector?/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7220)))
                                                                                 (f7223
                                                                                  x7330))))
                                                                       (integer?/c
                                                                        j7221
                                                                        k7222
                                                                        x7329))))
                                                             g7328))))
                                                 g7327))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7326
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7326))))
                                           (vector-set!
                                            ((lambda (j7226 k7227 f7228)
                                               (letrec ((g7332
                                                         (lambda (g7224 g7225)
                                                           (letrec ((g7333
                                                                     (letrec ((x7334
                                                                               (letrec ((x7336
                                                                                         (vector?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7224))
                                                                                        (x7335
                                                                                         (integer?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7225)))
                                                                                 (f7228
                                                                                  x7336
                                                                                  x7335))))
                                                                       (any/c
                                                                        j7226
                                                                        k7227
                                                                        x7334))))
                                                             g7333))))
                                                 g7332))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7331
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7331))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7337 #t)) g7337)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7338
                                                        (letrec ((x7339
                                                                  (letrec ((x7340
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7340))))
                                                          (cdr x7339))))
                                                g7338)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7341
                                                        (letrec ((x7344
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7344)))
                                                       (g7342
                                                        (letrec ((x7345
                                                                  (list? l)))
                                                          (assert x7345)))
                                                       (g7343
                                                        (letrec ((x-cnd7346
                                                                  (null? l)))
                                                          (if x-cnd7346
                                                            '()
                                                            (letrec ((x7349
                                                                      (letrec ((x7350
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7350)))
                                                                     (x7347
                                                                      (letrec ((x7348
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7348))))
                                                              (cons
                                                               x7349
                                                               x7347))))))
                                                g7343)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7351
                                                        (letrec ((x7352
                                                                  (car x)))
                                                          (cdr x7352))))
                                                g7351)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7353
                                                        (letrec ((x7354
                                                                  (letrec ((x7355
                                                                            (letrec ((x7356
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7356))))
                                                                    (cdr
                                                                     x7355))))
                                                          (car x7354))))
                                                g7353)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7357
                                                        (letrec ((x7358
                                                                  (letrec ((x7359
                                                                            (letrec ((x7360
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7360))))
                                                                    (car
                                                                     x7359))))
                                                          (cdr x7358))))
                                                g7357)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7361
                                                        (letrec ((x7364
                                                                  (string?
                                                                   filename)))
                                                          (assert x7364)))
                                                       (g7362
                                                        (letrec ((x7365
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7365)))
                                                       (g7363
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7366
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7367 res))
                                                            g7367))))
                                                g7363)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7368
                                                        (letrec ((x7369
                                                                  (letrec ((x7370
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7370))))
                                                          (car x7369))))
                                                g7368)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7371
                                                        (letrec ((x7372
                                                                  (letrec ((x7373
                                                                            (letrec ((x7374
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7374))))
                                                                    (car
                                                                     x7373))))
                                                          (cdr x7372))))
                                                g7371)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7375
                                                        (letrec ((x7377
                                                                  (list? l)))
                                                          (assert x7377)))
                                                       (g7376
                                                        (letrec ((x-cnd7378
                                                                  (null? l)))
                                                          (if x-cnd7378
                                                            #f
                                                            (letrec ((x-cnd7379
                                                                      (letrec ((x7380
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7380
                                                                         k))))
                                                              (if x-cnd7379
                                                                (car l)
                                                                (letrec ((x7381
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7381))))))))
                                                g7376)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7382
                                                        (letrec ((x7383
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7383))))
                                                g7382)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7384
                                                        (letrec ((x7386
                                                                  (list? l)))
                                                          (assert x7386)))
                                                       (g7385
                                                        (letrec ((x-cnd7387
                                                                  (null? l)))
                                                          (if x-cnd7387
                                                            ""
                                                            (letrec ((x7390
                                                                      (letrec ((x7391
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7391)))
                                                                     (x7388
                                                                      (letrec ((x7389
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7389))))
                                                              (string-append
                                                               x7390
                                                               x7388))))))
                                                g7385)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7392
                                                        (letrec ((x7395
                                                                  (char? c1)))
                                                          (assert x7395)))
                                                       (g7393
                                                        (letrec ((x7396
                                                                  (char? c2)))
                                                          (assert x7396)))
                                                       (g7394
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7397
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7397))))
                                                g7394)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7398
                                                        (letrec ((x7399
                                                                  (letrec ((x7400
                                                                            (letrec ((x7401
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7401))))
                                                                    (cdr
                                                                     x7400))))
                                                          (cdr x7399))))
                                                g7398)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7402
                                                        (letrec ((x7405
                                                                  (list? l)))
                                                          (assert x7405)))
                                                       (g7403
                                                        (letrec ((x7406
                                                                  (numer?)))
                                                          (assert x7406)))
                                                       (g7404
                                                        (letrec ((x-cnd7407
                                                                  (zero? k)))
                                                          (if x-cnd7407
                                                            x
                                                            (letrec ((x7409
                                                                      (cdr x))
                                                                     (x7408
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7409
                                                               x7408))))))
                                                g7404)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7410 '())) g7410)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7411
                                                        (letrec ((x-cnd7412
                                                                  (letrec ((x7413
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7413))))
                                                          (if x-cnd7412
                                                            (letrec ((x7414
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7414))
                                                            #f))))
                                                g7411)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7415
                                                        (letrec ((x7417
                                                                  (number? x)))
                                                          (assert x7417)))
                                                       (g7416
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7418
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7419
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7419)))))
                                                            g7418))))
                                                g7416)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7420
                                                        (letrec ((val7146
                                                                  (letrec ((x7421
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7421
                                                                     9))))
                                                          (letrec ((g7422
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7423
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7423
                                                                                   10))))
                                                                        (letrec ((g7424
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7425
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7425
                                                                                       32)))))
                                                                          g7424)))))
                                                            g7422))))
                                                g7420)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7426
                                                        (letrec ((x7427
                                                                  (letrec ((x7428
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7428))))
                                                          (cdr x7427))))
                                                g7426)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7429
                                                        (letrec ((x7431
                                                                  (number? x)))
                                                          (assert x7431)))
                                                       (g7430 (> x 0)))
                                                g7430)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7432 #f)) g7432)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7433
                                                        (letrec ((x7434
                                                                  (cdr x)))
                                                          (cdr x7434))))
                                                g7433)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7435
                                                        (letrec ((x7437
                                                                  (number? x)))
                                                          (assert x7437)))
                                                       (g7436
                                                        (letrec ((x-cnd7438
                                                                  (< x 0)))
                                                          (if x-cnd7438
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7436)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7439
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7440
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7442
                                                                                          (null?
                                                                                           a))
                                                                                         (x7441
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7442
                                                                                       x7441))))
                                                                        (letrec ((g7443
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7446
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7445
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7444
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7446
                                                                                                     x7445
                                                                                                     x7444))))
                                                                                      (letrec ((g7447
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7455
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7454
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7451
                                                                                                                      (letrec ((x7453
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7452
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7453
                                                                                                                         x7452)))
                                                                                                                     (x7448
                                                                                                                      (letrec ((x7450
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7449
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7450
                                                                                                                         x7449))))
                                                                                                              (and x7455
                                                                                                                   x7454
                                                                                                                   x7451
                                                                                                                   x7448))))
                                                                                                    (letrec ((g7456
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7475
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7474
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7457
                                                                                                                          (letrec ((x7471
                                                                                                                                    (letrec ((x7472
                                                                                                                                              (letrec ((x7473
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7473))))
                                                                                                                                      (x7472)))
                                                                                                                                   (x7458
                                                                                                                                    (letrec ((x7469
                                                                                                                                              (letrec ((x7470
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7470
                                                                                                                                                 n)))
                                                                                                                                             (x7459
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7460
                                                                                                                                                                    (letrec ((x7467
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7461
                                                                                                                                                                              (letrec ((x7464
                                                                                                                                                                                        (letrec ((x7466
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7465
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7466
                                                                                                                                                                                           x7465)))
                                                                                                                                                                                       (x7462
                                                                                                                                                                                        (letrec ((x7463
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7463))))
                                                                                                                                                                                (and x7464
                                                                                                                                                                                     x7462))))
                                                                                                                                                                      (or x7467
                                                                                                                                                                          x7461))))
                                                                                                                                                            g7460))))
                                                                                                                                                (letrec ((g7468
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7468))))
                                                                                                                                      (and x7469
                                                                                                                                           x7459))))
                                                                                                                            (let x7471 x7458))))
                                                                                                                  (and x7475
                                                                                                                       x7474
                                                                                                                       x7457)))))
                                                                                                      g7456)))))
                                                                                        g7447)))))
                                                                          g7443)))))
                                                            g7440))))
                                                g7439)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7476
                                                        (letrec ((x7477
                                                                  (letrec ((x7478
                                                                            (letrec ((x7479
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7479))))
                                                                    (car
                                                                     x7478))))
                                                          (cdr x7477))))
                                                g7476)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7480
                                                        (letrec ((x7481
                                                                  (letrec ((x7482
                                                                            (letrec ((x7483
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7483))))
                                                                    (car
                                                                     x7482))))
                                                          (car x7481))))
                                                g7480)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7484 (eq? x y)))
                                                g7484)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7485
                                                        (letrec ((x7487
                                                                  (number? x)))
                                                          (assert x7487)))
                                                       (g7486
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7488
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7489
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7489)))))
                                                            g7488))))
                                                g7486)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7490
                                                        (letrec ((x7493
                                                                  (string?
                                                                   filename)))
                                                          (assert x7493)))
                                                       (g7491
                                                        (letrec ((x7494
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7494)))
                                                       (g7492
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7495
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7496 res))
                                                            g7496))))
                                                g7492)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7497 (cons x '())))
                                                g7497)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7498
                                                        (letrec ((x7501
                                                                  (char? c1)))
                                                          (assert x7501)))
                                                       (g7499
                                                        (letrec ((x7502
                                                                  (char? c2)))
                                                          (assert x7502)))
                                                       (g7500
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7503
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7503))))
                                                g7500)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7504
                                                        (letrec ((x7505
                                                                  (letrec ((x7506
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7506))))
                                                          (cdr x7505))))
                                                g7504)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7507
                                                        (letrec ((x7508
                                                                  (letrec ((x7509
                                                                            (letrec ((x7510
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7510))))
                                                                    (car
                                                                     x7509))))
                                                          (cdr x7508))))
                                                g7507)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7511
                                                        (letrec ((x7512
                                                                  (letrec ((x7513
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7513))))
                                                          (car x7512))))
                                                g7511)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7514
                                                        (letrec ((x7515
                                                                  (letrec ((x7516
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7516))))
                                                          (car x7515))))
                                                g7514)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7517
                                                        (letrec ((x7520
                                                                  (char? c1)))
                                                          (assert x7520)))
                                                       (g7518
                                                        (letrec ((x7521
                                                                  (char? c2)))
                                                          (assert x7521)))
                                                       (g7519
                                                        (letrec ((x7522
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7522))))
                                                g7519)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7523
                                                        (letrec ((x7524
                                                                  (letrec ((x7525
                                                                            (letrec ((x7526
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7526))))
                                                                    (car
                                                                     x7525))))
                                                          (car x7524))))
                                                g7523)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7527
                                                        (letrec ((x7529
                                                                  (number? x)))
                                                          (assert x7529)))
                                                       (g7528 (< x 0)))
                                                g7528)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7530 (memq e l)))
                                                g7530)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7531
                                                        (letrec ((x7532
                                                                  (letrec ((x7533
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7533))))
                                                          (car x7532))))
                                                g7531)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7534 '())) g7534)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7535
                                                        (letrec ((x7537
                                                                  (list? l)))
                                                          (assert x7537)))
                                                       (g7536
                                                        (letrec ((x-cnd7538
                                                                  (null? l)))
                                                          (if x-cnd7538
                                                            '()
                                                            (letrec ((x7541
                                                                      (letrec ((x7542
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7542)))
                                                                     (x7539
                                                                      (letrec ((x7540
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7540))))
                                                              (append
                                                               x7541
                                                               x7539))))))
                                                g7536)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7543
                                                        (letrec ((x7544
                                                                  (letrec ((x7545
                                                                            (letrec ((x7546
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7546))))
                                                                    (car
                                                                     x7545))))
                                                          (car x7544))))
                                                g7543)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7547
                                                        (letrec ((x7548
                                                                  (letrec ((x7549
                                                                            (letrec ((x7550
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7550))))
                                                                    (cdr
                                                                     x7549))))
                                                          (cdr x7548))))
                                                g7547)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7551
                                                        (letrec ((x7553
                                                                  (number? x)))
                                                          (assert x7553)))
                                                       (g7552
                                                        (letrec ((x7554
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7554))))
                                                g7552)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7555
                                                        (letrec ((x7556
                                                                  (letrec ((x7557
                                                                            (letrec ((x7558
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7558))))
                                                                    (car
                                                                     x7557))))
                                                          (car x7556))))
                                                g7555)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7559
                                                        (letrec ((x7562
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7562)))
                                                       (g7560
                                                        (letrec ((x7563
                                                                  (list?
                                                                   args)))
                                                          (assert x7563)))
                                                       (g7561
                                                        (if cnd
                                                          (letrec ((g7564
                                                                    (proc)))
                                                            g7564)
                                                          (if cnd
                                                            (letrec ((g7565
                                                                      (letrec ((x7566
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7566))))
                                                              g7565)
                                                            (if cnd
                                                              (letrec ((g7567
                                                                        (letrec ((x7569
                                                                                  (car
                                                                                   args))
                                                                                 (x7568
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7569
                                                                           x7568))))
                                                                g7567)
                                                              (if cnd
                                                                (letrec ((g7570
                                                                          (letrec ((x7573
                                                                                    (car
                                                                                     args))
                                                                                   (x7572
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7571
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7573
                                                                             x7572
                                                                             x7571))))
                                                                  g7570)
                                                                (if cnd
                                                                  (letrec ((g7574
                                                                            (letrec ((x7578
                                                                                      (car
                                                                                       args))
                                                                                     (x7577
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7576
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7575
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7578
                                                                               x7577
                                                                               x7576
                                                                               x7575))))
                                                                    g7574)
                                                                  (if cnd
                                                                    (letrec ((g7579
                                                                              (letrec ((x7585
                                                                                        (car
                                                                                         args))
                                                                                       (x7584
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7583
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7582
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7580
                                                                                        (letrec ((x7581
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7581))))
                                                                                (proc
                                                                                 x7585
                                                                                 x7584
                                                                                 x7583
                                                                                 x7582
                                                                                 x7580))))
                                                                      g7579)
                                                                    (if cnd
                                                                      (letrec ((g7586
                                                                                (letrec ((x7594
                                                                                          (car
                                                                                           args))
                                                                                         (x7593
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7592
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7591
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7589
                                                                                          (letrec ((x7590
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7590)))
                                                                                         (x7587
                                                                                          (letrec ((x7588
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7588))))
                                                                                  (proc
                                                                                   x7594
                                                                                   x7593
                                                                                   x7592
                                                                                   x7591
                                                                                   x7589
                                                                                   x7587))))
                                                                        g7586)
                                                                      (if cnd
                                                                        (letrec ((g7595
                                                                                  (letrec ((x7605
                                                                                            (car
                                                                                             args))
                                                                                           (x7604
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7603
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7602
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7600
                                                                                            (letrec ((x7601
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7601)))
                                                                                           (x7598
                                                                                            (letrec ((x7599
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7599)))
                                                                                           (x7596
                                                                                            (letrec ((x7597
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7597))))
                                                                                    (proc
                                                                                     x7605
                                                                                     x7604
                                                                                     x7603
                                                                                     x7602
                                                                                     x7600
                                                                                     x7598
                                                                                     x7596))))
                                                                          g7595)
                                                                        (letrec ((g7606
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7606)))))))))))
                                                g7561)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7607
                                                        (letrec ((x7609
                                                                  (list? l)))
                                                          (assert x7609)))
                                                       (g7608
                                                        (letrec ((x-cnd7610
                                                                  (null? l)))
                                                          (if x-cnd7610
                                                            #f
                                                            (letrec ((x-cnd7611
                                                                      (letrec ((x7612
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7612
                                                                         e))))
                                                              (if x-cnd7611
                                                                l
                                                                (letrec ((x7613
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7613))))))))
                                                g7608)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7614
                                                        (letrec ((x7615
                                                                  (letrec ((x7616
                                                                            (letrec ((x7617
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7617))))
                                                                    (cdr
                                                                     x7616))))
                                                          (cdr x7615))))
                                                g7614)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7618
                                                        (letrec ((x7619
                                                                  (letrec ((x7620
                                                                            (letrec ((x7621
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7621))))
                                                                    (cdr
                                                                     x7620))))
                                                          (car x7619))))
                                                g7618)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7622 (random 42)))
                                                g7622)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7623
                                                        (letrec ((x7625
                                                                  (number? x)))
                                                          (assert x7625)))
                                                       (g7624 (= x 0)))
                                                g7624)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7626
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7627
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7627))))
                                                g7626)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7628
                                                        (letrec ((x7629
                                                                  (cdr x)))
                                                          (car x7629))))
                                                g7628)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7630
                                                        (letrec ((val7156
                                                                  (letrec ((x7633
                                                                            (pair?
                                                                             l))
                                                                           (x7631
                                                                            (letrec ((x7632
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7632))))
                                                                    (and x7633
                                                                         x7631))))
                                                          (letrec ((g7634
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7634))))
                                                g7630)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7635
                                                        (letrec ((x7636
                                                                  (letrec ((x7637
                                                                            (letrec ((x7638
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7638))))
                                                                    (cdr
                                                                     x7637))))
                                                          (cdr x7636))))
                                                g7635)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7639
                                                        (letrec ((x-cnd7640
                                                                  (letrec ((x7641
                                                                            #\0))
                                                                    (char<=?
                                                                     x7641
                                                                     c))))
                                                          (if x-cnd7640
                                                            (letrec ((x7642
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7642))
                                                            #f))))
                                                g7639)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7643
                                                        (letrec ((x7645
                                                                  (list? l)))
                                                          (assert x7645)))
                                                       (g7644
                                                        (letrec ((x-cnd7646
                                                                  (null? l)))
                                                          (if x-cnd7646
                                                            #f
                                                            (letrec ((x-cnd7647
                                                                      (letrec ((x7648
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7648
                                                                         k))))
                                                              (if x-cnd7647
                                                                (car l)
                                                                (letrec ((x7649
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7649))))))))
                                                g7644)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7650 (if x #f #t)))
                                                g7650)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7651 (append l1 l2)))
                                                g7651)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7652
                                                        (letrec ((x7654
                                                                  (list? l)))
                                                          (assert x7654)))
                                                       (g7653
                                                        (letrec ((x-cnd7655
                                                                  (null? l)))
                                                          (if x-cnd7655
                                                            #f
                                                            (letrec ((x-cnd7656
                                                                      (letrec ((x7657
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7657
                                                                         e))))
                                                              (if x-cnd7656
                                                                l
                                                                (letrec ((x7658
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7658))))))))
                                                g7653)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7659
                                                        (letrec ((x7660
                                                                  (letrec ((x7661
                                                                            (letrec ((x7662
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7662))))
                                                                    (cdr
                                                                     x7661))))
                                                          (car x7660))))
                                                g7659)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7663
                                                        (letrec ((x7665
                                                                  (list? l)))
                                                          (assert x7665)))
                                                       (g7664
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7666
                                                                              (letrec ((x-cnd7667
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7667
                                                                                  0
                                                                                  (letrec ((x7668
                                                                                            (letrec ((x7669
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7669))))
                                                                                    (+
                                                                                     1
                                                                                     x7668))))))
                                                                      g7666))))
                                                          (letrec ((g7670
                                                                    (rec l)))
                                                            g7670))))
                                                g7664)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7671
                                                        (letrec ((x7674
                                                                  (char? c1)))
                                                          (assert x7674)))
                                                       (g7672
                                                        (letrec ((x7675
                                                                  (char? c2)))
                                                          (assert x7675)))
                                                       (g7673
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7676
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7676))))
                                                g7673)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7677
                                                        (letrec ((x7678
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7678))))
                                                g7677)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7679
                                                        (letrec ((x7680
                                                                  (letrec ((x7681
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7681))))
                                                          (cdr x7680))))
                                                g7679)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7682
                                                        (letrec ((x7684
                                                                  (list? l)))
                                                          (assert x7684)))
                                                       (g7683
                                                        (letrec ((x-cnd7685
                                                                  (null? l)))
                                                          (if x-cnd7685
                                                            #f
                                                            (letrec ((x-cnd7686
                                                                      (letrec ((x7687
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7687
                                                                         k))))
                                                              (if x-cnd7686
                                                                (car l)
                                                                (letrec ((x7688
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7688))))))))
                                                g7683)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7689
                                                        (letrec ((x7690
                                                                  (car x)))
                                                          (car x7690))))
                                                g7689)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7691
                                                        (letrec ((x7694
                                                                  (char? c1)))
                                                          (assert x7694)))
                                                       (g7692
                                                        (letrec ((x7695
                                                                  (char? c2)))
                                                          (assert x7695)))
                                                       (g7693
                                                        (letrec ((x7696
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7696))))
                                                g7693)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7697
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7698
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7698))))
                                                g7697)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7699
                                                        (letrec ((x7702
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7702)))
                                                       (g7700
                                                        (letrec ((x7703
                                                                  (list? l)))
                                                          (assert x7703)))
                                                       (g7701
                                                        (letrec ((x-cnd7704
                                                                  (null? l)))
                                                          (if x-cnd7704
                                                            #t
                                                            (letrec ((x-cnd7705
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7705
                                                                (letrec ((g7706
                                                                          (letrec ((x7708
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7708)))
                                                                         (g7707
                                                                          (letrec ((x7709
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7709))))
                                                                  g7707)
                                                                '()))))))
                                                g7701)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7710
                                                        (letrec ((x7712
                                                                  (number? x)))
                                                          (assert x7712)))
                                                       (g7711
                                                        (letrec ((x-cnd7713
                                                                  (< x 0)))
                                                          (if x-cnd7713
                                                            (- 0 x)
                                                            x))))
                                                g7711)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7714
                                                        (letrec ((x7717
                                                                  (char? c1)))
                                                          (assert x7717)))
                                                       (g7715
                                                        (letrec ((x7718
                                                                  (char? c2)))
                                                          (assert x7718)))
                                                       (g7716
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7719
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7719))))
                                                g7716)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7720
                                                        (letrec ((x7721
                                                                  (letrec ((x7722
                                                                            (letrec ((x7723
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7723))))
                                                                    (cdr
                                                                     x7722))))
                                                          (car x7721))))
                                                g7720)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7724 #f)) g7724)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7725
                                                        (letrec ((x7727
                                                                  (letrec ((x7728
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7728)))
                                                                 (x7726
                                                                  (gcd m n)))
                                                          (/ x7727 x7726))))
                                                g7725)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7729
                                                        (letrec ((x7731
                                                                  (number? x)))
                                                          (assert x7731)))
                                                       (g7730
                                                        (letrec ((x7732
                                                                  (<= x y)))
                                                          (not x7732))))
                                                g7730)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7733
                                                        (letrec ((x7737
                                                                  (list? l)))
                                                          (assert x7737)))
                                                       (g7734
                                                        (letrec ((x7738
                                                                  (number?
                                                                   index)))
                                                          (assert x7738)))
                                                       (g7735
                                                        (letrec ((x7739
                                                                  (letrec ((x7740
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7740))))
                                                          (assert x7739)))
                                                       (g7736
                                                        (letrec ((x-cnd7741
                                                                  (= index 0)))
                                                          (if x-cnd7741
                                                            (car l)
                                                            (letrec ((x7743
                                                                      (cdr l))
                                                                     (x7742
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7743
                                                               x7742))))))
                                                g7736)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7744
                                                        (letrec ((x-cnd7745
                                                                  (= b 0)))
                                                          (if x-cnd7745
                                                            a
                                                            (letrec ((x7746
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7746))))))
                                                g7744)))
                                           (tak
                                            (lambda (x y z)
                                              (letrec ((g7747
                                                        (letrec ((x-cnd7748
                                                                  (< y x)))
                                                          (if x-cnd7748
                                                            (letrec ((x7753
                                                                      (letrec ((x7754
                                                                                (-
                                                                                 x
                                                                                 1)))
                                                                        (tak
                                                                         x7754
                                                                         y
                                                                         z)))
                                                                     (x7751
                                                                      (letrec ((x7752
                                                                                (-
                                                                                 y
                                                                                 1)))
                                                                        (tak
                                                                         x7752
                                                                         z
                                                                         x)))
                                                                     (x7749
                                                                      (letrec ((x7750
                                                                                (-
                                                                                 z
                                                                                 1)))
                                                                        (tak
                                                                         x7750
                                                                         x
                                                                         y))))
                                                              (tak
                                                               x7753
                                                               x7751
                                                               x7749))
                                                            z))))
                                                g7747))))
                                    (letrec ((g7755
                                              (letrec ((x7759
                                                        ((lambda (j7232
                                                                  k7233
                                                                  f7234)
                                                           (letrec ((g7760
                                                                     (lambda (g7229
                                                                              g7230
                                                                              g7231)
                                                                       (letrec ((g7761
                                                                                 (letrec ((x7762
                                                                                           (letrec ((x7765
                                                                                                     (number?/c
                                                                                                      j7232
                                                                                                      k7233
                                                                                                      g7229))
                                                                                                    (x7764
                                                                                                     (number?/c
                                                                                                      j7232
                                                                                                      k7233
                                                                                                      g7230))
                                                                                                    (x7763
                                                                                                     (number?/c
                                                                                                      j7232
                                                                                                      k7233
                                                                                                      g7231)))
                                                                                             (f7234
                                                                                              x7765
                                                                                              x7764
                                                                                              x7763))))
                                                                                   (number?/c
                                                                                    j7232
                                                                                    k7233
                                                                                    x7762))))
                                                                         g7761))))
                                                             g7760))
                                                         'module
                                                         'importer
                                                         tak))
                                                       (x7758 (input))
                                                       (x7757 (input))
                                                       (x7756 (input)))
                                                (x7759 x7758 x7757 x7756))))
                                      g7755))))
                          g7248))))
              g7246)))
    g7245))
