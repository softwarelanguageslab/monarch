(letrec ((any? (lambda (v) (letrec ((g7238 #t)) g7238)))
         (meta (lambda (v) (letrec ((g7239 v)) g7239)))
         (member
          (lambda (v lst)
            (letrec ((g7240
                      (letrec ((g7241
                                (letrec ((x-e7242 lst))
                                  (match
                                   x-e7242
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7243 (eq? v v1)))
                                       (if x-cnd7243 #t (member v vs)))))))))
                        g7241)))
              g7240)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7244 (lambda (v) (letrec ((g7245 v)) g7245)))) g7244)))
         (nonzero?
          (lambda (v)
            (letrec ((g7246 (letrec ((x7247 (= v 0))) (not x7247)))) g7246))))
  (letrec ((g7248
            (letrec ((g7249
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7250 '())
                                 (g7251
                                  (letrec ((real/c
                                            (lambda (g7160 g7161 g7162)
                                              (letrec ((g7252
                                                        (letrec ((x-cnd7253
                                                                  (real?
                                                                   g7162)))
                                                          (if x-cnd7253
                                                            g7162
                                                            (blame
                                                             g7160
                                                             'real?)))))
                                                g7252)))
                                           (boolean?/c
                                            (lambda (g7163 g7164 g7165)
                                              (letrec ((g7254
                                                        (letrec ((x-cnd7255
                                                                  (boolean?
                                                                   g7165)))
                                                          (if x-cnd7255
                                                            g7165
                                                            (blame
                                                             g7163
                                                             'boolean?)))))
                                                g7254)))
                                           (number?/c
                                            (lambda (g7166 g7167 g7168)
                                              (letrec ((g7256
                                                        (letrec ((x-cnd7257
                                                                  (number?
                                                                   g7168)))
                                                          (if x-cnd7257
                                                            g7168
                                                            (blame
                                                             g7166
                                                             'number?)))))
                                                g7256)))
                                           (any/c
                                            (lambda (g7169 g7170 g7171)
                                              (letrec ((g7258
                                                        (letrec ((x-cnd7259
                                                                  ((lambda (v)
                                                                     (letrec ((g7260
                                                                               #t))
                                                                       g7260))
                                                                   g7171)))
                                                          (if x-cnd7259
                                                            g7171
                                                            (blame
                                                             g7169
                                                             '(lambda (v)
                                                                #t))))))
                                                g7258)))
                                           (any?/c
                                            (lambda (g7172 g7173 g7174)
                                              (letrec ((g7261
                                                        (letrec ((x-cnd7262
                                                                  ((lambda (v)
                                                                     (letrec ((g7263
                                                                               #t))
                                                                       g7263))
                                                                   g7174)))
                                                          (if x-cnd7262
                                                            g7174
                                                            (blame
                                                             g7172
                                                             '(lambda (v)
                                                                #t))))))
                                                g7261)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7175 g7176 g7177)
                                              (letrec ((g7264
                                                        (letrec ((x-cnd7265
                                                                  (pair?
                                                                   g7177)))
                                                          (if x-cnd7265
                                                            g7177
                                                            (blame
                                                             g7175
                                                             'pair?)))))
                                                g7264)))
                                           (pair?/c
                                            (lambda (g7178 g7179 g7180)
                                              (letrec ((g7266
                                                        (letrec ((x-cnd7267
                                                                  (pair?
                                                                   g7180)))
                                                          (if x-cnd7267
                                                            g7180
                                                            (blame
                                                             g7178
                                                             'pair?)))))
                                                g7266)))
                                           (integer?
                                            (lambda (g7181 g7182 g7183)
                                              (letrec ((g7268
                                                        (letrec ((x-cnd7269
                                                                  (integer?
                                                                   g7183)))
                                                          (if x-cnd7269
                                                            g7183
                                                            (blame
                                                             g7181
                                                             'integer?)))))
                                                g7268)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7270
                                                        (lambda (k j v)
                                                          (letrec ((g7271
                                                                    (letrec ((x-cnd7272
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7272
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7271))))
                                                g7270)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7273
                                                        (lambda (k j v)
                                                          (letrec ((g7274
                                                                    (letrec ((x-cnd7275
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7275
                                                                        '()
                                                                        (letrec ((x7279
                                                                                  (letrec ((x7280
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7280)))
                                                                                 (x7276
                                                                                  (letrec ((x7278
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7277
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7278
                                                                                     k
                                                                                     j
                                                                                     x7277))))
                                                                          (cons
                                                                           x7279
                                                                           x7276))))))
                                                            g7274))))
                                                g7273)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7281 #t)) g7281)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7282
                                                        (letrec ((x7283
                                                                  (= v 0)))
                                                          (not x7283))))
                                                g7282)))
                                           (nonzero?/c
                                            (lambda (g7184 g7185 g7186)
                                              (letrec ((g7284
                                                        (letrec ((x-cnd7285
                                                                  ((lambda (v)
                                                                     (letrec ((g7286
                                                                               (letrec ((x7287
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7287))))
                                                                       g7286))
                                                                   g7186)))
                                                          (if x-cnd7285
                                                            g7186
                                                            (blame
                                                             g7184
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7284)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7288 v)) g7288)))
                                           (+
                                            ((lambda (j7189 k7190 f7191)
                                               (letrec ((g7290
                                                         (lambda (g7187 g7188)
                                                           (letrec ((g7291
                                                                     (letrec ((x7292
                                                                               (letrec ((x7294
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7187))
                                                                                        (x7293
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7188)))
                                                                                 (f7191
                                                                                  x7294
                                                                                  x7293))))
                                                                       (number?/c
                                                                        j7189
                                                                        k7190
                                                                        x7292))))
                                                             g7291))))
                                                 g7290))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7289 (orig-+ a b)))
                                                 g7289))))
                                           (-
                                            ((lambda (j7194 k7195 f7196)
                                               (letrec ((g7296
                                                         (lambda (g7192 g7193)
                                                           (letrec ((g7297
                                                                     (letrec ((x7298
                                                                               (letrec ((x7300
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7192))
                                                                                        (x7299
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7193)))
                                                                                 (f7196
                                                                                  x7300
                                                                                  x7299))))
                                                                       (number?/c
                                                                        j7194
                                                                        k7195
                                                                        x7298))))
                                                             g7297))))
                                                 g7296))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7295 (orig-- a b)))
                                                 g7295))))
                                           (*
                                            ((lambda (j7199 k7200 f7201)
                                               (letrec ((g7302
                                                         (lambda (g7197 g7198)
                                                           (letrec ((g7303
                                                                     (letrec ((x7304
                                                                               (letrec ((x7306
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7197))
                                                                                        (x7305
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7198)))
                                                                                 (f7201
                                                                                  x7306
                                                                                  x7305))))
                                                                       (number?/c
                                                                        j7199
                                                                        k7200
                                                                        x7304))))
                                                             g7303))))
                                                 g7302))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7301 (orig-* a b)))
                                                 g7301))))
                                           (/
                                            ((lambda (j7204 k7205 f7206)
                                               (letrec ((g7308
                                                         (lambda (g7202 g7203)
                                                           (letrec ((g7309
                                                                     (letrec ((x7310
                                                                               (letrec ((x7312
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7202))
                                                                                        (x7311
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7203)))
                                                                                 (f7206
                                                                                  x7312
                                                                                  x7311))))
                                                                       (number?/c
                                                                        j7204
                                                                        k7205
                                                                        x7310))))
                                                             g7309))))
                                                 g7308))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7307 (orig-/ a b)))
                                                 g7307))))
                                           (car
                                            ((lambda (j7208 k7209 f7210)
                                               (letrec ((g7314
                                                         (lambda (g7207)
                                                           (letrec ((g7315
                                                                     (letrec ((x7316
                                                                               (letrec ((x7317
                                                                                         (pair?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7207)))
                                                                                 (f7210
                                                                                  x7317))))
                                                                       (any/c
                                                                        j7208
                                                                        k7209
                                                                        x7316))))
                                                             g7315))))
                                                 g7314))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7313 (orig-car p)))
                                                 g7313))))
                                           (cdr
                                            ((lambda (j7212 k7213 f7214)
                                               (letrec ((g7319
                                                         (lambda (g7211)
                                                           (letrec ((g7320
                                                                     (letrec ((x7321
                                                                               (letrec ((x7322
                                                                                         (pair?/c
                                                                                          j7212
                                                                                          k7213
                                                                                          g7211)))
                                                                                 (f7214
                                                                                  x7322))))
                                                                       (any/c
                                                                        j7212
                                                                        k7213
                                                                        x7321))))
                                                             g7320))))
                                                 g7319))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7318 (orig-cdr p)))
                                                 g7318))))
                                           (cons
                                            ((lambda (j7217 k7218 f7219)
                                               (letrec ((g7324
                                                         (lambda (g7215 g7216)
                                                           (letrec ((g7325
                                                                     (letrec ((x7326
                                                                               (letrec ((x7328
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7215))
                                                                                        (x7327
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7216)))
                                                                                 (f7219
                                                                                  x7328
                                                                                  x7327))))
                                                                       (pair?/c
                                                                        j7217
                                                                        k7218
                                                                        x7326))))
                                                             g7325))))
                                                 g7324))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7323 (cons a b)))
                                                 g7323))))
                                           (vector-ref
                                            ((lambda (j7221 k7222 f7223)
                                               (letrec ((g7330
                                                         (lambda (g7220)
                                                           (letrec ((g7331
                                                                     (letrec ((x7332
                                                                               (letrec ((x7333
                                                                                         (vector?/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7220)))
                                                                                 (f7223
                                                                                  x7333))))
                                                                       (integer?/c
                                                                        j7221
                                                                        k7222
                                                                        x7332))))
                                                             g7331))))
                                                 g7330))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7329
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7329))))
                                           (vector-set!
                                            ((lambda (j7226 k7227 f7228)
                                               (letrec ((g7335
                                                         (lambda (g7224 g7225)
                                                           (letrec ((g7336
                                                                     (letrec ((x7337
                                                                               (letrec ((x7339
                                                                                         (vector?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7224))
                                                                                        (x7338
                                                                                         (integer?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7225)))
                                                                                 (f7228
                                                                                  x7339
                                                                                  x7338))))
                                                                       (any/c
                                                                        j7226
                                                                        k7227
                                                                        x7337))))
                                                             g7336))))
                                                 g7335))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7334
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7334))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7340 #t)) g7340)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7341
                                                        (letrec ((x7342
                                                                  (letrec ((x7343
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7343))))
                                                          (cdr x7342))))
                                                g7341)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7344
                                                        (letrec ((x7347
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7347)))
                                                       (g7345
                                                        (letrec ((x7348
                                                                  (list? l)))
                                                          (assert x7348)))
                                                       (g7346
                                                        (letrec ((x-cnd7349
                                                                  (null? l)))
                                                          (if x-cnd7349
                                                            '()
                                                            (letrec ((x7352
                                                                      (letrec ((x7353
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7353)))
                                                                     (x7350
                                                                      (letrec ((x7351
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7351))))
                                                              (cons
                                                               x7352
                                                               x7350))))))
                                                g7346)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7354
                                                        (letrec ((x7355
                                                                  (car x)))
                                                          (cdr x7355))))
                                                g7354)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7356
                                                        (letrec ((x7357
                                                                  (letrec ((x7358
                                                                            (letrec ((x7359
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7359))))
                                                                    (cdr
                                                                     x7358))))
                                                          (car x7357))))
                                                g7356)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7360
                                                        (letrec ((x7361
                                                                  (letrec ((x7362
                                                                            (letrec ((x7363
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7363))))
                                                                    (car
                                                                     x7362))))
                                                          (cdr x7361))))
                                                g7360)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7364
                                                        (letrec ((x7367
                                                                  (string?
                                                                   filename)))
                                                          (assert x7367)))
                                                       (g7365
                                                        (letrec ((x7368
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7368)))
                                                       (g7366
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7369
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7370 res))
                                                            g7370))))
                                                g7366)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7371
                                                        (letrec ((x7372
                                                                  (letrec ((x7373
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7373))))
                                                          (car x7372))))
                                                g7371)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7374
                                                        (letrec ((x7375
                                                                  (letrec ((x7376
                                                                            (letrec ((x7377
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7377))))
                                                                    (car
                                                                     x7376))))
                                                          (cdr x7375))))
                                                g7374)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7378
                                                        (letrec ((x7380
                                                                  (list? l)))
                                                          (assert x7380)))
                                                       (g7379
                                                        (letrec ((x-cnd7381
                                                                  (null? l)))
                                                          (if x-cnd7381
                                                            #f
                                                            (letrec ((x-cnd7382
                                                                      (letrec ((x7383
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7383
                                                                         k))))
                                                              (if x-cnd7382
                                                                (car l)
                                                                (letrec ((x7384
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7384))))))))
                                                g7379)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7385
                                                        (letrec ((x7386
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7386))))
                                                g7385)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7387
                                                        (letrec ((x7389
                                                                  (list? l)))
                                                          (assert x7389)))
                                                       (g7388
                                                        (letrec ((x-cnd7390
                                                                  (null? l)))
                                                          (if x-cnd7390
                                                            ""
                                                            (letrec ((x7393
                                                                      (letrec ((x7394
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7394)))
                                                                     (x7391
                                                                      (letrec ((x7392
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7392))))
                                                              (string-append
                                                               x7393
                                                               x7391))))))
                                                g7388)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7395
                                                        (letrec ((x7398
                                                                  (char? c1)))
                                                          (assert x7398)))
                                                       (g7396
                                                        (letrec ((x7399
                                                                  (char? c2)))
                                                          (assert x7399)))
                                                       (g7397
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7400
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7400))))
                                                g7397)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7401
                                                        (letrec ((x7402
                                                                  (letrec ((x7403
                                                                            (letrec ((x7404
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7404))))
                                                                    (cdr
                                                                     x7403))))
                                                          (cdr x7402))))
                                                g7401)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7405
                                                        (letrec ((x7408
                                                                  (list? l)))
                                                          (assert x7408)))
                                                       (g7406
                                                        (letrec ((x7409
                                                                  (numer?)))
                                                          (assert x7409)))
                                                       (g7407
                                                        (letrec ((x-cnd7410
                                                                  (zero? k)))
                                                          (if x-cnd7410
                                                            x
                                                            (letrec ((x7412
                                                                      (cdr x))
                                                                     (x7411
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7412
                                                               x7411))))))
                                                g7407)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7413 '())) g7413)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7414
                                                        (letrec ((x-cnd7415
                                                                  (letrec ((x7416
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7416))))
                                                          (if x-cnd7415
                                                            (letrec ((x7417
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7417))
                                                            #f))))
                                                g7414)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7418
                                                        (letrec ((x7420
                                                                  (number? x)))
                                                          (assert x7420)))
                                                       (g7419
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7421
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7422
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7422)))))
                                                            g7421))))
                                                g7419)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7423
                                                        (letrec ((val7146
                                                                  (letrec ((x7424
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7424
                                                                     9))))
                                                          (letrec ((g7425
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7426
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7426
                                                                                   10))))
                                                                        (letrec ((g7427
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7428
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7428
                                                                                       32)))))
                                                                          g7427)))))
                                                            g7425))))
                                                g7423)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7429
                                                        (letrec ((x7430
                                                                  (letrec ((x7431
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7431))))
                                                          (cdr x7430))))
                                                g7429)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7432
                                                        (letrec ((x7434
                                                                  (number? x)))
                                                          (assert x7434)))
                                                       (g7433 (> x 0)))
                                                g7433)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7435 #f)) g7435)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7436
                                                        (letrec ((x7437
                                                                  (cdr x)))
                                                          (cdr x7437))))
                                                g7436)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7438
                                                        (letrec ((x7440
                                                                  (number? x)))
                                                          (assert x7440)))
                                                       (g7439
                                                        (letrec ((x-cnd7441
                                                                  (< x 0)))
                                                          (if x-cnd7441
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7439)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7442
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7443
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7445
                                                                                          (null?
                                                                                           a))
                                                                                         (x7444
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7445
                                                                                       x7444))))
                                                                        (letrec ((g7446
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7449
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7448
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7447
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7449
                                                                                                     x7448
                                                                                                     x7447))))
                                                                                      (letrec ((g7450
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7458
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7457
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7454
                                                                                                                      (letrec ((x7456
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7455
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7456
                                                                                                                         x7455)))
                                                                                                                     (x7451
                                                                                                                      (letrec ((x7453
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7452
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7453
                                                                                                                         x7452))))
                                                                                                              (and x7458
                                                                                                                   x7457
                                                                                                                   x7454
                                                                                                                   x7451))))
                                                                                                    (letrec ((g7459
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7478
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7477
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7460
                                                                                                                          (letrec ((x7474
                                                                                                                                    (letrec ((x7475
                                                                                                                                              (letrec ((x7476
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7476))))
                                                                                                                                      (x7475)))
                                                                                                                                   (x7461
                                                                                                                                    (letrec ((x7472
                                                                                                                                              (letrec ((x7473
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7473
                                                                                                                                                 n)))
                                                                                                                                             (x7462
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7463
                                                                                                                                                                    (letrec ((x7470
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7464
                                                                                                                                                                              (letrec ((x7467
                                                                                                                                                                                        (letrec ((x7469
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7468
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7469
                                                                                                                                                                                           x7468)))
                                                                                                                                                                                       (x7465
                                                                                                                                                                                        (letrec ((x7466
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7466))))
                                                                                                                                                                                (and x7467
                                                                                                                                                                                     x7465))))
                                                                                                                                                                      (or x7470
                                                                                                                                                                          x7464))))
                                                                                                                                                            g7463))))
                                                                                                                                                (letrec ((g7471
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7471))))
                                                                                                                                      (and x7472
                                                                                                                                           x7462))))
                                                                                                                            (let x7474 x7461))))
                                                                                                                  (and x7478
                                                                                                                       x7477
                                                                                                                       x7460)))))
                                                                                                      g7459)))))
                                                                                        g7450)))))
                                                                          g7446)))))
                                                            g7443))))
                                                g7442)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7479
                                                        (letrec ((x7480
                                                                  (letrec ((x7481
                                                                            (letrec ((x7482
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7482))))
                                                                    (car
                                                                     x7481))))
                                                          (cdr x7480))))
                                                g7479)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7483
                                                        (letrec ((x7484
                                                                  (letrec ((x7485
                                                                            (letrec ((x7486
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7486))))
                                                                    (car
                                                                     x7485))))
                                                          (car x7484))))
                                                g7483)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7487 (eq? x y)))
                                                g7487)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7488
                                                        (letrec ((x7490
                                                                  (number? x)))
                                                          (assert x7490)))
                                                       (g7489
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7491
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7492
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7492)))))
                                                            g7491))))
                                                g7489)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7493
                                                        (letrec ((x7496
                                                                  (string?
                                                                   filename)))
                                                          (assert x7496)))
                                                       (g7494
                                                        (letrec ((x7497
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7497)))
                                                       (g7495
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7498
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7499 res))
                                                            g7499))))
                                                g7495)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7500 (cons x '())))
                                                g7500)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7501
                                                        (letrec ((x7504
                                                                  (char? c1)))
                                                          (assert x7504)))
                                                       (g7502
                                                        (letrec ((x7505
                                                                  (char? c2)))
                                                          (assert x7505)))
                                                       (g7503
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7506
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7506))))
                                                g7503)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7507
                                                        (letrec ((x7508
                                                                  (letrec ((x7509
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7509))))
                                                          (cdr x7508))))
                                                g7507)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7510
                                                        (letrec ((x7511
                                                                  (letrec ((x7512
                                                                            (letrec ((x7513
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7513))))
                                                                    (car
                                                                     x7512))))
                                                          (cdr x7511))))
                                                g7510)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7514
                                                        (letrec ((x7515
                                                                  (letrec ((x7516
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7516))))
                                                          (car x7515))))
                                                g7514)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7517
                                                        (letrec ((x7518
                                                                  (letrec ((x7519
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7519))))
                                                          (car x7518))))
                                                g7517)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7520
                                                        (letrec ((x7523
                                                                  (char? c1)))
                                                          (assert x7523)))
                                                       (g7521
                                                        (letrec ((x7524
                                                                  (char? c2)))
                                                          (assert x7524)))
                                                       (g7522
                                                        (letrec ((x7525
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7525))))
                                                g7522)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7526
                                                        (letrec ((x7527
                                                                  (letrec ((x7528
                                                                            (letrec ((x7529
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7529))))
                                                                    (car
                                                                     x7528))))
                                                          (car x7527))))
                                                g7526)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7530
                                                        (letrec ((x7532
                                                                  (number? x)))
                                                          (assert x7532)))
                                                       (g7531 (< x 0)))
                                                g7531)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7533 (memq e l)))
                                                g7533)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7534
                                                        (letrec ((x7535
                                                                  (letrec ((x7536
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7536))))
                                                          (car x7535))))
                                                g7534)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7537 '())) g7537)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7538
                                                        (letrec ((x7540
                                                                  (list? l)))
                                                          (assert x7540)))
                                                       (g7539
                                                        (letrec ((x-cnd7541
                                                                  (null? l)))
                                                          (if x-cnd7541
                                                            '()
                                                            (letrec ((x7544
                                                                      (letrec ((x7545
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7545)))
                                                                     (x7542
                                                                      (letrec ((x7543
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7543))))
                                                              (append
                                                               x7544
                                                               x7542))))))
                                                g7539)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7546
                                                        (letrec ((x7547
                                                                  (letrec ((x7548
                                                                            (letrec ((x7549
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7549))))
                                                                    (car
                                                                     x7548))))
                                                          (car x7547))))
                                                g7546)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7550
                                                        (letrec ((x7551
                                                                  (letrec ((x7552
                                                                            (letrec ((x7553
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7553))))
                                                                    (cdr
                                                                     x7552))))
                                                          (cdr x7551))))
                                                g7550)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7554
                                                        (letrec ((x7556
                                                                  (number? x)))
                                                          (assert x7556)))
                                                       (g7555
                                                        (letrec ((x7557
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7557))))
                                                g7555)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7558
                                                        (letrec ((x7559
                                                                  (letrec ((x7560
                                                                            (letrec ((x7561
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7561))))
                                                                    (car
                                                                     x7560))))
                                                          (car x7559))))
                                                g7558)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7562
                                                        (letrec ((x7565
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7565)))
                                                       (g7563
                                                        (letrec ((x7566
                                                                  (list?
                                                                   args)))
                                                          (assert x7566)))
                                                       (g7564
                                                        (if cnd
                                                          (letrec ((g7567
                                                                    (proc)))
                                                            g7567)
                                                          (if cnd
                                                            (letrec ((g7568
                                                                      (letrec ((x7569
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7569))))
                                                              g7568)
                                                            (if cnd
                                                              (letrec ((g7570
                                                                        (letrec ((x7572
                                                                                  (car
                                                                                   args))
                                                                                 (x7571
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7572
                                                                           x7571))))
                                                                g7570)
                                                              (if cnd
                                                                (letrec ((g7573
                                                                          (letrec ((x7576
                                                                                    (car
                                                                                     args))
                                                                                   (x7575
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7574
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7576
                                                                             x7575
                                                                             x7574))))
                                                                  g7573)
                                                                (if cnd
                                                                  (letrec ((g7577
                                                                            (letrec ((x7581
                                                                                      (car
                                                                                       args))
                                                                                     (x7580
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7579
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7578
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7581
                                                                               x7580
                                                                               x7579
                                                                               x7578))))
                                                                    g7577)
                                                                  (if cnd
                                                                    (letrec ((g7582
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
                                                                                           x7584))))
                                                                                (proc
                                                                                 x7588
                                                                                 x7587
                                                                                 x7586
                                                                                 x7585
                                                                                 x7583))))
                                                                      g7582)
                                                                    (if cnd
                                                                      (letrec ((g7589
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
                                                                                             x7593)))
                                                                                         (x7590
                                                                                          (letrec ((x7591
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7591))))
                                                                                  (proc
                                                                                   x7597
                                                                                   x7596
                                                                                   x7595
                                                                                   x7594
                                                                                   x7592
                                                                                   x7590))))
                                                                        g7589)
                                                                      (if cnd
                                                                        (letrec ((g7598
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
                                                                                               x7602)))
                                                                                           (x7599
                                                                                            (letrec ((x7600
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7600))))
                                                                                    (proc
                                                                                     x7608
                                                                                     x7607
                                                                                     x7606
                                                                                     x7605
                                                                                     x7603
                                                                                     x7601
                                                                                     x7599))))
                                                                          g7598)
                                                                        (letrec ((g7609
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7609)))))))))))
                                                g7564)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7610
                                                        (letrec ((x7612
                                                                  (list? l)))
                                                          (assert x7612)))
                                                       (g7611
                                                        (letrec ((x-cnd7613
                                                                  (null? l)))
                                                          (if x-cnd7613
                                                            #f
                                                            (letrec ((x-cnd7614
                                                                      (letrec ((x7615
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7615
                                                                         e))))
                                                              (if x-cnd7614
                                                                l
                                                                (letrec ((x7616
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7616))))))))
                                                g7611)))
                                           (cddddr
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
                                                          (cdr x7618))))
                                                g7617)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7621
                                                        (letrec ((x7622
                                                                  (letrec ((x7623
                                                                            (letrec ((x7624
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7624))))
                                                                    (cdr
                                                                     x7623))))
                                                          (car x7622))))
                                                g7621)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7625 (random 42)))
                                                g7625)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7626
                                                        (letrec ((x7628
                                                                  (number? x)))
                                                          (assert x7628)))
                                                       (g7627 (= x 0)))
                                                g7627)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7629
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7630
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7630))))
                                                g7629)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7631
                                                        (letrec ((x7632
                                                                  (cdr x)))
                                                          (car x7632))))
                                                g7631)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7633
                                                        (letrec ((val7156
                                                                  (letrec ((x7636
                                                                            (pair?
                                                                             l))
                                                                           (x7634
                                                                            (letrec ((x7635
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7635))))
                                                                    (and x7636
                                                                         x7634))))
                                                          (letrec ((g7637
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7637))))
                                                g7633)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7638
                                                        (letrec ((x7639
                                                                  (letrec ((x7640
                                                                            (letrec ((x7641
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7641))))
                                                                    (cdr
                                                                     x7640))))
                                                          (cdr x7639))))
                                                g7638)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7642
                                                        (letrec ((x-cnd7643
                                                                  (letrec ((x7644
                                                                            #\0))
                                                                    (char<=?
                                                                     x7644
                                                                     c))))
                                                          (if x-cnd7643
                                                            (letrec ((x7645
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7645))
                                                            #f))))
                                                g7642)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7651
                                                                         k))))
                                                              (if x-cnd7650
                                                                (car l)
                                                                (letrec ((x7652
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7652))))))))
                                                g7647)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7653 (if x #f #t)))
                                                g7653)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7654 (append l1 l2)))
                                                g7654)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7660
                                                                         e))))
                                                              (if x-cnd7659
                                                                l
                                                                (letrec ((x7661
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7661))))))))
                                                g7656)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7662
                                                        (letrec ((x7663
                                                                  (letrec ((x7664
                                                                            (letrec ((x7665
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7665))))
                                                                    (cdr
                                                                     x7664))))
                                                          (car x7663))))
                                                g7662)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7666
                                                        (letrec ((x7668
                                                                  (list? l)))
                                                          (assert x7668)))
                                                       (g7667
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7669
                                                                              (letrec ((x-cnd7670
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7670
                                                                                  0
                                                                                  (letrec ((x7671
                                                                                            (letrec ((x7672
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7672))))
                                                                                    (+
                                                                                     1
                                                                                     x7671))))))
                                                                      g7669))))
                                                          (letrec ((g7673
                                                                    (rec l)))
                                                            g7673))))
                                                g7667)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7674
                                                        (letrec ((x7677
                                                                  (char? c1)))
                                                          (assert x7677)))
                                                       (g7675
                                                        (letrec ((x7678
                                                                  (char? c2)))
                                                          (assert x7678)))
                                                       (g7676
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7679
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7679))))
                                                g7676)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7680
                                                        (letrec ((x7681
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7681))))
                                                g7680)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7682
                                                        (letrec ((x7683
                                                                  (letrec ((x7684
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7684))))
                                                          (cdr x7683))))
                                                g7682)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7685
                                                        (letrec ((x7687
                                                                  (list? l)))
                                                          (assert x7687)))
                                                       (g7686
                                                        (letrec ((x-cnd7688
                                                                  (null? l)))
                                                          (if x-cnd7688
                                                            #f
                                                            (letrec ((x-cnd7689
                                                                      (letrec ((x7690
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7690
                                                                         k))))
                                                              (if x-cnd7689
                                                                (car l)
                                                                (letrec ((x7691
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7691))))))))
                                                g7686)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7692
                                                        (letrec ((x7693
                                                                  (car x)))
                                                          (car x7693))))
                                                g7692)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7694
                                                        (letrec ((x7697
                                                                  (char? c1)))
                                                          (assert x7697)))
                                                       (g7695
                                                        (letrec ((x7698
                                                                  (char? c2)))
                                                          (assert x7698)))
                                                       (g7696
                                                        (letrec ((x7699
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7699))))
                                                g7696)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7700
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7701
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7701))))
                                                g7700)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7702
                                                        (letrec ((x7705
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7705)))
                                                       (g7703
                                                        (letrec ((x7706
                                                                  (list? l)))
                                                          (assert x7706)))
                                                       (g7704
                                                        (letrec ((x-cnd7707
                                                                  (null? l)))
                                                          (if x-cnd7707
                                                            #t
                                                            (letrec ((x-cnd7708
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7708
                                                                (letrec ((g7709
                                                                          (letrec ((x7711
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7711)))
                                                                         (g7710
                                                                          (letrec ((x7712
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7712))))
                                                                  g7710)
                                                                '()))))))
                                                g7704)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7713
                                                        (letrec ((x7715
                                                                  (number? x)))
                                                          (assert x7715)))
                                                       (g7714
                                                        (letrec ((x-cnd7716
                                                                  (< x 0)))
                                                          (if x-cnd7716
                                                            (- 0 x)
                                                            x))))
                                                g7714)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7717
                                                        (letrec ((x7720
                                                                  (char? c1)))
                                                          (assert x7720)))
                                                       (g7718
                                                        (letrec ((x7721
                                                                  (char? c2)))
                                                          (assert x7721)))
                                                       (g7719
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7722
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7722))))
                                                g7719)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7723
                                                        (letrec ((x7724
                                                                  (letrec ((x7725
                                                                            (letrec ((x7726
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7726))))
                                                                    (cdr
                                                                     x7725))))
                                                          (car x7724))))
                                                g7723)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7727 #f)) g7727)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7728
                                                        (letrec ((x7730
                                                                  (letrec ((x7731
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7731)))
                                                                 (x7729
                                                                  (gcd m n)))
                                                          (/ x7730 x7729))))
                                                g7728)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7732
                                                        (letrec ((x7734
                                                                  (number? x)))
                                                          (assert x7734)))
                                                       (g7733
                                                        (letrec ((x7735
                                                                  (<= x y)))
                                                          (not x7735))))
                                                g7733)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7736
                                                        (letrec ((x7740
                                                                  (list? l)))
                                                          (assert x7740)))
                                                       (g7737
                                                        (letrec ((x7741
                                                                  (number?
                                                                   index)))
                                                          (assert x7741)))
                                                       (g7738
                                                        (letrec ((x7742
                                                                  (letrec ((x7743
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7743))))
                                                          (assert x7742)))
                                                       (g7739
                                                        (letrec ((x-cnd7744
                                                                  (= index 0)))
                                                          (if x-cnd7744
                                                            (car l)
                                                            (letrec ((x7746
                                                                      (cdr l))
                                                                     (x7745
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7746
                                                               x7745))))))
                                                g7739)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7747
                                                        (letrec ((x-cnd7748
                                                                  (= b 0)))
                                                          (if x-cnd7748
                                                            a
                                                            (letrec ((x7749
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7749))))))
                                                g7747)))
                                           (foldl
                                            (lambda (f z l)
                                              (letrec ((g7750
                                                        (letrec ((x-cnd7751
                                                                  (empty? l)))
                                                          (if x-cnd7751
                                                            z
                                                            (letrec ((x7753
                                                                      (letrec ((x7754
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         z
                                                                         x7754)))
                                                                     (x7752
                                                                      (cdr l)))
                                                              (foldl
                                                               f
                                                               x7753
                                                               x7752))))))
                                                g7750)))
                                           (randpos
                                            (lambda (rand)
                                              (letrec ((g7755
                                                        (letrec ((n (rand)))
                                                          (letrec ((g7756
                                                                    (letrec ((x-cnd7757
                                                                              (>
                                                                               n
                                                                               0)))
                                                                      (if x-cnd7757
                                                                        n
                                                                        (randpos
                                                                         rand)))))
                                                            g7756))))
                                                g7755)))
                                           (mk-list
                                            (lambda (rand n)
                                              (letrec ((g7758
                                                        (letrec ((x-cnd7759
                                                                  (<= n 0)))
                                                          (if x-cnd7759
                                                            empty
                                                            (letrec ((x7762
                                                                      (randpos
                                                                       rand))
                                                                     (x7760
                                                                      (letrec ((x7761
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (mk-list
                                                                         rand
                                                                         x7761))))
                                                              (cons
                                                               x7762
                                                               x7760))))))
                                                g7758)))
                                           (main
                                            (lambda (rand n m)
                                              (letrec ((g7763
                                                        (letrec ((x7764
                                                                  (mk-list
                                                                   rand
                                                                   n)))
                                                          (foldl / m x7764))))
                                                g7763))))
                                    (letrec ((g7765
                                              (letrec ((x7769
                                                        ((lambda (j7232
                                                                  k7233
                                                                  f7234)
                                                           (letrec ((g7770
                                                                     (lambda (g7229
                                                                              g7230
                                                                              g7231)
                                                                       (letrec ((g7771
                                                                                 (letrec ((x7772
                                                                                           (letrec ((x7775
                                                                                                     ((lambda (j7235
                                                                                                               k7236
                                                                                                               f7237)
                                                                                                        (letrec ((g7776
                                                                                                                  (lambda ()
                                                                                                                    (letrec ((g7777
                                                                                                                              (letrec ((x7778
                                                                                                                                        (f7237)))
                                                                                                                                (integer?/c
                                                                                                                                 j7235
                                                                                                                                 k7236
                                                                                                                                 x7778))))
                                                                                                                      g7777))))
                                                                                                          g7776))
                                                                                                      j7232
                                                                                                      k7233
                                                                                                      g7229))
                                                                                                    (x7774
                                                                                                     (integer?/c
                                                                                                      j7232
                                                                                                      k7233
                                                                                                      g7230))
                                                                                                    (x7773
                                                                                                     (integer?/c
                                                                                                      j7232
                                                                                                      k7233
                                                                                                      g7231)))
                                                                                             (f7234
                                                                                              x7775
                                                                                              x7774
                                                                                              x7773))))
                                                                                   (real?/c
                                                                                    j7232
                                                                                    k7233
                                                                                    x7772))))
                                                                         g7771))))
                                                             g7770))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7768 (input))
                                                       (x7767 (input))
                                                       (x7766 (input)))
                                                (x7769 x7768 x7767 x7766))))
                                      g7765))))
                          g7251))))
              g7249)))
    g7248))
