(letrec ((any? (lambda (v) (letrec ((g7249 #t)) g7249)))
         (meta (lambda (v) (letrec ((g7250 v)) g7250)))
         (member
          (lambda (v lst)
            (letrec ((g7251
                      (letrec ((g7252
                                (letrec ((x-e7253 lst))
                                  (match
                                   x-e7253
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7254 (eq? v v1)))
                                       (if x-cnd7254 #t (member v vs)))))))))
                        g7252)))
              g7251)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7255 (lambda (v) (letrec ((g7256 v)) g7256)))) g7255)))
         (nonzero?
          (lambda (v)
            (letrec ((g7257 (letrec ((x7258 (= v 0))) (not x7258)))) g7257))))
  (letrec ((g7259
            (letrec ((g7260
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7261 '())
                                 (g7262
                                  (letrec ((real/c
                                            (lambda (g7160 g7161 g7162)
                                              (letrec ((g7263
                                                        (letrec ((x-cnd7264
                                                                  (real?
                                                                   g7162)))
                                                          (if x-cnd7264
                                                            g7162
                                                            (blame
                                                             g7160
                                                             'real?)))))
                                                g7263)))
                                           (boolean?/c
                                            (lambda (g7163 g7164 g7165)
                                              (letrec ((g7265
                                                        (letrec ((x-cnd7266
                                                                  (boolean?
                                                                   g7165)))
                                                          (if x-cnd7266
                                                            g7165
                                                            (blame
                                                             g7163
                                                             'boolean?)))))
                                                g7265)))
                                           (number?/c
                                            (lambda (g7166 g7167 g7168)
                                              (letrec ((g7267
                                                        (letrec ((x-cnd7268
                                                                  (number?
                                                                   g7168)))
                                                          (if x-cnd7268
                                                            g7168
                                                            (blame
                                                             g7166
                                                             'number?)))))
                                                g7267)))
                                           (any/c
                                            (lambda (g7169 g7170 g7171)
                                              (letrec ((g7269
                                                        (letrec ((x-cnd7270
                                                                  ((lambda (v)
                                                                     (letrec ((g7271
                                                                               #t))
                                                                       g7271))
                                                                   g7171)))
                                                          (if x-cnd7270
                                                            g7171
                                                            (blame
                                                             g7169
                                                             '(lambda (v)
                                                                #t))))))
                                                g7269)))
                                           (any?/c
                                            (lambda (g7172 g7173 g7174)
                                              (letrec ((g7272
                                                        (letrec ((x-cnd7273
                                                                  ((lambda (v)
                                                                     (letrec ((g7274
                                                                               #t))
                                                                       g7274))
                                                                   g7174)))
                                                          (if x-cnd7273
                                                            g7174
                                                            (blame
                                                             g7172
                                                             '(lambda (v)
                                                                #t))))))
                                                g7272)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7175 g7176 g7177)
                                              (letrec ((g7275
                                                        (letrec ((x-cnd7276
                                                                  (pair?
                                                                   g7177)))
                                                          (if x-cnd7276
                                                            g7177
                                                            (blame
                                                             g7175
                                                             'pair?)))))
                                                g7275)))
                                           (pair?/c
                                            (lambda (g7178 g7179 g7180)
                                              (letrec ((g7277
                                                        (letrec ((x-cnd7278
                                                                  (pair?
                                                                   g7180)))
                                                          (if x-cnd7278
                                                            g7180
                                                            (blame
                                                             g7178
                                                             'pair?)))))
                                                g7277)))
                                           (integer?
                                            (lambda (g7181 g7182 g7183)
                                              (letrec ((g7279
                                                        (letrec ((x-cnd7280
                                                                  (integer?
                                                                   g7183)))
                                                          (if x-cnd7280
                                                            g7183
                                                            (blame
                                                             g7181
                                                             'integer?)))))
                                                g7279)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7281
                                                        (lambda (k j v)
                                                          (letrec ((g7282
                                                                    (letrec ((x-cnd7283
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7283
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7282))))
                                                g7281)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7284
                                                        (lambda (k j v)
                                                          (letrec ((g7285
                                                                    (letrec ((x-cnd7286
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7286
                                                                        '()
                                                                        (letrec ((x7290
                                                                                  (letrec ((x7291
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7291)))
                                                                                 (x7287
                                                                                  (letrec ((x7289
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7288
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7289
                                                                                     k
                                                                                     j
                                                                                     x7288))))
                                                                          (cons
                                                                           x7290
                                                                           x7287))))))
                                                            g7285))))
                                                g7284)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7292 #t)) g7292)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7293
                                                        (letrec ((x7294
                                                                  (= v 0)))
                                                          (not x7294))))
                                                g7293)))
                                           (nonzero?/c
                                            (lambda (g7184 g7185 g7186)
                                              (letrec ((g7295
                                                        (letrec ((x-cnd7296
                                                                  ((lambda (v)
                                                                     (letrec ((g7297
                                                                               (letrec ((x7298
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7298))))
                                                                       g7297))
                                                                   g7186)))
                                                          (if x-cnd7296
                                                            g7186
                                                            (blame
                                                             g7184
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7295)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7299 v)) g7299)))
                                           (+
                                            ((lambda (j7189 k7190 f7191)
                                               (letrec ((g7301
                                                         (lambda (g7187 g7188)
                                                           (letrec ((g7302
                                                                     (letrec ((x7303
                                                                               (letrec ((x7305
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7187))
                                                                                        (x7304
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7188)))
                                                                                 (f7191
                                                                                  x7305
                                                                                  x7304))))
                                                                       (number?/c
                                                                        j7189
                                                                        k7190
                                                                        x7303))))
                                                             g7302))))
                                                 g7301))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7300 (orig-+ a b)))
                                                 g7300))))
                                           (-
                                            ((lambda (j7194 k7195 f7196)
                                               (letrec ((g7307
                                                         (lambda (g7192 g7193)
                                                           (letrec ((g7308
                                                                     (letrec ((x7309
                                                                               (letrec ((x7311
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7192))
                                                                                        (x7310
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7193)))
                                                                                 (f7196
                                                                                  x7311
                                                                                  x7310))))
                                                                       (number?/c
                                                                        j7194
                                                                        k7195
                                                                        x7309))))
                                                             g7308))))
                                                 g7307))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7306 (orig-- a b)))
                                                 g7306))))
                                           (*
                                            ((lambda (j7199 k7200 f7201)
                                               (letrec ((g7313
                                                         (lambda (g7197 g7198)
                                                           (letrec ((g7314
                                                                     (letrec ((x7315
                                                                               (letrec ((x7317
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7197))
                                                                                        (x7316
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7198)))
                                                                                 (f7201
                                                                                  x7317
                                                                                  x7316))))
                                                                       (number?/c
                                                                        j7199
                                                                        k7200
                                                                        x7315))))
                                                             g7314))))
                                                 g7313))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7312 (orig-* a b)))
                                                 g7312))))
                                           (/
                                            ((lambda (j7204 k7205 f7206)
                                               (letrec ((g7319
                                                         (lambda (g7202 g7203)
                                                           (letrec ((g7320
                                                                     (letrec ((x7321
                                                                               (letrec ((x7323
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7202))
                                                                                        (x7322
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7203)))
                                                                                 (f7206
                                                                                  x7323
                                                                                  x7322))))
                                                                       (number?/c
                                                                        j7204
                                                                        k7205
                                                                        x7321))))
                                                             g7320))))
                                                 g7319))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7318 (orig-/ a b)))
                                                 g7318))))
                                           (car
                                            ((lambda (j7208 k7209 f7210)
                                               (letrec ((g7325
                                                         (lambda (g7207)
                                                           (letrec ((g7326
                                                                     (letrec ((x7327
                                                                               (letrec ((x7328
                                                                                         (pair?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7207)))
                                                                                 (f7210
                                                                                  x7328))))
                                                                       (any/c
                                                                        j7208
                                                                        k7209
                                                                        x7327))))
                                                             g7326))))
                                                 g7325))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7324 (orig-car p)))
                                                 g7324))))
                                           (cdr
                                            ((lambda (j7212 k7213 f7214)
                                               (letrec ((g7330
                                                         (lambda (g7211)
                                                           (letrec ((g7331
                                                                     (letrec ((x7332
                                                                               (letrec ((x7333
                                                                                         (pair?/c
                                                                                          j7212
                                                                                          k7213
                                                                                          g7211)))
                                                                                 (f7214
                                                                                  x7333))))
                                                                       (any/c
                                                                        j7212
                                                                        k7213
                                                                        x7332))))
                                                             g7331))))
                                                 g7330))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7329 (orig-cdr p)))
                                                 g7329))))
                                           (cons
                                            ((lambda (j7217 k7218 f7219)
                                               (letrec ((g7335
                                                         (lambda (g7215 g7216)
                                                           (letrec ((g7336
                                                                     (letrec ((x7337
                                                                               (letrec ((x7339
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7215))
                                                                                        (x7338
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7216)))
                                                                                 (f7219
                                                                                  x7339
                                                                                  x7338))))
                                                                       (pair?/c
                                                                        j7217
                                                                        k7218
                                                                        x7337))))
                                                             g7336))))
                                                 g7335))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7334 (cons a b)))
                                                 g7334))))
                                           (vector-ref
                                            ((lambda (j7221 k7222 f7223)
                                               (letrec ((g7341
                                                         (lambda (g7220)
                                                           (letrec ((g7342
                                                                     (letrec ((x7343
                                                                               (letrec ((x7344
                                                                                         (vector?/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7220)))
                                                                                 (f7223
                                                                                  x7344))))
                                                                       (integer?/c
                                                                        j7221
                                                                        k7222
                                                                        x7343))))
                                                             g7342))))
                                                 g7341))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7340
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7340))))
                                           (vector-set!
                                            ((lambda (j7226 k7227 f7228)
                                               (letrec ((g7346
                                                         (lambda (g7224 g7225)
                                                           (letrec ((g7347
                                                                     (letrec ((x7348
                                                                               (letrec ((x7350
                                                                                         (vector?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7224))
                                                                                        (x7349
                                                                                         (integer?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7225)))
                                                                                 (f7228
                                                                                  x7350
                                                                                  x7349))))
                                                                       (any/c
                                                                        j7226
                                                                        k7227
                                                                        x7348))))
                                                             g7347))))
                                                 g7346))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7345
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7345))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7351 #t)) g7351)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7352
                                                        (letrec ((x7353
                                                                  (letrec ((x7354
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7354))))
                                                          (cdr x7353))))
                                                g7352)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7355
                                                        (letrec ((x7358
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7358)))
                                                       (g7356
                                                        (letrec ((x7359
                                                                  (list? l)))
                                                          (assert x7359)))
                                                       (g7357
                                                        (letrec ((x-cnd7360
                                                                  (null? l)))
                                                          (if x-cnd7360
                                                            '()
                                                            (letrec ((x7363
                                                                      (letrec ((x7364
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7364)))
                                                                     (x7361
                                                                      (letrec ((x7362
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7362))))
                                                              (cons
                                                               x7363
                                                               x7361))))))
                                                g7357)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7365
                                                        (letrec ((x7366
                                                                  (car x)))
                                                          (cdr x7366))))
                                                g7365)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7367
                                                        (letrec ((x7368
                                                                  (letrec ((x7369
                                                                            (letrec ((x7370
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7370))))
                                                                    (cdr
                                                                     x7369))))
                                                          (car x7368))))
                                                g7367)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7371
                                                        (letrec ((x7372
                                                                  (letrec ((x7373
                                                                            (letrec ((x7374
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7374))))
                                                                    (car
                                                                     x7373))))
                                                          (cdr x7372))))
                                                g7371)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7375
                                                        (letrec ((x7378
                                                                  (string?
                                                                   filename)))
                                                          (assert x7378)))
                                                       (g7376
                                                        (letrec ((x7379
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7379)))
                                                       (g7377
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7380
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7381 res))
                                                            g7381))))
                                                g7377)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7382
                                                        (letrec ((x7383
                                                                  (letrec ((x7384
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7384))))
                                                          (car x7383))))
                                                g7382)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7385
                                                        (letrec ((x7386
                                                                  (letrec ((x7387
                                                                            (letrec ((x7388
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7388))))
                                                                    (car
                                                                     x7387))))
                                                          (cdr x7386))))
                                                g7385)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7389
                                                        (letrec ((x7391
                                                                  (list? l)))
                                                          (assert x7391)))
                                                       (g7390
                                                        (letrec ((x-cnd7392
                                                                  (null? l)))
                                                          (if x-cnd7392
                                                            #f
                                                            (letrec ((x-cnd7393
                                                                      (letrec ((x7394
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7394
                                                                         k))))
                                                              (if x-cnd7393
                                                                (car l)
                                                                (letrec ((x7395
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7395))))))))
                                                g7390)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7396
                                                        (letrec ((x7397
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7397))))
                                                g7396)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7398
                                                        (letrec ((x7400
                                                                  (list? l)))
                                                          (assert x7400)))
                                                       (g7399
                                                        (letrec ((x-cnd7401
                                                                  (null? l)))
                                                          (if x-cnd7401
                                                            ""
                                                            (letrec ((x7404
                                                                      (letrec ((x7405
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7405)))
                                                                     (x7402
                                                                      (letrec ((x7403
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7403))))
                                                              (string-append
                                                               x7404
                                                               x7402))))))
                                                g7399)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7406
                                                        (letrec ((x7409
                                                                  (char? c1)))
                                                          (assert x7409)))
                                                       (g7407
                                                        (letrec ((x7410
                                                                  (char? c2)))
                                                          (assert x7410)))
                                                       (g7408
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7411
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7411))))
                                                g7408)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7412
                                                        (letrec ((x7413
                                                                  (letrec ((x7414
                                                                            (letrec ((x7415
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7415))))
                                                                    (cdr
                                                                     x7414))))
                                                          (cdr x7413))))
                                                g7412)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7416
                                                        (letrec ((x7419
                                                                  (list? l)))
                                                          (assert x7419)))
                                                       (g7417
                                                        (letrec ((x7420
                                                                  (numer?)))
                                                          (assert x7420)))
                                                       (g7418
                                                        (letrec ((x-cnd7421
                                                                  (zero? k)))
                                                          (if x-cnd7421
                                                            x
                                                            (letrec ((x7423
                                                                      (cdr x))
                                                                     (x7422
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7423
                                                               x7422))))))
                                                g7418)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7424 '())) g7424)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7425
                                                        (letrec ((x-cnd7426
                                                                  (letrec ((x7427
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7427))))
                                                          (if x-cnd7426
                                                            (letrec ((x7428
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7428))
                                                            #f))))
                                                g7425)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7429
                                                        (letrec ((x7431
                                                                  (number? x)))
                                                          (assert x7431)))
                                                       (g7430
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7432
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7433
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7433)))))
                                                            g7432))))
                                                g7430)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7434
                                                        (letrec ((val7146
                                                                  (letrec ((x7435
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7435
                                                                     9))))
                                                          (letrec ((g7436
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7437
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7437
                                                                                   10))))
                                                                        (letrec ((g7438
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7439
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7439
                                                                                       32)))))
                                                                          g7438)))))
                                                            g7436))))
                                                g7434)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7440
                                                        (letrec ((x7441
                                                                  (letrec ((x7442
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7442))))
                                                          (cdr x7441))))
                                                g7440)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7443
                                                        (letrec ((x7445
                                                                  (number? x)))
                                                          (assert x7445)))
                                                       (g7444 (> x 0)))
                                                g7444)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7446 #f)) g7446)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7447
                                                        (letrec ((x7448
                                                                  (cdr x)))
                                                          (cdr x7448))))
                                                g7447)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7449
                                                        (letrec ((x7451
                                                                  (number? x)))
                                                          (assert x7451)))
                                                       (g7450
                                                        (letrec ((x-cnd7452
                                                                  (< x 0)))
                                                          (if x-cnd7452
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7450)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7453
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7454
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7456
                                                                                          (null?
                                                                                           a))
                                                                                         (x7455
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7456
                                                                                       x7455))))
                                                                        (letrec ((g7457
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7460
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7459
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7458
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7460
                                                                                                     x7459
                                                                                                     x7458))))
                                                                                      (letrec ((g7461
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7469
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7468
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7465
                                                                                                                      (letrec ((x7467
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7466
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7467
                                                                                                                         x7466)))
                                                                                                                     (x7462
                                                                                                                      (letrec ((x7464
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7463
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7464
                                                                                                                         x7463))))
                                                                                                              (and x7469
                                                                                                                   x7468
                                                                                                                   x7465
                                                                                                                   x7462))))
                                                                                                    (letrec ((g7470
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7489
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7488
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7471
                                                                                                                          (letrec ((x7485
                                                                                                                                    (letrec ((x7486
                                                                                                                                              (letrec ((x7487
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7487))))
                                                                                                                                      (x7486)))
                                                                                                                                   (x7472
                                                                                                                                    (letrec ((x7483
                                                                                                                                              (letrec ((x7484
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7484
                                                                                                                                                 n)))
                                                                                                                                             (x7473
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7474
                                                                                                                                                                    (letrec ((x7481
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7475
                                                                                                                                                                              (letrec ((x7478
                                                                                                                                                                                        (letrec ((x7480
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7479
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7480
                                                                                                                                                                                           x7479)))
                                                                                                                                                                                       (x7476
                                                                                                                                                                                        (letrec ((x7477
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7477))))
                                                                                                                                                                                (and x7478
                                                                                                                                                                                     x7476))))
                                                                                                                                                                      (or x7481
                                                                                                                                                                          x7475))))
                                                                                                                                                            g7474))))
                                                                                                                                                (letrec ((g7482
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7482))))
                                                                                                                                      (and x7483
                                                                                                                                           x7473))))
                                                                                                                            (let x7485 x7472))))
                                                                                                                  (and x7489
                                                                                                                       x7488
                                                                                                                       x7471)))))
                                                                                                      g7470)))))
                                                                                        g7461)))))
                                                                          g7457)))))
                                                            g7454))))
                                                g7453)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7490
                                                        (letrec ((x7491
                                                                  (letrec ((x7492
                                                                            (letrec ((x7493
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7493))))
                                                                    (car
                                                                     x7492))))
                                                          (cdr x7491))))
                                                g7490)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7494
                                                        (letrec ((x7495
                                                                  (letrec ((x7496
                                                                            (letrec ((x7497
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7497))))
                                                                    (car
                                                                     x7496))))
                                                          (car x7495))))
                                                g7494)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7498 (eq? x y)))
                                                g7498)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7499
                                                        (letrec ((x7501
                                                                  (number? x)))
                                                          (assert x7501)))
                                                       (g7500
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7502
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7503
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7503)))))
                                                            g7502))))
                                                g7500)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7504
                                                        (letrec ((x7507
                                                                  (string?
                                                                   filename)))
                                                          (assert x7507)))
                                                       (g7505
                                                        (letrec ((x7508
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7508)))
                                                       (g7506
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7509
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7510 res))
                                                            g7510))))
                                                g7506)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7511 (cons x '())))
                                                g7511)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7512
                                                        (letrec ((x7515
                                                                  (char? c1)))
                                                          (assert x7515)))
                                                       (g7513
                                                        (letrec ((x7516
                                                                  (char? c2)))
                                                          (assert x7516)))
                                                       (g7514
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7517
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7517))))
                                                g7514)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7518
                                                        (letrec ((x7519
                                                                  (letrec ((x7520
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7520))))
                                                          (cdr x7519))))
                                                g7518)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7521
                                                        (letrec ((x7522
                                                                  (letrec ((x7523
                                                                            (letrec ((x7524
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7524))))
                                                                    (car
                                                                     x7523))))
                                                          (cdr x7522))))
                                                g7521)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7525
                                                        (letrec ((x7526
                                                                  (letrec ((x7527
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7527))))
                                                          (car x7526))))
                                                g7525)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7528
                                                        (letrec ((x7529
                                                                  (letrec ((x7530
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7530))))
                                                          (car x7529))))
                                                g7528)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7531
                                                        (letrec ((x7534
                                                                  (char? c1)))
                                                          (assert x7534)))
                                                       (g7532
                                                        (letrec ((x7535
                                                                  (char? c2)))
                                                          (assert x7535)))
                                                       (g7533
                                                        (letrec ((x7536
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7536))))
                                                g7533)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7537
                                                        (letrec ((x7538
                                                                  (letrec ((x7539
                                                                            (letrec ((x7540
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7540))))
                                                                    (car
                                                                     x7539))))
                                                          (car x7538))))
                                                g7537)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7541
                                                        (letrec ((x7543
                                                                  (number? x)))
                                                          (assert x7543)))
                                                       (g7542 (< x 0)))
                                                g7542)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7544 (memq e l)))
                                                g7544)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7545
                                                        (letrec ((x7546
                                                                  (letrec ((x7547
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7547))))
                                                          (car x7546))))
                                                g7545)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7548 '())) g7548)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7549
                                                        (letrec ((x7551
                                                                  (list? l)))
                                                          (assert x7551)))
                                                       (g7550
                                                        (letrec ((x-cnd7552
                                                                  (null? l)))
                                                          (if x-cnd7552
                                                            '()
                                                            (letrec ((x7555
                                                                      (letrec ((x7556
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7556)))
                                                                     (x7553
                                                                      (letrec ((x7554
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7554))))
                                                              (append
                                                               x7555
                                                               x7553))))))
                                                g7550)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7557
                                                        (letrec ((x7558
                                                                  (letrec ((x7559
                                                                            (letrec ((x7560
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7560))))
                                                                    (car
                                                                     x7559))))
                                                          (car x7558))))
                                                g7557)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7561
                                                        (letrec ((x7562
                                                                  (letrec ((x7563
                                                                            (letrec ((x7564
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7564))))
                                                                    (cdr
                                                                     x7563))))
                                                          (cdr x7562))))
                                                g7561)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7565
                                                        (letrec ((x7567
                                                                  (number? x)))
                                                          (assert x7567)))
                                                       (g7566
                                                        (letrec ((x7568
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7568))))
                                                g7566)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7569
                                                        (letrec ((x7570
                                                                  (letrec ((x7571
                                                                            (letrec ((x7572
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7572))))
                                                                    (car
                                                                     x7571))))
                                                          (car x7570))))
                                                g7569)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7573
                                                        (letrec ((x7576
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7576)))
                                                       (g7574
                                                        (letrec ((x7577
                                                                  (list?
                                                                   args)))
                                                          (assert x7577)))
                                                       (g7575
                                                        (if cnd
                                                          (letrec ((g7578
                                                                    (proc)))
                                                            g7578)
                                                          (if cnd
                                                            (letrec ((g7579
                                                                      (letrec ((x7580
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7580))))
                                                              g7579)
                                                            (if cnd
                                                              (letrec ((g7581
                                                                        (letrec ((x7583
                                                                                  (car
                                                                                   args))
                                                                                 (x7582
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7583
                                                                           x7582))))
                                                                g7581)
                                                              (if cnd
                                                                (letrec ((g7584
                                                                          (letrec ((x7587
                                                                                    (car
                                                                                     args))
                                                                                   (x7586
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7585
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7587
                                                                             x7586
                                                                             x7585))))
                                                                  g7584)
                                                                (if cnd
                                                                  (letrec ((g7588
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
                                                                                       args)))
                                                                              (proc
                                                                               x7592
                                                                               x7591
                                                                               x7590
                                                                               x7589))))
                                                                    g7588)
                                                                  (if cnd
                                                                    (letrec ((g7593
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
                                                                                           x7595))))
                                                                                (proc
                                                                                 x7599
                                                                                 x7598
                                                                                 x7597
                                                                                 x7596
                                                                                 x7594))))
                                                                      g7593)
                                                                    (if cnd
                                                                      (letrec ((g7600
                                                                                (letrec ((x7608
                                                                                          (car
                                                                                           args))
                                                                                         (x7607
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7606
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7605
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7603
                                                                                          (letrec ((x7604
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7604)))
                                                                                         (x7601
                                                                                          (letrec ((x7602
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7602))))
                                                                                  (proc
                                                                                   x7608
                                                                                   x7607
                                                                                   x7606
                                                                                   x7605
                                                                                   x7603
                                                                                   x7601))))
                                                                        g7600)
                                                                      (if cnd
                                                                        (letrec ((g7609
                                                                                  (letrec ((x7619
                                                                                            (car
                                                                                             args))
                                                                                           (x7618
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7617
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7616
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7614
                                                                                            (letrec ((x7615
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7615)))
                                                                                           (x7612
                                                                                            (letrec ((x7613
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7613)))
                                                                                           (x7610
                                                                                            (letrec ((x7611
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7611))))
                                                                                    (proc
                                                                                     x7619
                                                                                     x7618
                                                                                     x7617
                                                                                     x7616
                                                                                     x7614
                                                                                     x7612
                                                                                     x7610))))
                                                                          g7609)
                                                                        (letrec ((g7620
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7620)))))))))))
                                                g7575)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7621
                                                        (letrec ((x7623
                                                                  (list? l)))
                                                          (assert x7623)))
                                                       (g7622
                                                        (letrec ((x-cnd7624
                                                                  (null? l)))
                                                          (if x-cnd7624
                                                            #f
                                                            (letrec ((x-cnd7625
                                                                      (letrec ((x7626
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7626
                                                                         e))))
                                                              (if x-cnd7625
                                                                l
                                                                (letrec ((x7627
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7627))))))))
                                                g7622)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7628
                                                        (letrec ((x7629
                                                                  (letrec ((x7630
                                                                            (letrec ((x7631
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7631))))
                                                                    (cdr
                                                                     x7630))))
                                                          (cdr x7629))))
                                                g7628)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7632
                                                        (letrec ((x7633
                                                                  (letrec ((x7634
                                                                            (letrec ((x7635
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7635))))
                                                                    (cdr
                                                                     x7634))))
                                                          (car x7633))))
                                                g7632)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7636 (random 42)))
                                                g7636)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7637
                                                        (letrec ((x7639
                                                                  (number? x)))
                                                          (assert x7639)))
                                                       (g7638 (= x 0)))
                                                g7638)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7640
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7641
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7641))))
                                                g7640)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7642
                                                        (letrec ((x7643
                                                                  (cdr x)))
                                                          (car x7643))))
                                                g7642)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7644
                                                        (letrec ((val7156
                                                                  (letrec ((x7647
                                                                            (pair?
                                                                             l))
                                                                           (x7645
                                                                            (letrec ((x7646
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7646))))
                                                                    (and x7647
                                                                         x7645))))
                                                          (letrec ((g7648
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7648))))
                                                g7644)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7649
                                                        (letrec ((x7650
                                                                  (letrec ((x7651
                                                                            (letrec ((x7652
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7652))))
                                                                    (cdr
                                                                     x7651))))
                                                          (cdr x7650))))
                                                g7649)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7653
                                                        (letrec ((x-cnd7654
                                                                  (letrec ((x7655
                                                                            #\0))
                                                                    (char<=?
                                                                     x7655
                                                                     c))))
                                                          (if x-cnd7654
                                                            (letrec ((x7656
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7656))
                                                            #f))))
                                                g7653)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7657
                                                        (letrec ((x7659
                                                                  (list? l)))
                                                          (assert x7659)))
                                                       (g7658
                                                        (letrec ((x-cnd7660
                                                                  (null? l)))
                                                          (if x-cnd7660
                                                            #f
                                                            (letrec ((x-cnd7661
                                                                      (letrec ((x7662
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7662
                                                                         k))))
                                                              (if x-cnd7661
                                                                (car l)
                                                                (letrec ((x7663
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7663))))))))
                                                g7658)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7664 (if x #f #t)))
                                                g7664)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7665 (append l1 l2)))
                                                g7665)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7666
                                                        (letrec ((x7668
                                                                  (list? l)))
                                                          (assert x7668)))
                                                       (g7667
                                                        (letrec ((x-cnd7669
                                                                  (null? l)))
                                                          (if x-cnd7669
                                                            #f
                                                            (letrec ((x-cnd7670
                                                                      (letrec ((x7671
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7671
                                                                         e))))
                                                              (if x-cnd7670
                                                                l
                                                                (letrec ((x7672
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7672))))))))
                                                g7667)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7673
                                                        (letrec ((x7674
                                                                  (letrec ((x7675
                                                                            (letrec ((x7676
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7676))))
                                                                    (cdr
                                                                     x7675))))
                                                          (car x7674))))
                                                g7673)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7677
                                                        (letrec ((x7679
                                                                  (list? l)))
                                                          (assert x7679)))
                                                       (g7678
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7680
                                                                              (letrec ((x-cnd7681
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7681
                                                                                  0
                                                                                  (letrec ((x7682
                                                                                            (letrec ((x7683
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7683))))
                                                                                    (+
                                                                                     1
                                                                                     x7682))))))
                                                                      g7680))))
                                                          (letrec ((g7684
                                                                    (rec l)))
                                                            g7684))))
                                                g7678)))
                                           (char-ci<=?
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
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7690
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7690))))
                                                g7687)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7691
                                                        (letrec ((x7692
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7692))))
                                                g7691)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7693
                                                        (letrec ((x7694
                                                                  (letrec ((x7695
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7695))))
                                                          (cdr x7694))))
                                                g7693)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7696
                                                        (letrec ((x7698
                                                                  (list? l)))
                                                          (assert x7698)))
                                                       (g7697
                                                        (letrec ((x-cnd7699
                                                                  (null? l)))
                                                          (if x-cnd7699
                                                            #f
                                                            (letrec ((x-cnd7700
                                                                      (letrec ((x7701
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7701
                                                                         k))))
                                                              (if x-cnd7700
                                                                (car l)
                                                                (letrec ((x7702
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7702))))))))
                                                g7697)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7703
                                                        (letrec ((x7704
                                                                  (car x)))
                                                          (car x7704))))
                                                g7703)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7705
                                                        (letrec ((x7708
                                                                  (char? c1)))
                                                          (assert x7708)))
                                                       (g7706
                                                        (letrec ((x7709
                                                                  (char? c2)))
                                                          (assert x7709)))
                                                       (g7707
                                                        (letrec ((x7710
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7710))))
                                                g7707)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7711
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7712
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7712))))
                                                g7711)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7713
                                                        (letrec ((x7716
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7716)))
                                                       (g7714
                                                        (letrec ((x7717
                                                                  (list? l)))
                                                          (assert x7717)))
                                                       (g7715
                                                        (letrec ((x-cnd7718
                                                                  (null? l)))
                                                          (if x-cnd7718
                                                            #t
                                                            (letrec ((x-cnd7719
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7719
                                                                (letrec ((g7720
                                                                          (letrec ((x7722
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7722)))
                                                                         (g7721
                                                                          (letrec ((x7723
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7723))))
                                                                  g7721)
                                                                '()))))))
                                                g7715)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7724
                                                        (letrec ((x7726
                                                                  (number? x)))
                                                          (assert x7726)))
                                                       (g7725
                                                        (letrec ((x-cnd7727
                                                                  (< x 0)))
                                                          (if x-cnd7727
                                                            (- 0 x)
                                                            x))))
                                                g7725)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7728
                                                        (letrec ((x7731
                                                                  (char? c1)))
                                                          (assert x7731)))
                                                       (g7729
                                                        (letrec ((x7732
                                                                  (char? c2)))
                                                          (assert x7732)))
                                                       (g7730
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7733
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7733))))
                                                g7730)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7734
                                                        (letrec ((x7735
                                                                  (letrec ((x7736
                                                                            (letrec ((x7737
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7737))))
                                                                    (cdr
                                                                     x7736))))
                                                          (car x7735))))
                                                g7734)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7738 #f)) g7738)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7739
                                                        (letrec ((x7741
                                                                  (letrec ((x7742
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7742)))
                                                                 (x7740
                                                                  (gcd m n)))
                                                          (/ x7741 x7740))))
                                                g7739)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7743
                                                        (letrec ((x7745
                                                                  (number? x)))
                                                          (assert x7745)))
                                                       (g7744
                                                        (letrec ((x7746
                                                                  (<= x y)))
                                                          (not x7746))))
                                                g7744)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7747
                                                        (letrec ((x7751
                                                                  (list? l)))
                                                          (assert x7751)))
                                                       (g7748
                                                        (letrec ((x7752
                                                                  (number?
                                                                   index)))
                                                          (assert x7752)))
                                                       (g7749
                                                        (letrec ((x7753
                                                                  (letrec ((x7754
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7754))))
                                                          (assert x7753)))
                                                       (g7750
                                                        (letrec ((x-cnd7755
                                                                  (= index 0)))
                                                          (if x-cnd7755
                                                            (car l)
                                                            (letrec ((x7757
                                                                      (cdr l))
                                                                     (x7756
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7757
                                                               x7756))))))
                                                g7750)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7758
                                                        (letrec ((x-cnd7759
                                                                  (= b 0)))
                                                          (if x-cnd7759
                                                            a
                                                            (letrec ((x7760
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7760))))))
                                                g7758)))
                                           (foldr
                                            (lambda (f z xs)
                                              (letrec ((g7761
                                                        (letrec ((x-cnd7762
                                                                  (empty? xs)))
                                                          (if x-cnd7762
                                                            z
                                                            (letrec ((x7765
                                                                      (car xs))
                                                                     (x7763
                                                                      (letrec ((x7764
                                                                                (cdr
                                                                                 xs)))
                                                                        (foldr
                                                                         f
                                                                         z
                                                                         x7764))))
                                                              (f
                                                               x7765
                                                               x7763))))))
                                                g7761)))
                                           (map
                                            (lambda (f xs)
                                              (letrec ((g7766
                                                        (letrec ((x7767
                                                                  (letrec ((x7770
                                                                            (x
                                                                             ys))
                                                                           (x7768
                                                                            (letrec ((x7769
                                                                                      (f
                                                                                       x)))
                                                                              (cons
                                                                               x7769
                                                                               ys))))
                                                                    (λ x7770
                                                                      x7768))))
                                                          (foldr
                                                           x7767
                                                           empty
                                                           xs))))
                                                g7766))))
                                    (letrec ((g7771
                                              (letrec ((x7776
                                                        ((lambda (j7232
                                                                  k7233
                                                                  f7234)
                                                           (letrec ((g7777
                                                                     (lambda (g7229
                                                                              g7230
                                                                              g7231)
                                                                       (letrec ((g7778
                                                                                 (letrec ((x7779
                                                                                           (letrec ((x7783
                                                                                                     ((lambda (j7237
                                                                                                               k7238
                                                                                                               f7239)
                                                                                                        (letrec ((g7784
                                                                                                                  (lambda (g7235
                                                                                                                           g7236)
                                                                                                                    (letrec ((g7785
                                                                                                                              (letrec ((x7786
                                                                                                                                        (letrec ((x7788
                                                                                                                                                  (any/c
                                                                                                                                                   j7237
                                                                                                                                                   k7238
                                                                                                                                                   g7235))
                                                                                                                                                 (x7787
                                                                                                                                                  (any/c
                                                                                                                                                   j7237
                                                                                                                                                   k7238
                                                                                                                                                   g7236)))
                                                                                                                                          (f7239
                                                                                                                                           x7788
                                                                                                                                           x7787))))
                                                                                                                                (any/c
                                                                                                                                 j7237
                                                                                                                                 k7238
                                                                                                                                 x7786))))
                                                                                                                      g7785))))
                                                                                                          g7784))
                                                                                                      j7232
                                                                                                      k7233
                                                                                                      g7229))
                                                                                                    (x7782
                                                                                                     (any/c
                                                                                                      j7232
                                                                                                      k7233
                                                                                                      g7230))
                                                                                                    (x7780
                                                                                                     (letrec ((x7781
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7781
                                                                                                        j7232
                                                                                                        k7233
                                                                                                        g7231))))
                                                                                             (f7234
                                                                                              x7783
                                                                                              x7782
                                                                                              x7780))))
                                                                                   (any/c
                                                                                    j7232
                                                                                    k7233
                                                                                    x7779))))
                                                                         g7778))))
                                                             g7777))
                                                         'module
                                                         'importer
                                                         foldr))
                                                       (x7775 (input))
                                                       (x7774 (input))
                                                       (x7773 (input)))
                                                (x7776 x7775 x7774 x7773)))
                                             (g7772
                                              (letrec ((x7791
                                                        ((lambda (j7242
                                                                  k7243
                                                                  f7244)
                                                           (letrec ((g7792
                                                                     (lambda (g7240
                                                                              g7241)
                                                                       (letrec ((g7793
                                                                                 (letrec ((x7802
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7794
                                                                                           (letrec ((x7797
                                                                                                     ((lambda (j7246
                                                                                                               k7247
                                                                                                               f7248)
                                                                                                        (letrec ((g7798
                                                                                                                  (lambda (g7245)
                                                                                                                    (letrec ((g7799
                                                                                                                              (letrec ((x7800
                                                                                                                                        (letrec ((x7801
                                                                                                                                                  (any/c
                                                                                                                                                   j7246
                                                                                                                                                   k7247
                                                                                                                                                   g7245)))
                                                                                                                                          (f7248
                                                                                                                                           x7801))))
                                                                                                                                (any/c
                                                                                                                                 j7246
                                                                                                                                 k7247
                                                                                                                                 x7800))))
                                                                                                                      g7799))))
                                                                                                          g7798))
                                                                                                      j7242
                                                                                                      k7243
                                                                                                      g7240))
                                                                                                    (x7795
                                                                                                     (letrec ((x7796
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7796
                                                                                                        j7242
                                                                                                        k7243
                                                                                                        g7241))))
                                                                                             (f7244
                                                                                              x7797
                                                                                              x7795))))
                                                                                   (x7802
                                                                                    j7242
                                                                                    k7243
                                                                                    x7794))))
                                                                         g7793))))
                                                             g7792))
                                                         'module
                                                         'importer
                                                         map))
                                                       (x7790 (input))
                                                       (x7789 (input)))
                                                (x7791 x7790 x7789))))
                                      g7772))))
                          g7262))))
              g7260)))
    g7259))
