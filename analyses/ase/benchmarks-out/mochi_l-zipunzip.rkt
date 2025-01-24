(letrec ((any? (lambda (v) (letrec ((g7247 #t)) g7247)))
         (meta (lambda (v) (letrec ((g7248 v)) g7248)))
         (member
          (lambda (v lst)
            (letrec ((g7249
                      (letrec ((g7250
                                (letrec ((x-e7251 lst))
                                  (match
                                   x-e7251
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7252 (eq? v v1)))
                                       (if x-cnd7252 #t (member v vs)))))))))
                        g7250)))
              g7249)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7253 (lambda (v) (letrec ((g7254 v)) g7254)))) g7253)))
         (nonzero?
          (lambda (v)
            (letrec ((g7255 (letrec ((x7256 (= v 0))) (not x7256)))) g7255))))
  (letrec ((g7257
            (letrec ((g7258
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7259 '())
                                 (g7260
                                  (letrec ((real/c
                                            (lambda (g7160 g7161 g7162)
                                              (letrec ((g7261
                                                        (letrec ((x-cnd7262
                                                                  (real?
                                                                   g7162)))
                                                          (if x-cnd7262
                                                            g7162
                                                            (blame
                                                             g7160
                                                             'real?)))))
                                                g7261)))
                                           (boolean?/c
                                            (lambda (g7163 g7164 g7165)
                                              (letrec ((g7263
                                                        (letrec ((x-cnd7264
                                                                  (boolean?
                                                                   g7165)))
                                                          (if x-cnd7264
                                                            g7165
                                                            (blame
                                                             g7163
                                                             'boolean?)))))
                                                g7263)))
                                           (number?/c
                                            (lambda (g7166 g7167 g7168)
                                              (letrec ((g7265
                                                        (letrec ((x-cnd7266
                                                                  (number?
                                                                   g7168)))
                                                          (if x-cnd7266
                                                            g7168
                                                            (blame
                                                             g7166
                                                             'number?)))))
                                                g7265)))
                                           (any/c
                                            (lambda (g7169 g7170 g7171)
                                              (letrec ((g7267
                                                        (letrec ((x-cnd7268
                                                                  ((lambda (v)
                                                                     (letrec ((g7269
                                                                               #t))
                                                                       g7269))
                                                                   g7171)))
                                                          (if x-cnd7268
                                                            g7171
                                                            (blame
                                                             g7169
                                                             '(lambda (v)
                                                                #t))))))
                                                g7267)))
                                           (any?/c
                                            (lambda (g7172 g7173 g7174)
                                              (letrec ((g7270
                                                        (letrec ((x-cnd7271
                                                                  ((lambda (v)
                                                                     (letrec ((g7272
                                                                               #t))
                                                                       g7272))
                                                                   g7174)))
                                                          (if x-cnd7271
                                                            g7174
                                                            (blame
                                                             g7172
                                                             '(lambda (v)
                                                                #t))))))
                                                g7270)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7175 g7176 g7177)
                                              (letrec ((g7273
                                                        (letrec ((x-cnd7274
                                                                  (pair?
                                                                   g7177)))
                                                          (if x-cnd7274
                                                            g7177
                                                            (blame
                                                             g7175
                                                             'pair?)))))
                                                g7273)))
                                           (pair?/c
                                            (lambda (g7178 g7179 g7180)
                                              (letrec ((g7275
                                                        (letrec ((x-cnd7276
                                                                  (pair?
                                                                   g7180)))
                                                          (if x-cnd7276
                                                            g7180
                                                            (blame
                                                             g7178
                                                             'pair?)))))
                                                g7275)))
                                           (integer?/c
                                            (lambda (g7181 g7182 g7183)
                                              (letrec ((g7277
                                                        (letrec ((x-cnd7278
                                                                  (integer?
                                                                   g7183)))
                                                          (if x-cnd7278
                                                            g7183
                                                            (blame
                                                             g7181
                                                             'integer?)))))
                                                g7277)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7279
                                                        (lambda (k j v)
                                                          (letrec ((g7280
                                                                    (letrec ((x-cnd7281
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7281
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7280))))
                                                g7279)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7282
                                                        (lambda (k j v)
                                                          (letrec ((g7283
                                                                    (letrec ((x-cnd7284
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7284
                                                                        '()
                                                                        (letrec ((x7288
                                                                                  (letrec ((x7289
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7289)))
                                                                                 (x7285
                                                                                  (letrec ((x7287
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7286
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7287
                                                                                     k
                                                                                     j
                                                                                     x7286))))
                                                                          (cons
                                                                           x7288
                                                                           x7285))))))
                                                            g7283))))
                                                g7282)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7290 #t)) g7290)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7291
                                                        (letrec ((x7292
                                                                  (= v 0)))
                                                          (not x7292))))
                                                g7291)))
                                           (nonzero?/c
                                            (lambda (g7184 g7185 g7186)
                                              (letrec ((g7293
                                                        (letrec ((x-cnd7294
                                                                  ((lambda (v)
                                                                     (letrec ((g7295
                                                                               (letrec ((x7296
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7296))))
                                                                       g7295))
                                                                   g7186)))
                                                          (if x-cnd7294
                                                            g7186
                                                            (blame
                                                             g7184
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7293)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7297 v)) g7297)))
                                           (+
                                            ((lambda (j7189 k7190 f7191)
                                               (letrec ((g7299
                                                         (lambda (g7187 g7188)
                                                           (letrec ((g7300
                                                                     (letrec ((x7301
                                                                               (letrec ((x7303
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7187))
                                                                                        (x7302
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7188)))
                                                                                 (f7191
                                                                                  x7303
                                                                                  x7302))))
                                                                       (number?/c
                                                                        j7189
                                                                        k7190
                                                                        x7301))))
                                                             g7300))))
                                                 g7299))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7298 (orig-+ a b)))
                                                 g7298))))
                                           (-
                                            ((lambda (j7194 k7195 f7196)
                                               (letrec ((g7305
                                                         (lambda (g7192 g7193)
                                                           (letrec ((g7306
                                                                     (letrec ((x7307
                                                                               (letrec ((x7309
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7192))
                                                                                        (x7308
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7193)))
                                                                                 (f7196
                                                                                  x7309
                                                                                  x7308))))
                                                                       (number?/c
                                                                        j7194
                                                                        k7195
                                                                        x7307))))
                                                             g7306))))
                                                 g7305))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7304 (orig-- a b)))
                                                 g7304))))
                                           (*
                                            ((lambda (j7199 k7200 f7201)
                                               (letrec ((g7311
                                                         (lambda (g7197 g7198)
                                                           (letrec ((g7312
                                                                     (letrec ((x7313
                                                                               (letrec ((x7315
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7197))
                                                                                        (x7314
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7198)))
                                                                                 (f7201
                                                                                  x7315
                                                                                  x7314))))
                                                                       (number?/c
                                                                        j7199
                                                                        k7200
                                                                        x7313))))
                                                             g7312))))
                                                 g7311))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7310 (orig-* a b)))
                                                 g7310))))
                                           (/
                                            ((lambda (j7204 k7205 f7206)
                                               (letrec ((g7317
                                                         (lambda (g7202 g7203)
                                                           (letrec ((g7318
                                                                     (letrec ((x7319
                                                                               (letrec ((x7321
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7202))
                                                                                        (x7320
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7203)))
                                                                                 (f7206
                                                                                  x7321
                                                                                  x7320))))
                                                                       (number?/c
                                                                        j7204
                                                                        k7205
                                                                        x7319))))
                                                             g7318))))
                                                 g7317))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7316 (orig-/ a b)))
                                                 g7316))))
                                           (car
                                            ((lambda (j7208 k7209 f7210)
                                               (letrec ((g7323
                                                         (lambda (g7207)
                                                           (letrec ((g7324
                                                                     (letrec ((x7325
                                                                               (letrec ((x7326
                                                                                         (pair?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7207)))
                                                                                 (f7210
                                                                                  x7326))))
                                                                       (any/c
                                                                        j7208
                                                                        k7209
                                                                        x7325))))
                                                             g7324))))
                                                 g7323))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7322 (orig-car p)))
                                                 g7322))))
                                           (cdr
                                            ((lambda (j7212 k7213 f7214)
                                               (letrec ((g7328
                                                         (lambda (g7211)
                                                           (letrec ((g7329
                                                                     (letrec ((x7330
                                                                               (letrec ((x7331
                                                                                         (pair?/c
                                                                                          j7212
                                                                                          k7213
                                                                                          g7211)))
                                                                                 (f7214
                                                                                  x7331))))
                                                                       (any/c
                                                                        j7212
                                                                        k7213
                                                                        x7330))))
                                                             g7329))))
                                                 g7328))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7327 (orig-cdr p)))
                                                 g7327))))
                                           (cons
                                            ((lambda (j7217 k7218 f7219)
                                               (letrec ((g7333
                                                         (lambda (g7215 g7216)
                                                           (letrec ((g7334
                                                                     (letrec ((x7335
                                                                               (letrec ((x7337
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7215))
                                                                                        (x7336
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7216)))
                                                                                 (f7219
                                                                                  x7337
                                                                                  x7336))))
                                                                       (pair?/c
                                                                        j7217
                                                                        k7218
                                                                        x7335))))
                                                             g7334))))
                                                 g7333))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7332 (cons a b)))
                                                 g7332))))
                                           (vector-ref
                                            ((lambda (j7221 k7222 f7223)
                                               (letrec ((g7339
                                                         (lambda (g7220)
                                                           (letrec ((g7340
                                                                     (letrec ((x7341
                                                                               (letrec ((x7342
                                                                                         (vector?/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7220)))
                                                                                 (f7223
                                                                                  x7342))))
                                                                       (integer?/c
                                                                        j7221
                                                                        k7222
                                                                        x7341))))
                                                             g7340))))
                                                 g7339))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7338
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7338))))
                                           (vector-set!
                                            ((lambda (j7226 k7227 f7228)
                                               (letrec ((g7344
                                                         (lambda (g7224 g7225)
                                                           (letrec ((g7345
                                                                     (letrec ((x7346
                                                                               (letrec ((x7348
                                                                                         (vector?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7224))
                                                                                        (x7347
                                                                                         (integer?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7225)))
                                                                                 (f7228
                                                                                  x7348
                                                                                  x7347))))
                                                                       (any/c
                                                                        j7226
                                                                        k7227
                                                                        x7346))))
                                                             g7345))))
                                                 g7344))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7343
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7343))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7349 #t)) g7349)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7350
                                                        (letrec ((x7351
                                                                  (letrec ((x7352
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7352))))
                                                          (cdr x7351))))
                                                g7350)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7353
                                                        (letrec ((x7356
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7356)))
                                                       (g7354
                                                        (letrec ((x7357
                                                                  (list? l)))
                                                          (assert x7357)))
                                                       (g7355
                                                        (letrec ((x-cnd7358
                                                                  (null? l)))
                                                          (if x-cnd7358
                                                            '()
                                                            (letrec ((x7361
                                                                      (letrec ((x7362
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7362)))
                                                                     (x7359
                                                                      (letrec ((x7360
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7360))))
                                                              (cons
                                                               x7361
                                                               x7359))))))
                                                g7355)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7363
                                                        (letrec ((x7364
                                                                  (car x)))
                                                          (cdr x7364))))
                                                g7363)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7365
                                                        (letrec ((x7366
                                                                  (letrec ((x7367
                                                                            (letrec ((x7368
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7368))))
                                                                    (cdr
                                                                     x7367))))
                                                          (car x7366))))
                                                g7365)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7369
                                                        (letrec ((x7370
                                                                  (letrec ((x7371
                                                                            (letrec ((x7372
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7372))))
                                                                    (car
                                                                     x7371))))
                                                          (cdr x7370))))
                                                g7369)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7373
                                                        (letrec ((x7376
                                                                  (string?
                                                                   filename)))
                                                          (assert x7376)))
                                                       (g7374
                                                        (letrec ((x7377
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7377)))
                                                       (g7375
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7378
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7379 res))
                                                            g7379))))
                                                g7375)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7380
                                                        (letrec ((x7381
                                                                  (letrec ((x7382
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7382))))
                                                          (car x7381))))
                                                g7380)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7383
                                                        (letrec ((x7384
                                                                  (letrec ((x7385
                                                                            (letrec ((x7386
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7386))))
                                                                    (car
                                                                     x7385))))
                                                          (cdr x7384))))
                                                g7383)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7387
                                                        (letrec ((x7389
                                                                  (list? l)))
                                                          (assert x7389)))
                                                       (g7388
                                                        (letrec ((x-cnd7390
                                                                  (null? l)))
                                                          (if x-cnd7390
                                                            #f
                                                            (letrec ((x-cnd7391
                                                                      (letrec ((x7392
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7392
                                                                         k))))
                                                              (if x-cnd7391
                                                                (car l)
                                                                (letrec ((x7393
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7393))))))))
                                                g7388)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7394
                                                        (letrec ((x7395
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7395))))
                                                g7394)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7396
                                                        (letrec ((x7398
                                                                  (list? l)))
                                                          (assert x7398)))
                                                       (g7397
                                                        (letrec ((x-cnd7399
                                                                  (null? l)))
                                                          (if x-cnd7399
                                                            ""
                                                            (letrec ((x7402
                                                                      (letrec ((x7403
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7403)))
                                                                     (x7400
                                                                      (letrec ((x7401
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7401))))
                                                              (string-append
                                                               x7402
                                                               x7400))))))
                                                g7397)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7404
                                                        (letrec ((x7407
                                                                  (char? c1)))
                                                          (assert x7407)))
                                                       (g7405
                                                        (letrec ((x7408
                                                                  (char? c2)))
                                                          (assert x7408)))
                                                       (g7406
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7409
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7409))))
                                                g7406)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7410
                                                        (letrec ((x7411
                                                                  (letrec ((x7412
                                                                            (letrec ((x7413
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7413))))
                                                                    (cdr
                                                                     x7412))))
                                                          (cdr x7411))))
                                                g7410)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7414
                                                        (letrec ((x7417
                                                                  (list? l)))
                                                          (assert x7417)))
                                                       (g7415
                                                        (letrec ((x7418
                                                                  (numer?)))
                                                          (assert x7418)))
                                                       (g7416
                                                        (letrec ((x-cnd7419
                                                                  (zero? k)))
                                                          (if x-cnd7419
                                                            x
                                                            (letrec ((x7421
                                                                      (cdr x))
                                                                     (x7420
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7421
                                                               x7420))))))
                                                g7416)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7422 '())) g7422)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7423
                                                        (letrec ((x-cnd7424
                                                                  (letrec ((x7425
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7425))))
                                                          (if x-cnd7424
                                                            (letrec ((x7426
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7426))
                                                            #f))))
                                                g7423)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7427
                                                        (letrec ((x7429
                                                                  (number? x)))
                                                          (assert x7429)))
                                                       (g7428
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7430
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7431
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7431)))))
                                                            g7430))))
                                                g7428)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7432
                                                        (letrec ((val7146
                                                                  (letrec ((x7433
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7433
                                                                     9))))
                                                          (letrec ((g7434
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7435
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7435
                                                                                   10))))
                                                                        (letrec ((g7436
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7437
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7437
                                                                                       32)))))
                                                                          g7436)))))
                                                            g7434))))
                                                g7432)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7438
                                                        (letrec ((x7439
                                                                  (letrec ((x7440
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7440))))
                                                          (cdr x7439))))
                                                g7438)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7441
                                                        (letrec ((x7443
                                                                  (number? x)))
                                                          (assert x7443)))
                                                       (g7442 (> x 0)))
                                                g7442)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7444 #f)) g7444)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7445
                                                        (letrec ((x7446
                                                                  (cdr x)))
                                                          (cdr x7446))))
                                                g7445)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7447
                                                        (letrec ((x7449
                                                                  (number? x)))
                                                          (assert x7449)))
                                                       (g7448
                                                        (letrec ((x-cnd7450
                                                                  (< x 0)))
                                                          (if x-cnd7450
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7448)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7451
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7452
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7454
                                                                                          (null?
                                                                                           a))
                                                                                         (x7453
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7454
                                                                                       x7453))))
                                                                        (letrec ((g7455
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7458
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7457
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7456
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7458
                                                                                                     x7457
                                                                                                     x7456))))
                                                                                      (letrec ((g7459
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7467
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7466
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7463
                                                                                                                      (letrec ((x7465
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7464
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7465
                                                                                                                         x7464)))
                                                                                                                     (x7460
                                                                                                                      (letrec ((x7462
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7461
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7462
                                                                                                                         x7461))))
                                                                                                              (and x7467
                                                                                                                   x7466
                                                                                                                   x7463
                                                                                                                   x7460))))
                                                                                                    (letrec ((g7468
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7487
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7486
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7469
                                                                                                                          (letrec ((x7483
                                                                                                                                    (letrec ((x7484
                                                                                                                                              (letrec ((x7485
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7485))))
                                                                                                                                      (x7484)))
                                                                                                                                   (x7470
                                                                                                                                    (letrec ((x7481
                                                                                                                                              (letrec ((x7482
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7482
                                                                                                                                                 n)))
                                                                                                                                             (x7471
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7472
                                                                                                                                                                    (letrec ((x7479
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7473
                                                                                                                                                                              (letrec ((x7476
                                                                                                                                                                                        (letrec ((x7478
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7477
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7478
                                                                                                                                                                                           x7477)))
                                                                                                                                                                                       (x7474
                                                                                                                                                                                        (letrec ((x7475
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7475))))
                                                                                                                                                                                (and x7476
                                                                                                                                                                                     x7474))))
                                                                                                                                                                      (or x7479
                                                                                                                                                                          x7473))))
                                                                                                                                                            g7472))))
                                                                                                                                                (letrec ((g7480
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7480))))
                                                                                                                                      (and x7481
                                                                                                                                           x7471))))
                                                                                                                            (let x7483 x7470))))
                                                                                                                  (and x7487
                                                                                                                       x7486
                                                                                                                       x7469)))))
                                                                                                      g7468)))))
                                                                                        g7459)))))
                                                                          g7455)))))
                                                            g7452))))
                                                g7451)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7488
                                                        (letrec ((x7489
                                                                  (letrec ((x7490
                                                                            (letrec ((x7491
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7491))))
                                                                    (car
                                                                     x7490))))
                                                          (cdr x7489))))
                                                g7488)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7492
                                                        (letrec ((x7493
                                                                  (letrec ((x7494
                                                                            (letrec ((x7495
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7495))))
                                                                    (car
                                                                     x7494))))
                                                          (car x7493))))
                                                g7492)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7496 (eq? x y)))
                                                g7496)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7497
                                                        (letrec ((x7499
                                                                  (number? x)))
                                                          (assert x7499)))
                                                       (g7498
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7500
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7501
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7501)))))
                                                            g7500))))
                                                g7498)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7502
                                                        (letrec ((x7505
                                                                  (string?
                                                                   filename)))
                                                          (assert x7505)))
                                                       (g7503
                                                        (letrec ((x7506
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7506)))
                                                       (g7504
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7507
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7508 res))
                                                            g7508))))
                                                g7504)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7509 (cons x '())))
                                                g7509)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7510
                                                        (letrec ((x7513
                                                                  (char? c1)))
                                                          (assert x7513)))
                                                       (g7511
                                                        (letrec ((x7514
                                                                  (char? c2)))
                                                          (assert x7514)))
                                                       (g7512
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7515
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7515))))
                                                g7512)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7516
                                                        (letrec ((x7517
                                                                  (letrec ((x7518
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7518))))
                                                          (cdr x7517))))
                                                g7516)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7519
                                                        (letrec ((x7520
                                                                  (letrec ((x7521
                                                                            (letrec ((x7522
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7522))))
                                                                    (car
                                                                     x7521))))
                                                          (cdr x7520))))
                                                g7519)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7523
                                                        (letrec ((x7524
                                                                  (letrec ((x7525
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7525))))
                                                          (car x7524))))
                                                g7523)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7526
                                                        (letrec ((x7527
                                                                  (letrec ((x7528
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7528))))
                                                          (car x7527))))
                                                g7526)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7529
                                                        (letrec ((x7532
                                                                  (char? c1)))
                                                          (assert x7532)))
                                                       (g7530
                                                        (letrec ((x7533
                                                                  (char? c2)))
                                                          (assert x7533)))
                                                       (g7531
                                                        (letrec ((x7534
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7534))))
                                                g7531)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7535
                                                        (letrec ((x7536
                                                                  (letrec ((x7537
                                                                            (letrec ((x7538
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7538))))
                                                                    (car
                                                                     x7537))))
                                                          (car x7536))))
                                                g7535)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7539
                                                        (letrec ((x7541
                                                                  (number? x)))
                                                          (assert x7541)))
                                                       (g7540 (< x 0)))
                                                g7540)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7542 (memq e l)))
                                                g7542)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7543
                                                        (letrec ((x7544
                                                                  (letrec ((x7545
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7545))))
                                                          (car x7544))))
                                                g7543)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7546 '())) g7546)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7547
                                                        (letrec ((x7549
                                                                  (list? l)))
                                                          (assert x7549)))
                                                       (g7548
                                                        (letrec ((x-cnd7550
                                                                  (null? l)))
                                                          (if x-cnd7550
                                                            '()
                                                            (letrec ((x7553
                                                                      (letrec ((x7554
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7554)))
                                                                     (x7551
                                                                      (letrec ((x7552
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7552))))
                                                              (append
                                                               x7553
                                                               x7551))))))
                                                g7548)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7555
                                                        (letrec ((x7556
                                                                  (letrec ((x7557
                                                                            (letrec ((x7558
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7558))))
                                                                    (car
                                                                     x7557))))
                                                          (car x7556))))
                                                g7555)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7559
                                                        (letrec ((x7560
                                                                  (letrec ((x7561
                                                                            (letrec ((x7562
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7562))))
                                                                    (cdr
                                                                     x7561))))
                                                          (cdr x7560))))
                                                g7559)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7563
                                                        (letrec ((x7565
                                                                  (number? x)))
                                                          (assert x7565)))
                                                       (g7564
                                                        (letrec ((x7566
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7566))))
                                                g7564)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7567
                                                        (letrec ((x7568
                                                                  (letrec ((x7569
                                                                            (letrec ((x7570
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7570))))
                                                                    (car
                                                                     x7569))))
                                                          (car x7568))))
                                                g7567)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7571
                                                        (letrec ((x7574
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7574)))
                                                       (g7572
                                                        (letrec ((x7575
                                                                  (list?
                                                                   args)))
                                                          (assert x7575)))
                                                       (g7573
                                                        (if cnd
                                                          (letrec ((g7576
                                                                    (proc)))
                                                            g7576)
                                                          (if cnd
                                                            (letrec ((g7577
                                                                      (letrec ((x7578
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7578))))
                                                              g7577)
                                                            (if cnd
                                                              (letrec ((g7579
                                                                        (letrec ((x7581
                                                                                  (car
                                                                                   args))
                                                                                 (x7580
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7581
                                                                           x7580))))
                                                                g7579)
                                                              (if cnd
                                                                (letrec ((g7582
                                                                          (letrec ((x7585
                                                                                    (car
                                                                                     args))
                                                                                   (x7584
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7583
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7585
                                                                             x7584
                                                                             x7583))))
                                                                  g7582)
                                                                (if cnd
                                                                  (letrec ((g7586
                                                                            (letrec ((x7590
                                                                                      (car
                                                                                       args))
                                                                                     (x7589
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7588
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7587
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7590
                                                                               x7589
                                                                               x7588
                                                                               x7587))))
                                                                    g7586)
                                                                  (if cnd
                                                                    (letrec ((g7591
                                                                              (letrec ((x7597
                                                                                        (car
                                                                                         args))
                                                                                       (x7596
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7595
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7594
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7592
                                                                                        (letrec ((x7593
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7593))))
                                                                                (proc
                                                                                 x7597
                                                                                 x7596
                                                                                 x7595
                                                                                 x7594
                                                                                 x7592))))
                                                                      g7591)
                                                                    (if cnd
                                                                      (letrec ((g7598
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
                                                                                             x7600))))
                                                                                  (proc
                                                                                   x7606
                                                                                   x7605
                                                                                   x7604
                                                                                   x7603
                                                                                   x7601
                                                                                   x7599))))
                                                                        g7598)
                                                                      (if cnd
                                                                        (letrec ((g7607
                                                                                  (letrec ((x7617
                                                                                            (car
                                                                                             args))
                                                                                           (x7616
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7615
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7614
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7612
                                                                                            (letrec ((x7613
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7613)))
                                                                                           (x7610
                                                                                            (letrec ((x7611
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7611)))
                                                                                           (x7608
                                                                                            (letrec ((x7609
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7609))))
                                                                                    (proc
                                                                                     x7617
                                                                                     x7616
                                                                                     x7615
                                                                                     x7614
                                                                                     x7612
                                                                                     x7610
                                                                                     x7608))))
                                                                          g7607)
                                                                        (letrec ((g7618
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7618)))))))))))
                                                g7573)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7619
                                                        (letrec ((x7621
                                                                  (list? l)))
                                                          (assert x7621)))
                                                       (g7620
                                                        (letrec ((x-cnd7622
                                                                  (null? l)))
                                                          (if x-cnd7622
                                                            #f
                                                            (letrec ((x-cnd7623
                                                                      (letrec ((x7624
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7624
                                                                         e))))
                                                              (if x-cnd7623
                                                                l
                                                                (letrec ((x7625
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7625))))))))
                                                g7620)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7626
                                                        (letrec ((x7627
                                                                  (letrec ((x7628
                                                                            (letrec ((x7629
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7629))))
                                                                    (cdr
                                                                     x7628))))
                                                          (cdr x7627))))
                                                g7626)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7630
                                                        (letrec ((x7631
                                                                  (letrec ((x7632
                                                                            (letrec ((x7633
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7633))))
                                                                    (cdr
                                                                     x7632))))
                                                          (car x7631))))
                                                g7630)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7634 (random 42)))
                                                g7634)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7635
                                                        (letrec ((x7637
                                                                  (number? x)))
                                                          (assert x7637)))
                                                       (g7636 (= x 0)))
                                                g7636)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7638
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7639
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7639))))
                                                g7638)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7640
                                                        (letrec ((x7641
                                                                  (cdr x)))
                                                          (car x7641))))
                                                g7640)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7642
                                                        (letrec ((val7156
                                                                  (letrec ((x7645
                                                                            (pair?
                                                                             l))
                                                                           (x7643
                                                                            (letrec ((x7644
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7644))))
                                                                    (and x7645
                                                                         x7643))))
                                                          (letrec ((g7646
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7646))))
                                                g7642)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7647
                                                        (letrec ((x7648
                                                                  (letrec ((x7649
                                                                            (letrec ((x7650
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7650))))
                                                                    (cdr
                                                                     x7649))))
                                                          (cdr x7648))))
                                                g7647)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7651
                                                        (letrec ((x-cnd7652
                                                                  (letrec ((x7653
                                                                            #\0))
                                                                    (char<=?
                                                                     x7653
                                                                     c))))
                                                          (if x-cnd7652
                                                            (letrec ((x7654
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7654))
                                                            #f))))
                                                g7651)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7655
                                                        (letrec ((x7657
                                                                  (list? l)))
                                                          (assert x7657)))
                                                       (g7656
                                                        (letrec ((x-cnd7658
                                                                  (null? l)))
                                                          (if x-cnd7658
                                                            #f
                                                            (letrec ((x-cnd7659
                                                                      (letrec ((x7660
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7660
                                                                         k))))
                                                              (if x-cnd7659
                                                                (car l)
                                                                (letrec ((x7661
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7661))))))))
                                                g7656)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7662 (if x #f #t)))
                                                g7662)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7663 (append l1 l2)))
                                                g7663)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7664
                                                        (letrec ((x7666
                                                                  (list? l)))
                                                          (assert x7666)))
                                                       (g7665
                                                        (letrec ((x-cnd7667
                                                                  (null? l)))
                                                          (if x-cnd7667
                                                            #f
                                                            (letrec ((x-cnd7668
                                                                      (letrec ((x7669
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7669
                                                                         e))))
                                                              (if x-cnd7668
                                                                l
                                                                (letrec ((x7670
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7670))))))))
                                                g7665)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7671
                                                        (letrec ((x7672
                                                                  (letrec ((x7673
                                                                            (letrec ((x7674
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7674))))
                                                                    (cdr
                                                                     x7673))))
                                                          (car x7672))))
                                                g7671)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7675
                                                        (letrec ((x7677
                                                                  (list? l)))
                                                          (assert x7677)))
                                                       (g7676
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7678
                                                                              (letrec ((x-cnd7679
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7679
                                                                                  0
                                                                                  (letrec ((x7680
                                                                                            (letrec ((x7681
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7681))))
                                                                                    (+
                                                                                     1
                                                                                     x7680))))))
                                                                      g7678))))
                                                          (letrec ((g7682
                                                                    (rec l)))
                                                            g7682))))
                                                g7676)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7683
                                                        (letrec ((x7686
                                                                  (char? c1)))
                                                          (assert x7686)))
                                                       (g7684
                                                        (letrec ((x7687
                                                                  (char? c2)))
                                                          (assert x7687)))
                                                       (g7685
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7688
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7688))))
                                                g7685)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7689
                                                        (letrec ((x7690
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7690))))
                                                g7689)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7691
                                                        (letrec ((x7692
                                                                  (letrec ((x7693
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7693))))
                                                          (cdr x7692))))
                                                g7691)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7694
                                                        (letrec ((x7696
                                                                  (list? l)))
                                                          (assert x7696)))
                                                       (g7695
                                                        (letrec ((x-cnd7697
                                                                  (null? l)))
                                                          (if x-cnd7697
                                                            #f
                                                            (letrec ((x-cnd7698
                                                                      (letrec ((x7699
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7699
                                                                         k))))
                                                              (if x-cnd7698
                                                                (car l)
                                                                (letrec ((x7700
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7700))))))))
                                                g7695)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7701
                                                        (letrec ((x7702
                                                                  (car x)))
                                                          (car x7702))))
                                                g7701)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7703
                                                        (letrec ((x7706
                                                                  (char? c1)))
                                                          (assert x7706)))
                                                       (g7704
                                                        (letrec ((x7707
                                                                  (char? c2)))
                                                          (assert x7707)))
                                                       (g7705
                                                        (letrec ((x7708
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7708))))
                                                g7705)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7709
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7710
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7710))))
                                                g7709)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7711
                                                        (letrec ((x7714
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7714)))
                                                       (g7712
                                                        (letrec ((x7715
                                                                  (list? l)))
                                                          (assert x7715)))
                                                       (g7713
                                                        (letrec ((x-cnd7716
                                                                  (null? l)))
                                                          (if x-cnd7716
                                                            #t
                                                            (letrec ((x-cnd7717
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7717
                                                                (letrec ((g7718
                                                                          (letrec ((x7720
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7720)))
                                                                         (g7719
                                                                          (letrec ((x7721
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7721))))
                                                                  g7719)
                                                                '()))))))
                                                g7713)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7722
                                                        (letrec ((x7724
                                                                  (number? x)))
                                                          (assert x7724)))
                                                       (g7723
                                                        (letrec ((x-cnd7725
                                                                  (< x 0)))
                                                          (if x-cnd7725
                                                            (- 0 x)
                                                            x))))
                                                g7723)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7726
                                                        (letrec ((x7729
                                                                  (char? c1)))
                                                          (assert x7729)))
                                                       (g7727
                                                        (letrec ((x7730
                                                                  (char? c2)))
                                                          (assert x7730)))
                                                       (g7728
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7731
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7731))))
                                                g7728)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7732
                                                        (letrec ((x7733
                                                                  (letrec ((x7734
                                                                            (letrec ((x7735
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7735))))
                                                                    (cdr
                                                                     x7734))))
                                                          (car x7733))))
                                                g7732)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7736 #f)) g7736)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7737
                                                        (letrec ((x7739
                                                                  (letrec ((x7740
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7740)))
                                                                 (x7738
                                                                  (gcd m n)))
                                                          (/ x7739 x7738))))
                                                g7737)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7741
                                                        (letrec ((x7743
                                                                  (number? x)))
                                                          (assert x7743)))
                                                       (g7742
                                                        (letrec ((x7744
                                                                  (<= x y)))
                                                          (not x7744))))
                                                g7742)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7745
                                                        (letrec ((x7749
                                                                  (list? l)))
                                                          (assert x7749)))
                                                       (g7746
                                                        (letrec ((x7750
                                                                  (number?
                                                                   index)))
                                                          (assert x7750)))
                                                       (g7747
                                                        (letrec ((x7751
                                                                  (letrec ((x7752
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7752))))
                                                          (assert x7751)))
                                                       (g7748
                                                        (letrec ((x-cnd7753
                                                                  (= index 0)))
                                                          (if x-cnd7753
                                                            (car l)
                                                            (letrec ((x7755
                                                                      (cdr l))
                                                                     (x7754
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7755
                                                               x7754))))))
                                                g7748)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7756
                                                        (letrec ((x-cnd7757
                                                                  (= b 0)))
                                                          (if x-cnd7757
                                                            a
                                                            (letrec ((x7758
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7758))))))
                                                g7756)))
                                           (f
                                            (lambda (g)
                                              (letrec ((g7759
                                                        (letrec ((x7763 (x y))
                                                                 (x7760
                                                                  (letrec ((x7762
                                                                            (+
                                                                             x
                                                                             1))
                                                                           (x7761
                                                                            (+
                                                                             y
                                                                             1)))
                                                                    (g
                                                                     x7762
                                                                     x7761))))
                                                          (λ x7763 x7760))))
                                                g7759)))
                                           (unzip
                                            (lambda (x k)
                                              (letrec ((g7764
                                                        (letrec ((x-cnd7765
                                                                  (= x 0)))
                                                          (if x-cnd7765
                                                            (k 0 0)
                                                            (letrec ((x7767
                                                                      (- x 1))
                                                                     (x7766
                                                                      (f k)))
                                                              (unzip
                                                               x7767
                                                               x7766))))))
                                                g7764)))
                                           (zip
                                            (lambda (x y)
                                              (letrec ((g7768
                                                        (letrec ((x-cnd7769
                                                                  (= x 0)))
                                                          (if x-cnd7769
                                                            (letrec ((x-cnd7770
                                                                      (= y 0)))
                                                              (if x-cnd7770
                                                                0
                                                                'fail))
                                                            (letrec ((x-cnd7771
                                                                      (= y 0)))
                                                              (if x-cnd7771
                                                                'fail
                                                                (letrec ((x7772
                                                                          (letrec ((x7774
                                                                                    (-
                                                                                     x
                                                                                     1))
                                                                                   (x7773
                                                                                    (-
                                                                                     y
                                                                                     1)))
                                                                            (zip
                                                                             x7774
                                                                             x7773))))
                                                                  (+
                                                                   1
                                                                   x7772))))))))
                                                g7768)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7775 (unzip n zip)))
                                                g7775))))
                                    (letrec ((g7776
                                              (letrec ((x7779
                                                        ((lambda (j7230
                                                                  k7231
                                                                  f7232)
                                                           (letrec ((g7780
                                                                     (lambda (g7229)
                                                                       (letrec ((g7781
                                                                                 (letrec ((x7782
                                                                                           (letrec ((x7783
                                                                                                     ((lambda (j7240
                                                                                                               k7241
                                                                                                               f7242)
                                                                                                        (letrec ((g7784
                                                                                                                  (lambda (g7238
                                                                                                                           g7239)
                                                                                                                    (letrec ((g7785
                                                                                                                              (letrec ((x7786
                                                                                                                                        (letrec ((x7788
                                                                                                                                                  (integer?/c
                                                                                                                                                   j7240
                                                                                                                                                   k7241
                                                                                                                                                   g7238))
                                                                                                                                                 (x7787
                                                                                                                                                  (integer?/c
                                                                                                                                                   j7240
                                                                                                                                                   k7241
                                                                                                                                                   g7239)))
                                                                                                                                          (f7242
                                                                                                                                           x7788
                                                                                                                                           x7787))))
                                                                                                                                (integer?/c
                                                                                                                                 j7240
                                                                                                                                 k7241
                                                                                                                                 x7786))))
                                                                                                                      g7785))))
                                                                                                          g7784))
                                                                                                      j7230
                                                                                                      k7231
                                                                                                      g7229)))
                                                                                             (f7232
                                                                                              x7783))))
                                                                                   ((lambda (j7235
                                                                                             k7236
                                                                                             f7237)
                                                                                      (letrec ((g7789
                                                                                                (lambda (g7233
                                                                                                         g7234)
                                                                                                  (letrec ((g7790
                                                                                                            (letrec ((x7791
                                                                                                                      (letrec ((x7793
                                                                                                                                (integer?/c
                                                                                                                                 j7235
                                                                                                                                 k7236
                                                                                                                                 g7233))
                                                                                                                               (x7792
                                                                                                                                (integer?/c
                                                                                                                                 j7235
                                                                                                                                 k7236
                                                                                                                                 g7234)))
                                                                                                                        (f7237
                                                                                                                         x7793
                                                                                                                         x7792))))
                                                                                                              (integer?/c
                                                                                                               j7235
                                                                                                               k7236
                                                                                                               x7791))))
                                                                                                    g7790))))
                                                                                        g7789))
                                                                                    j7230
                                                                                    k7231
                                                                                    x7782))))
                                                                         g7781))))
                                                             g7780))
                                                         'module
                                                         'importer
                                                         f))
                                                       (x7778 (input)))
                                                (x7779 x7778)))
                                             (g7777
                                              (letrec ((x7795
                                                        ((lambda (j7244
                                                                  k7245
                                                                  f7246)
                                                           (letrec ((g7796
                                                                     (lambda (g7243)
                                                                       (letrec ((g7797
                                                                                 (letrec ((x7798
                                                                                           (letrec ((x7799
                                                                                                     (integer?/c
                                                                                                      j7244
                                                                                                      k7245
                                                                                                      g7243)))
                                                                                             (f7246
                                                                                              x7799))))
                                                                                   (integer?/c
                                                                                    j7244
                                                                                    k7245
                                                                                    x7798))))
                                                                         g7797))))
                                                             g7796))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7794 (input)))
                                                (x7795 x7794))))
                                      g7777))))
                          g7260))))
              g7258)))
    g7257))
