(letrec ((any? (lambda (v) (letrec ((g7239 #t)) g7239)))
         (meta (lambda (v) (letrec ((g7240 v)) g7240)))
         (member
          (lambda (v lst)
            (letrec ((g7241
                      (letrec ((g7242
                                (letrec ((x-e7243 lst))
                                  (match
                                   x-e7243
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7244 (eq? v v1)))
                                       (if x-cnd7244 #t (member v vs)))))))))
                        g7242)))
              g7241)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7245 (lambda (v) (letrec ((g7246 v)) g7246)))) g7245)))
         (nonzero?
          (lambda (v)
            (letrec ((g7247 (letrec ((x7248 (= v 0))) (not x7248)))) g7247))))
  (letrec ((g7249
            (letrec ((g7250
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7251 '())
                                 (g7252
                                  (letrec ((real/c
                                            (lambda (g7160 g7161 g7162)
                                              (letrec ((g7253
                                                        (letrec ((x-cnd7254
                                                                  (real?
                                                                   g7162)))
                                                          (if x-cnd7254
                                                            g7162
                                                            (blame
                                                             g7160
                                                             'real?)))))
                                                g7253)))
                                           (boolean?/c
                                            (lambda (g7163 g7164 g7165)
                                              (letrec ((g7255
                                                        (letrec ((x-cnd7256
                                                                  (boolean?
                                                                   g7165)))
                                                          (if x-cnd7256
                                                            g7165
                                                            (blame
                                                             g7163
                                                             'boolean?)))))
                                                g7255)))
                                           (number?/c
                                            (lambda (g7166 g7167 g7168)
                                              (letrec ((g7257
                                                        (letrec ((x-cnd7258
                                                                  (number?
                                                                   g7168)))
                                                          (if x-cnd7258
                                                            g7168
                                                            (blame
                                                             g7166
                                                             'number?)))))
                                                g7257)))
                                           (any/c
                                            (lambda (g7169 g7170 g7171)
                                              (letrec ((g7259
                                                        (letrec ((x-cnd7260
                                                                  ((lambda (v)
                                                                     (letrec ((g7261
                                                                               #t))
                                                                       g7261))
                                                                   g7171)))
                                                          (if x-cnd7260
                                                            g7171
                                                            (blame
                                                             g7169
                                                             '(lambda (v)
                                                                #t))))))
                                                g7259)))
                                           (any?/c
                                            (lambda (g7172 g7173 g7174)
                                              (letrec ((g7262
                                                        (letrec ((x-cnd7263
                                                                  ((lambda (v)
                                                                     (letrec ((g7264
                                                                               #t))
                                                                       g7264))
                                                                   g7174)))
                                                          (if x-cnd7263
                                                            g7174
                                                            (blame
                                                             g7172
                                                             '(lambda (v)
                                                                #t))))))
                                                g7262)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7175 g7176 g7177)
                                              (letrec ((g7265
                                                        (letrec ((x-cnd7266
                                                                  (pair?
                                                                   g7177)))
                                                          (if x-cnd7266
                                                            g7177
                                                            (blame
                                                             g7175
                                                             'pair?)))))
                                                g7265)))
                                           (pair?/c
                                            (lambda (g7178 g7179 g7180)
                                              (letrec ((g7267
                                                        (letrec ((x-cnd7268
                                                                  (pair?
                                                                   g7180)))
                                                          (if x-cnd7268
                                                            g7180
                                                            (blame
                                                             g7178
                                                             'pair?)))))
                                                g7267)))
                                           (integer?
                                            (lambda (g7181 g7182 g7183)
                                              (letrec ((g7269
                                                        (letrec ((x-cnd7270
                                                                  (integer?
                                                                   g7183)))
                                                          (if x-cnd7270
                                                            g7183
                                                            (blame
                                                             g7181
                                                             'integer?)))))
                                                g7269)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7271
                                                        (lambda (k j v)
                                                          (letrec ((g7272
                                                                    (letrec ((x-cnd7273
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7273
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7272))))
                                                g7271)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7274
                                                        (lambda (k j v)
                                                          (letrec ((g7275
                                                                    (letrec ((x-cnd7276
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7276
                                                                        '()
                                                                        (letrec ((x7280
                                                                                  (letrec ((x7281
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7281)))
                                                                                 (x7277
                                                                                  (letrec ((x7279
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7278
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7279
                                                                                     k
                                                                                     j
                                                                                     x7278))))
                                                                          (cons
                                                                           x7280
                                                                           x7277))))))
                                                            g7275))))
                                                g7274)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7282 #t)) g7282)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7283
                                                        (letrec ((x7284
                                                                  (= v 0)))
                                                          (not x7284))))
                                                g7283)))
                                           (nonzero?/c
                                            (lambda (g7184 g7185 g7186)
                                              (letrec ((g7285
                                                        (letrec ((x-cnd7286
                                                                  ((lambda (v)
                                                                     (letrec ((g7287
                                                                               (letrec ((x7288
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7288))))
                                                                       g7287))
                                                                   g7186)))
                                                          (if x-cnd7286
                                                            g7186
                                                            (blame
                                                             g7184
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7285)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7289 v)) g7289)))
                                           (+
                                            ((lambda (j7189 k7190 f7191)
                                               (letrec ((g7291
                                                         (lambda (g7187 g7188)
                                                           (letrec ((g7292
                                                                     (letrec ((x7293
                                                                               (letrec ((x7295
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7187))
                                                                                        (x7294
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7188)))
                                                                                 (f7191
                                                                                  x7295
                                                                                  x7294))))
                                                                       (number?/c
                                                                        j7189
                                                                        k7190
                                                                        x7293))))
                                                             g7292))))
                                                 g7291))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7290 (orig-+ a b)))
                                                 g7290))))
                                           (-
                                            ((lambda (j7194 k7195 f7196)
                                               (letrec ((g7297
                                                         (lambda (g7192 g7193)
                                                           (letrec ((g7298
                                                                     (letrec ((x7299
                                                                               (letrec ((x7301
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7192))
                                                                                        (x7300
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7193)))
                                                                                 (f7196
                                                                                  x7301
                                                                                  x7300))))
                                                                       (number?/c
                                                                        j7194
                                                                        k7195
                                                                        x7299))))
                                                             g7298))))
                                                 g7297))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7296 (orig-- a b)))
                                                 g7296))))
                                           (*
                                            ((lambda (j7199 k7200 f7201)
                                               (letrec ((g7303
                                                         (lambda (g7197 g7198)
                                                           (letrec ((g7304
                                                                     (letrec ((x7305
                                                                               (letrec ((x7307
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7197))
                                                                                        (x7306
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7198)))
                                                                                 (f7201
                                                                                  x7307
                                                                                  x7306))))
                                                                       (number?/c
                                                                        j7199
                                                                        k7200
                                                                        x7305))))
                                                             g7304))))
                                                 g7303))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7302 (orig-* a b)))
                                                 g7302))))
                                           (/
                                            ((lambda (j7204 k7205 f7206)
                                               (letrec ((g7309
                                                         (lambda (g7202 g7203)
                                                           (letrec ((g7310
                                                                     (letrec ((x7311
                                                                               (letrec ((x7313
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7202))
                                                                                        (x7312
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7203)))
                                                                                 (f7206
                                                                                  x7313
                                                                                  x7312))))
                                                                       (number?/c
                                                                        j7204
                                                                        k7205
                                                                        x7311))))
                                                             g7310))))
                                                 g7309))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7308 (orig-/ a b)))
                                                 g7308))))
                                           (car
                                            ((lambda (j7208 k7209 f7210)
                                               (letrec ((g7315
                                                         (lambda (g7207)
                                                           (letrec ((g7316
                                                                     (letrec ((x7317
                                                                               (letrec ((x7318
                                                                                         (pair?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7207)))
                                                                                 (f7210
                                                                                  x7318))))
                                                                       (any/c
                                                                        j7208
                                                                        k7209
                                                                        x7317))))
                                                             g7316))))
                                                 g7315))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7314 (orig-car p)))
                                                 g7314))))
                                           (cdr
                                            ((lambda (j7212 k7213 f7214)
                                               (letrec ((g7320
                                                         (lambda (g7211)
                                                           (letrec ((g7321
                                                                     (letrec ((x7322
                                                                               (letrec ((x7323
                                                                                         (pair?/c
                                                                                          j7212
                                                                                          k7213
                                                                                          g7211)))
                                                                                 (f7214
                                                                                  x7323))))
                                                                       (any/c
                                                                        j7212
                                                                        k7213
                                                                        x7322))))
                                                             g7321))))
                                                 g7320))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7319 (orig-cdr p)))
                                                 g7319))))
                                           (cons
                                            ((lambda (j7217 k7218 f7219)
                                               (letrec ((g7325
                                                         (lambda (g7215 g7216)
                                                           (letrec ((g7326
                                                                     (letrec ((x7327
                                                                               (letrec ((x7329
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7215))
                                                                                        (x7328
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7216)))
                                                                                 (f7219
                                                                                  x7329
                                                                                  x7328))))
                                                                       (pair?/c
                                                                        j7217
                                                                        k7218
                                                                        x7327))))
                                                             g7326))))
                                                 g7325))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7324 (cons a b)))
                                                 g7324))))
                                           (vector-ref
                                            ((lambda (j7221 k7222 f7223)
                                               (letrec ((g7331
                                                         (lambda (g7220)
                                                           (letrec ((g7332
                                                                     (letrec ((x7333
                                                                               (letrec ((x7334
                                                                                         (vector?/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7220)))
                                                                                 (f7223
                                                                                  x7334))))
                                                                       (integer?/c
                                                                        j7221
                                                                        k7222
                                                                        x7333))))
                                                             g7332))))
                                                 g7331))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7330
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7330))))
                                           (vector-set!
                                            ((lambda (j7226 k7227 f7228)
                                               (letrec ((g7336
                                                         (lambda (g7224 g7225)
                                                           (letrec ((g7337
                                                                     (letrec ((x7338
                                                                               (letrec ((x7340
                                                                                         (vector?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7224))
                                                                                        (x7339
                                                                                         (integer?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7225)))
                                                                                 (f7228
                                                                                  x7340
                                                                                  x7339))))
                                                                       (any/c
                                                                        j7226
                                                                        k7227
                                                                        x7338))))
                                                             g7337))))
                                                 g7336))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7335
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7335))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7341 #t)) g7341)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7342
                                                        (letrec ((x7343
                                                                  (letrec ((x7344
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7344))))
                                                          (cdr x7343))))
                                                g7342)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7345
                                                        (letrec ((x7348
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7348)))
                                                       (g7346
                                                        (letrec ((x7349
                                                                  (list? l)))
                                                          (assert x7349)))
                                                       (g7347
                                                        (letrec ((x-cnd7350
                                                                  (null? l)))
                                                          (if x-cnd7350
                                                            '()
                                                            (letrec ((x7353
                                                                      (letrec ((x7354
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7354)))
                                                                     (x7351
                                                                      (letrec ((x7352
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7352))))
                                                              (cons
                                                               x7353
                                                               x7351))))))
                                                g7347)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7355
                                                        (letrec ((x7356
                                                                  (car x)))
                                                          (cdr x7356))))
                                                g7355)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7357
                                                        (letrec ((x7358
                                                                  (letrec ((x7359
                                                                            (letrec ((x7360
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7360))))
                                                                    (cdr
                                                                     x7359))))
                                                          (car x7358))))
                                                g7357)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7361
                                                        (letrec ((x7362
                                                                  (letrec ((x7363
                                                                            (letrec ((x7364
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7364))))
                                                                    (car
                                                                     x7363))))
                                                          (cdr x7362))))
                                                g7361)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7365
                                                        (letrec ((x7368
                                                                  (string?
                                                                   filename)))
                                                          (assert x7368)))
                                                       (g7366
                                                        (letrec ((x7369
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7369)))
                                                       (g7367
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7370
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7371 res))
                                                            g7371))))
                                                g7367)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7372
                                                        (letrec ((x7373
                                                                  (letrec ((x7374
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7374))))
                                                          (car x7373))))
                                                g7372)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7375
                                                        (letrec ((x7376
                                                                  (letrec ((x7377
                                                                            (letrec ((x7378
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7378))))
                                                                    (car
                                                                     x7377))))
                                                          (cdr x7376))))
                                                g7375)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7379
                                                        (letrec ((x7381
                                                                  (list? l)))
                                                          (assert x7381)))
                                                       (g7380
                                                        (letrec ((x-cnd7382
                                                                  (null? l)))
                                                          (if x-cnd7382
                                                            #f
                                                            (letrec ((x-cnd7383
                                                                      (letrec ((x7384
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7384
                                                                         k))))
                                                              (if x-cnd7383
                                                                (car l)
                                                                (letrec ((x7385
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7385))))))))
                                                g7380)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7386
                                                        (letrec ((x7387
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7387))))
                                                g7386)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7388
                                                        (letrec ((x7390
                                                                  (list? l)))
                                                          (assert x7390)))
                                                       (g7389
                                                        (letrec ((x-cnd7391
                                                                  (null? l)))
                                                          (if x-cnd7391
                                                            ""
                                                            (letrec ((x7394
                                                                      (letrec ((x7395
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7395)))
                                                                     (x7392
                                                                      (letrec ((x7393
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7393))))
                                                              (string-append
                                                               x7394
                                                               x7392))))))
                                                g7389)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7396
                                                        (letrec ((x7399
                                                                  (char? c1)))
                                                          (assert x7399)))
                                                       (g7397
                                                        (letrec ((x7400
                                                                  (char? c2)))
                                                          (assert x7400)))
                                                       (g7398
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7401
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7401))))
                                                g7398)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7402
                                                        (letrec ((x7403
                                                                  (letrec ((x7404
                                                                            (letrec ((x7405
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7405))))
                                                                    (cdr
                                                                     x7404))))
                                                          (cdr x7403))))
                                                g7402)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7406
                                                        (letrec ((x7409
                                                                  (list? l)))
                                                          (assert x7409)))
                                                       (g7407
                                                        (letrec ((x7410
                                                                  (numer?)))
                                                          (assert x7410)))
                                                       (g7408
                                                        (letrec ((x-cnd7411
                                                                  (zero? k)))
                                                          (if x-cnd7411
                                                            x
                                                            (letrec ((x7413
                                                                      (cdr x))
                                                                     (x7412
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7413
                                                               x7412))))))
                                                g7408)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7414 '())) g7414)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7415
                                                        (letrec ((x-cnd7416
                                                                  (letrec ((x7417
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7417))))
                                                          (if x-cnd7416
                                                            (letrec ((x7418
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7418))
                                                            #f))))
                                                g7415)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7419
                                                        (letrec ((x7421
                                                                  (number? x)))
                                                          (assert x7421)))
                                                       (g7420
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7422
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7423
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7423)))))
                                                            g7422))))
                                                g7420)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7424
                                                        (letrec ((val7146
                                                                  (letrec ((x7425
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7425
                                                                     9))))
                                                          (letrec ((g7426
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7427
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7427
                                                                                   10))))
                                                                        (letrec ((g7428
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7429
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7429
                                                                                       32)))))
                                                                          g7428)))))
                                                            g7426))))
                                                g7424)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7430
                                                        (letrec ((x7431
                                                                  (letrec ((x7432
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7432))))
                                                          (cdr x7431))))
                                                g7430)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7433
                                                        (letrec ((x7435
                                                                  (number? x)))
                                                          (assert x7435)))
                                                       (g7434 (> x 0)))
                                                g7434)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7436 #f)) g7436)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7437
                                                        (letrec ((x7438
                                                                  (cdr x)))
                                                          (cdr x7438))))
                                                g7437)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7439
                                                        (letrec ((x7441
                                                                  (number? x)))
                                                          (assert x7441)))
                                                       (g7440
                                                        (letrec ((x-cnd7442
                                                                  (< x 0)))
                                                          (if x-cnd7442
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7440)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7443
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7444
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7446
                                                                                          (null?
                                                                                           a))
                                                                                         (x7445
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7446
                                                                                       x7445))))
                                                                        (letrec ((g7447
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7450
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7449
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7448
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7450
                                                                                                     x7449
                                                                                                     x7448))))
                                                                                      (letrec ((g7451
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7459
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7458
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7455
                                                                                                                      (letrec ((x7457
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7456
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7457
                                                                                                                         x7456)))
                                                                                                                     (x7452
                                                                                                                      (letrec ((x7454
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7453
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7454
                                                                                                                         x7453))))
                                                                                                              (and x7459
                                                                                                                   x7458
                                                                                                                   x7455
                                                                                                                   x7452))))
                                                                                                    (letrec ((g7460
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7479
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7478
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7461
                                                                                                                          (letrec ((x7475
                                                                                                                                    (letrec ((x7476
                                                                                                                                              (letrec ((x7477
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7477))))
                                                                                                                                      (x7476)))
                                                                                                                                   (x7462
                                                                                                                                    (letrec ((x7473
                                                                                                                                              (letrec ((x7474
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7474
                                                                                                                                                 n)))
                                                                                                                                             (x7463
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7464
                                                                                                                                                                    (letrec ((x7471
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7465
                                                                                                                                                                              (letrec ((x7468
                                                                                                                                                                                        (letrec ((x7470
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7469
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7470
                                                                                                                                                                                           x7469)))
                                                                                                                                                                                       (x7466
                                                                                                                                                                                        (letrec ((x7467
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7467))))
                                                                                                                                                                                (and x7468
                                                                                                                                                                                     x7466))))
                                                                                                                                                                      (or x7471
                                                                                                                                                                          x7465))))
                                                                                                                                                            g7464))))
                                                                                                                                                (letrec ((g7472
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7472))))
                                                                                                                                      (and x7473
                                                                                                                                           x7463))))
                                                                                                                            (let x7475 x7462))))
                                                                                                                  (and x7479
                                                                                                                       x7478
                                                                                                                       x7461)))))
                                                                                                      g7460)))))
                                                                                        g7451)))))
                                                                          g7447)))))
                                                            g7444))))
                                                g7443)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7480
                                                        (letrec ((x7481
                                                                  (letrec ((x7482
                                                                            (letrec ((x7483
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7483))))
                                                                    (car
                                                                     x7482))))
                                                          (cdr x7481))))
                                                g7480)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7484
                                                        (letrec ((x7485
                                                                  (letrec ((x7486
                                                                            (letrec ((x7487
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7487))))
                                                                    (car
                                                                     x7486))))
                                                          (car x7485))))
                                                g7484)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7488 (eq? x y)))
                                                g7488)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7489
                                                        (letrec ((x7491
                                                                  (number? x)))
                                                          (assert x7491)))
                                                       (g7490
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7492
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7493
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7493)))))
                                                            g7492))))
                                                g7490)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7494
                                                        (letrec ((x7497
                                                                  (string?
                                                                   filename)))
                                                          (assert x7497)))
                                                       (g7495
                                                        (letrec ((x7498
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7498)))
                                                       (g7496
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7499
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7500 res))
                                                            g7500))))
                                                g7496)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7501 (cons x '())))
                                                g7501)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7502
                                                        (letrec ((x7505
                                                                  (char? c1)))
                                                          (assert x7505)))
                                                       (g7503
                                                        (letrec ((x7506
                                                                  (char? c2)))
                                                          (assert x7506)))
                                                       (g7504
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7507
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7507))))
                                                g7504)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7508
                                                        (letrec ((x7509
                                                                  (letrec ((x7510
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7510))))
                                                          (cdr x7509))))
                                                g7508)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7511
                                                        (letrec ((x7512
                                                                  (letrec ((x7513
                                                                            (letrec ((x7514
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7514))))
                                                                    (car
                                                                     x7513))))
                                                          (cdr x7512))))
                                                g7511)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7515
                                                        (letrec ((x7516
                                                                  (letrec ((x7517
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7517))))
                                                          (car x7516))))
                                                g7515)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7518
                                                        (letrec ((x7519
                                                                  (letrec ((x7520
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7520))))
                                                          (car x7519))))
                                                g7518)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7521
                                                        (letrec ((x7524
                                                                  (char? c1)))
                                                          (assert x7524)))
                                                       (g7522
                                                        (letrec ((x7525
                                                                  (char? c2)))
                                                          (assert x7525)))
                                                       (g7523
                                                        (letrec ((x7526
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7526))))
                                                g7523)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7527
                                                        (letrec ((x7528
                                                                  (letrec ((x7529
                                                                            (letrec ((x7530
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7530))))
                                                                    (car
                                                                     x7529))))
                                                          (car x7528))))
                                                g7527)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7531
                                                        (letrec ((x7533
                                                                  (number? x)))
                                                          (assert x7533)))
                                                       (g7532 (< x 0)))
                                                g7532)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7534 (memq e l)))
                                                g7534)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7535
                                                        (letrec ((x7536
                                                                  (letrec ((x7537
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7537))))
                                                          (car x7536))))
                                                g7535)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7538 '())) g7538)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7539
                                                        (letrec ((x7541
                                                                  (list? l)))
                                                          (assert x7541)))
                                                       (g7540
                                                        (letrec ((x-cnd7542
                                                                  (null? l)))
                                                          (if x-cnd7542
                                                            '()
                                                            (letrec ((x7545
                                                                      (letrec ((x7546
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7546)))
                                                                     (x7543
                                                                      (letrec ((x7544
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7544))))
                                                              (append
                                                               x7545
                                                               x7543))))))
                                                g7540)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7547
                                                        (letrec ((x7548
                                                                  (letrec ((x7549
                                                                            (letrec ((x7550
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7550))))
                                                                    (car
                                                                     x7549))))
                                                          (car x7548))))
                                                g7547)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7551
                                                        (letrec ((x7552
                                                                  (letrec ((x7553
                                                                            (letrec ((x7554
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7554))))
                                                                    (cdr
                                                                     x7553))))
                                                          (cdr x7552))))
                                                g7551)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7555
                                                        (letrec ((x7557
                                                                  (number? x)))
                                                          (assert x7557)))
                                                       (g7556
                                                        (letrec ((x7558
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7558))))
                                                g7556)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7559
                                                        (letrec ((x7560
                                                                  (letrec ((x7561
                                                                            (letrec ((x7562
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7562))))
                                                                    (car
                                                                     x7561))))
                                                          (car x7560))))
                                                g7559)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7563
                                                        (letrec ((x7566
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7566)))
                                                       (g7564
                                                        (letrec ((x7567
                                                                  (list?
                                                                   args)))
                                                          (assert x7567)))
                                                       (g7565
                                                        (if cnd
                                                          (letrec ((g7568
                                                                    (proc)))
                                                            g7568)
                                                          (if cnd
                                                            (letrec ((g7569
                                                                      (letrec ((x7570
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7570))))
                                                              g7569)
                                                            (if cnd
                                                              (letrec ((g7571
                                                                        (letrec ((x7573
                                                                                  (car
                                                                                   args))
                                                                                 (x7572
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7573
                                                                           x7572))))
                                                                g7571)
                                                              (if cnd
                                                                (letrec ((g7574
                                                                          (letrec ((x7577
                                                                                    (car
                                                                                     args))
                                                                                   (x7576
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7575
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7577
                                                                             x7576
                                                                             x7575))))
                                                                  g7574)
                                                                (if cnd
                                                                  (letrec ((g7578
                                                                            (letrec ((x7582
                                                                                      (car
                                                                                       args))
                                                                                     (x7581
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7580
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7579
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7582
                                                                               x7581
                                                                               x7580
                                                                               x7579))))
                                                                    g7578)
                                                                  (if cnd
                                                                    (letrec ((g7583
                                                                              (letrec ((x7589
                                                                                        (car
                                                                                         args))
                                                                                       (x7588
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7587
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7586
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7584
                                                                                        (letrec ((x7585
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7585))))
                                                                                (proc
                                                                                 x7589
                                                                                 x7588
                                                                                 x7587
                                                                                 x7586
                                                                                 x7584))))
                                                                      g7583)
                                                                    (if cnd
                                                                      (letrec ((g7590
                                                                                (letrec ((x7598
                                                                                          (car
                                                                                           args))
                                                                                         (x7597
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7596
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7595
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7593
                                                                                          (letrec ((x7594
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7594)))
                                                                                         (x7591
                                                                                          (letrec ((x7592
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7592))))
                                                                                  (proc
                                                                                   x7598
                                                                                   x7597
                                                                                   x7596
                                                                                   x7595
                                                                                   x7593
                                                                                   x7591))))
                                                                        g7590)
                                                                      (if cnd
                                                                        (letrec ((g7599
                                                                                  (letrec ((x7609
                                                                                            (car
                                                                                             args))
                                                                                           (x7608
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7607
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7606
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7604
                                                                                            (letrec ((x7605
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7605)))
                                                                                           (x7602
                                                                                            (letrec ((x7603
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7603)))
                                                                                           (x7600
                                                                                            (letrec ((x7601
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7601))))
                                                                                    (proc
                                                                                     x7609
                                                                                     x7608
                                                                                     x7607
                                                                                     x7606
                                                                                     x7604
                                                                                     x7602
                                                                                     x7600))))
                                                                          g7599)
                                                                        (letrec ((g7610
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7610)))))))))))
                                                g7565)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7611
                                                        (letrec ((x7613
                                                                  (list? l)))
                                                          (assert x7613)))
                                                       (g7612
                                                        (letrec ((x-cnd7614
                                                                  (null? l)))
                                                          (if x-cnd7614
                                                            #f
                                                            (letrec ((x-cnd7615
                                                                      (letrec ((x7616
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7616
                                                                         e))))
                                                              (if x-cnd7615
                                                                l
                                                                (letrec ((x7617
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7617))))))))
                                                g7612)))
                                           (cddddr
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
                                                          (cdr x7619))))
                                                g7618)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7622
                                                        (letrec ((x7623
                                                                  (letrec ((x7624
                                                                            (letrec ((x7625
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7625))))
                                                                    (cdr
                                                                     x7624))))
                                                          (car x7623))))
                                                g7622)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7626 (random 42)))
                                                g7626)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7627
                                                        (letrec ((x7629
                                                                  (number? x)))
                                                          (assert x7629)))
                                                       (g7628 (= x 0)))
                                                g7628)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7630
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7631
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7631))))
                                                g7630)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7632
                                                        (letrec ((x7633
                                                                  (cdr x)))
                                                          (car x7633))))
                                                g7632)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7634
                                                        (letrec ((val7156
                                                                  (letrec ((x7637
                                                                            (pair?
                                                                             l))
                                                                           (x7635
                                                                            (letrec ((x7636
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7636))))
                                                                    (and x7637
                                                                         x7635))))
                                                          (letrec ((g7638
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7638))))
                                                g7634)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7639
                                                        (letrec ((x7640
                                                                  (letrec ((x7641
                                                                            (letrec ((x7642
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7642))))
                                                                    (cdr
                                                                     x7641))))
                                                          (cdr x7640))))
                                                g7639)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7643
                                                        (letrec ((x-cnd7644
                                                                  (letrec ((x7645
                                                                            #\0))
                                                                    (char<=?
                                                                     x7645
                                                                     c))))
                                                          (if x-cnd7644
                                                            (letrec ((x7646
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7646))
                                                            #f))))
                                                g7643)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7647
                                                        (letrec ((x7649
                                                                  (list? l)))
                                                          (assert x7649)))
                                                       (g7648
                                                        (letrec ((x-cnd7650
                                                                  (null? l)))
                                                          (if x-cnd7650
                                                            #f
                                                            (letrec ((x-cnd7651
                                                                      (letrec ((x7652
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7652
                                                                         k))))
                                                              (if x-cnd7651
                                                                (car l)
                                                                (letrec ((x7653
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7653))))))))
                                                g7648)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7654 (if x #f #t)))
                                                g7654)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7655 (append l1 l2)))
                                                g7655)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7656
                                                        (letrec ((x7658
                                                                  (list? l)))
                                                          (assert x7658)))
                                                       (g7657
                                                        (letrec ((x-cnd7659
                                                                  (null? l)))
                                                          (if x-cnd7659
                                                            #f
                                                            (letrec ((x-cnd7660
                                                                      (letrec ((x7661
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7661
                                                                         e))))
                                                              (if x-cnd7660
                                                                l
                                                                (letrec ((x7662
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7662))))))))
                                                g7657)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7663
                                                        (letrec ((x7664
                                                                  (letrec ((x7665
                                                                            (letrec ((x7666
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7666))))
                                                                    (cdr
                                                                     x7665))))
                                                          (car x7664))))
                                                g7663)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7667
                                                        (letrec ((x7669
                                                                  (list? l)))
                                                          (assert x7669)))
                                                       (g7668
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7670
                                                                              (letrec ((x-cnd7671
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7671
                                                                                  0
                                                                                  (letrec ((x7672
                                                                                            (letrec ((x7673
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7673))))
                                                                                    (+
                                                                                     1
                                                                                     x7672))))))
                                                                      g7670))))
                                                          (letrec ((g7674
                                                                    (rec l)))
                                                            g7674))))
                                                g7668)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7675
                                                        (letrec ((x7678
                                                                  (char? c1)))
                                                          (assert x7678)))
                                                       (g7676
                                                        (letrec ((x7679
                                                                  (char? c2)))
                                                          (assert x7679)))
                                                       (g7677
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7680
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7680))))
                                                g7677)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7681
                                                        (letrec ((x7682
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7682))))
                                                g7681)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7683
                                                        (letrec ((x7684
                                                                  (letrec ((x7685
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7685))))
                                                          (cdr x7684))))
                                                g7683)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7686
                                                        (letrec ((x7688
                                                                  (list? l)))
                                                          (assert x7688)))
                                                       (g7687
                                                        (letrec ((x-cnd7689
                                                                  (null? l)))
                                                          (if x-cnd7689
                                                            #f
                                                            (letrec ((x-cnd7690
                                                                      (letrec ((x7691
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7691
                                                                         k))))
                                                              (if x-cnd7690
                                                                (car l)
                                                                (letrec ((x7692
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7692))))))))
                                                g7687)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7693
                                                        (letrec ((x7694
                                                                  (car x)))
                                                          (car x7694))))
                                                g7693)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7695
                                                        (letrec ((x7698
                                                                  (char? c1)))
                                                          (assert x7698)))
                                                       (g7696
                                                        (letrec ((x7699
                                                                  (char? c2)))
                                                          (assert x7699)))
                                                       (g7697
                                                        (letrec ((x7700
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7700))))
                                                g7697)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7701
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7702
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7702))))
                                                g7701)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7703
                                                        (letrec ((x7706
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7706)))
                                                       (g7704
                                                        (letrec ((x7707
                                                                  (list? l)))
                                                          (assert x7707)))
                                                       (g7705
                                                        (letrec ((x-cnd7708
                                                                  (null? l)))
                                                          (if x-cnd7708
                                                            #t
                                                            (letrec ((x-cnd7709
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7709
                                                                (letrec ((g7710
                                                                          (letrec ((x7712
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7712)))
                                                                         (g7711
                                                                          (letrec ((x7713
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7713))))
                                                                  g7711)
                                                                '()))))))
                                                g7705)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7714
                                                        (letrec ((x7716
                                                                  (number? x)))
                                                          (assert x7716)))
                                                       (g7715
                                                        (letrec ((x-cnd7717
                                                                  (< x 0)))
                                                          (if x-cnd7717
                                                            (- 0 x)
                                                            x))))
                                                g7715)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7718
                                                        (letrec ((x7721
                                                                  (char? c1)))
                                                          (assert x7721)))
                                                       (g7719
                                                        (letrec ((x7722
                                                                  (char? c2)))
                                                          (assert x7722)))
                                                       (g7720
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7723
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7723))))
                                                g7720)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7724
                                                        (letrec ((x7725
                                                                  (letrec ((x7726
                                                                            (letrec ((x7727
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7727))))
                                                                    (cdr
                                                                     x7726))))
                                                          (car x7725))))
                                                g7724)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7728 #f)) g7728)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7729
                                                        (letrec ((x7731
                                                                  (letrec ((x7732
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7732)))
                                                                 (x7730
                                                                  (gcd m n)))
                                                          (/ x7731 x7730))))
                                                g7729)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7733
                                                        (letrec ((x7735
                                                                  (number? x)))
                                                          (assert x7735)))
                                                       (g7734
                                                        (letrec ((x7736
                                                                  (<= x y)))
                                                          (not x7736))))
                                                g7734)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7737
                                                        (letrec ((x7741
                                                                  (list? l)))
                                                          (assert x7741)))
                                                       (g7738
                                                        (letrec ((x7742
                                                                  (number?
                                                                   index)))
                                                          (assert x7742)))
                                                       (g7739
                                                        (letrec ((x7743
                                                                  (letrec ((x7744
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7744))))
                                                          (assert x7743)))
                                                       (g7740
                                                        (letrec ((x-cnd7745
                                                                  (= index 0)))
                                                          (if x-cnd7745
                                                            (car l)
                                                            (letrec ((x7747
                                                                      (cdr l))
                                                                     (x7746
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7747
                                                               x7746))))))
                                                g7740)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7748
                                                        (letrec ((x-cnd7749
                                                                  (= b 0)))
                                                          (if x-cnd7749
                                                            a
                                                            (letrec ((x7750
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7750))))))
                                                g7748)))
                                           (lock
                                            (lambda (st)
                                              (letrec ((g7751 1)) g7751)))
                                           (unlock
                                            (lambda (st)
                                              (letrec ((g7752 0)) g7752)))
                                           (f
                                            (lambda (n st)
                                              (letrec ((g7753
                                                        (letrec ((x-cnd7754
                                                                  (> n 0)))
                                                          (if x-cnd7754
                                                            (lock st)
                                                            st))))
                                                g7753)))
                                           (g
                                            (lambda (n st)
                                              (letrec ((g7755
                                                        (letrec ((x-cnd7756
                                                                  (> n 0)))
                                                          (if x-cnd7756
                                                            (unlock st)
                                                            st))))
                                                g7755)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7757
                                                        (letrec ((x7758
                                                                  (f n 0)))
                                                          (g n x7758))))
                                                g7757))))
                                    (letrec ((g7759
                                              (letrec ((x7761
                                                        ((lambda (j7230
                                                                  k7231
                                                                  f7232)
                                                           (letrec ((g7762
                                                                     (lambda (g7229)
                                                                       (letrec ((g7763
                                                                                 (letrec ((x7764
                                                                                           (letrec ((x7765
                                                                                                     (integer?/c
                                                                                                      j7230
                                                                                                      k7231
                                                                                                      g7229)))
                                                                                             (f7232
                                                                                              x7765))))
                                                                                   ((lambda (g7236
                                                                                             g7237
                                                                                             g7238)
                                                                                      (letrec ((g7766
                                                                                                (letrec ((x-cnd7767
                                                                                                          ((lambda (v7235)
                                                                                                             (letrec ((g7768
                                                                                                                       (eq?
                                                                                                                        0
                                                                                                                        v7235)))
                                                                                                               g7768))
                                                                                                           g7238)))
                                                                                                  (if x-cnd7767
                                                                                                    g7238
                                                                                                    (blame
                                                                                                     g7236
                                                                                                     '(lambda (v7235)
                                                                                                        (eq?
                                                                                                         0
                                                                                                         v7235)))))))
                                                                                        g7766))
                                                                                    j7230
                                                                                    k7231
                                                                                    x7764))))
                                                                         g7763))))
                                                             g7762))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7760 (input)))
                                                (x7761 x7760))))
                                      g7759))))
                          g7252))))
              g7250)))
    g7249))
