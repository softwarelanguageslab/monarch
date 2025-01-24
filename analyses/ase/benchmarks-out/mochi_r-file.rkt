(letrec ((any? (lambda (v) (letrec ((g7240 #t)) g7240)))
         (meta (lambda (v) (letrec ((g7241 v)) g7241)))
         (member
          (lambda (v lst)
            (letrec ((g7242
                      (letrec ((g7243
                                (letrec ((x-e7244 lst))
                                  (match
                                   x-e7244
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7245 (eq? v v1)))
                                       (if x-cnd7245 #t (member v vs)))))))))
                        g7243)))
              g7242)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7246 (lambda (v) (letrec ((g7247 v)) g7247)))) g7246)))
         (nonzero?
          (lambda (v)
            (letrec ((g7248 (letrec ((x7249 (= v 0))) (not x7249)))) g7248))))
  (letrec ((g7250
            (letrec ((g7251
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7252 '())
                                 (g7253
                                  (letrec ((real/c
                                            (lambda (g7160 g7161 g7162)
                                              (letrec ((g7254
                                                        (letrec ((x-cnd7255
                                                                  (real?
                                                                   g7162)))
                                                          (if x-cnd7255
                                                            g7162
                                                            (blame
                                                             g7160
                                                             'real?)))))
                                                g7254)))
                                           (boolean?/c
                                            (lambda (g7163 g7164 g7165)
                                              (letrec ((g7256
                                                        (letrec ((x-cnd7257
                                                                  (boolean?
                                                                   g7165)))
                                                          (if x-cnd7257
                                                            g7165
                                                            (blame
                                                             g7163
                                                             'boolean?)))))
                                                g7256)))
                                           (number?/c
                                            (lambda (g7166 g7167 g7168)
                                              (letrec ((g7258
                                                        (letrec ((x-cnd7259
                                                                  (number?
                                                                   g7168)))
                                                          (if x-cnd7259
                                                            g7168
                                                            (blame
                                                             g7166
                                                             'number?)))))
                                                g7258)))
                                           (any/c
                                            (lambda (g7169 g7170 g7171)
                                              (letrec ((g7260
                                                        (letrec ((x-cnd7261
                                                                  ((lambda (v)
                                                                     (letrec ((g7262
                                                                               #t))
                                                                       g7262))
                                                                   g7171)))
                                                          (if x-cnd7261
                                                            g7171
                                                            (blame
                                                             g7169
                                                             '(lambda (v)
                                                                #t))))))
                                                g7260)))
                                           (any?/c
                                            (lambda (g7172 g7173 g7174)
                                              (letrec ((g7263
                                                        (letrec ((x-cnd7264
                                                                  ((lambda (v)
                                                                     (letrec ((g7265
                                                                               #t))
                                                                       g7265))
                                                                   g7174)))
                                                          (if x-cnd7264
                                                            g7174
                                                            (blame
                                                             g7172
                                                             '(lambda (v)
                                                                #t))))))
                                                g7263)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7175 g7176 g7177)
                                              (letrec ((g7266
                                                        (letrec ((x-cnd7267
                                                                  (pair?
                                                                   g7177)))
                                                          (if x-cnd7267
                                                            g7177
                                                            (blame
                                                             g7175
                                                             'pair?)))))
                                                g7266)))
                                           (pair?/c
                                            (lambda (g7178 g7179 g7180)
                                              (letrec ((g7268
                                                        (letrec ((x-cnd7269
                                                                  (pair?
                                                                   g7180)))
                                                          (if x-cnd7269
                                                            g7180
                                                            (blame
                                                             g7178
                                                             'pair?)))))
                                                g7268)))
                                           (integer?/c
                                            (lambda (g7181 g7182 g7183)
                                              (letrec ((g7270
                                                        (letrec ((x-cnd7271
                                                                  (integer?
                                                                   g7183)))
                                                          (if x-cnd7271
                                                            g7183
                                                            (blame
                                                             g7181
                                                             'integer?)))))
                                                g7270)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7272
                                                        (lambda (k j v)
                                                          (letrec ((g7273
                                                                    (letrec ((x-cnd7274
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7274
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7273))))
                                                g7272)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7275
                                                        (lambda (k j v)
                                                          (letrec ((g7276
                                                                    (letrec ((x-cnd7277
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7277
                                                                        '()
                                                                        (letrec ((x7281
                                                                                  (letrec ((x7282
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7282)))
                                                                                 (x7278
                                                                                  (letrec ((x7280
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7279
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7280
                                                                                     k
                                                                                     j
                                                                                     x7279))))
                                                                          (cons
                                                                           x7281
                                                                           x7278))))))
                                                            g7276))))
                                                g7275)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7283 #t)) g7283)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7284
                                                        (letrec ((x7285
                                                                  (= v 0)))
                                                          (not x7285))))
                                                g7284)))
                                           (nonzero?/c
                                            (lambda (g7184 g7185 g7186)
                                              (letrec ((g7286
                                                        (letrec ((x-cnd7287
                                                                  ((lambda (v)
                                                                     (letrec ((g7288
                                                                               (letrec ((x7289
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7289))))
                                                                       g7288))
                                                                   g7186)))
                                                          (if x-cnd7287
                                                            g7186
                                                            (blame
                                                             g7184
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7286)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7290 v)) g7290)))
                                           (+
                                            ((lambda (j7189 k7190 f7191)
                                               (letrec ((g7292
                                                         (lambda (g7187 g7188)
                                                           (letrec ((g7293
                                                                     (letrec ((x7294
                                                                               (letrec ((x7296
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7187))
                                                                                        (x7295
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7188)))
                                                                                 (f7191
                                                                                  x7296
                                                                                  x7295))))
                                                                       (number?/c
                                                                        j7189
                                                                        k7190
                                                                        x7294))))
                                                             g7293))))
                                                 g7292))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7291 (orig-+ a b)))
                                                 g7291))))
                                           (-
                                            ((lambda (j7194 k7195 f7196)
                                               (letrec ((g7298
                                                         (lambda (g7192 g7193)
                                                           (letrec ((g7299
                                                                     (letrec ((x7300
                                                                               (letrec ((x7302
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7192))
                                                                                        (x7301
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7193)))
                                                                                 (f7196
                                                                                  x7302
                                                                                  x7301))))
                                                                       (number?/c
                                                                        j7194
                                                                        k7195
                                                                        x7300))))
                                                             g7299))))
                                                 g7298))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7297 (orig-- a b)))
                                                 g7297))))
                                           (*
                                            ((lambda (j7199 k7200 f7201)
                                               (letrec ((g7304
                                                         (lambda (g7197 g7198)
                                                           (letrec ((g7305
                                                                     (letrec ((x7306
                                                                               (letrec ((x7308
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7197))
                                                                                        (x7307
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7198)))
                                                                                 (f7201
                                                                                  x7308
                                                                                  x7307))))
                                                                       (number?/c
                                                                        j7199
                                                                        k7200
                                                                        x7306))))
                                                             g7305))))
                                                 g7304))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7303 (orig-* a b)))
                                                 g7303))))
                                           (/
                                            ((lambda (j7204 k7205 f7206)
                                               (letrec ((g7310
                                                         (lambda (g7202 g7203)
                                                           (letrec ((g7311
                                                                     (letrec ((x7312
                                                                               (letrec ((x7314
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7202))
                                                                                        (x7313
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7203)))
                                                                                 (f7206
                                                                                  x7314
                                                                                  x7313))))
                                                                       (number?/c
                                                                        j7204
                                                                        k7205
                                                                        x7312))))
                                                             g7311))))
                                                 g7310))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7309 (orig-/ a b)))
                                                 g7309))))
                                           (car
                                            ((lambda (j7208 k7209 f7210)
                                               (letrec ((g7316
                                                         (lambda (g7207)
                                                           (letrec ((g7317
                                                                     (letrec ((x7318
                                                                               (letrec ((x7319
                                                                                         (pair?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7207)))
                                                                                 (f7210
                                                                                  x7319))))
                                                                       (any/c
                                                                        j7208
                                                                        k7209
                                                                        x7318))))
                                                             g7317))))
                                                 g7316))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7315 (orig-car p)))
                                                 g7315))))
                                           (cdr
                                            ((lambda (j7212 k7213 f7214)
                                               (letrec ((g7321
                                                         (lambda (g7211)
                                                           (letrec ((g7322
                                                                     (letrec ((x7323
                                                                               (letrec ((x7324
                                                                                         (pair?/c
                                                                                          j7212
                                                                                          k7213
                                                                                          g7211)))
                                                                                 (f7214
                                                                                  x7324))))
                                                                       (any/c
                                                                        j7212
                                                                        k7213
                                                                        x7323))))
                                                             g7322))))
                                                 g7321))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7320 (orig-cdr p)))
                                                 g7320))))
                                           (cons
                                            ((lambda (j7217 k7218 f7219)
                                               (letrec ((g7326
                                                         (lambda (g7215 g7216)
                                                           (letrec ((g7327
                                                                     (letrec ((x7328
                                                                               (letrec ((x7330
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7215))
                                                                                        (x7329
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7216)))
                                                                                 (f7219
                                                                                  x7330
                                                                                  x7329))))
                                                                       (pair?/c
                                                                        j7217
                                                                        k7218
                                                                        x7328))))
                                                             g7327))))
                                                 g7326))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7325 (cons a b)))
                                                 g7325))))
                                           (vector-ref
                                            ((lambda (j7221 k7222 f7223)
                                               (letrec ((g7332
                                                         (lambda (g7220)
                                                           (letrec ((g7333
                                                                     (letrec ((x7334
                                                                               (letrec ((x7335
                                                                                         (vector?/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7220)))
                                                                                 (f7223
                                                                                  x7335))))
                                                                       (integer?/c
                                                                        j7221
                                                                        k7222
                                                                        x7334))))
                                                             g7333))))
                                                 g7332))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7331
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7331))))
                                           (vector-set!
                                            ((lambda (j7226 k7227 f7228)
                                               (letrec ((g7337
                                                         (lambda (g7224 g7225)
                                                           (letrec ((g7338
                                                                     (letrec ((x7339
                                                                               (letrec ((x7341
                                                                                         (vector?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7224))
                                                                                        (x7340
                                                                                         (integer?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7225)))
                                                                                 (f7228
                                                                                  x7341
                                                                                  x7340))))
                                                                       (any/c
                                                                        j7226
                                                                        k7227
                                                                        x7339))))
                                                             g7338))))
                                                 g7337))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7336
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7336))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7342 #t)) g7342)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7343
                                                        (letrec ((x7344
                                                                  (letrec ((x7345
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7345))))
                                                          (cdr x7344))))
                                                g7343)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7346
                                                        (letrec ((x7349
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7349)))
                                                       (g7347
                                                        (letrec ((x7350
                                                                  (list? l)))
                                                          (assert x7350)))
                                                       (g7348
                                                        (letrec ((x-cnd7351
                                                                  (null? l)))
                                                          (if x-cnd7351
                                                            '()
                                                            (letrec ((x7354
                                                                      (letrec ((x7355
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7355)))
                                                                     (x7352
                                                                      (letrec ((x7353
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7353))))
                                                              (cons
                                                               x7354
                                                               x7352))))))
                                                g7348)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7356
                                                        (letrec ((x7357
                                                                  (car x)))
                                                          (cdr x7357))))
                                                g7356)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7358
                                                        (letrec ((x7359
                                                                  (letrec ((x7360
                                                                            (letrec ((x7361
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7361))))
                                                                    (cdr
                                                                     x7360))))
                                                          (car x7359))))
                                                g7358)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7362
                                                        (letrec ((x7363
                                                                  (letrec ((x7364
                                                                            (letrec ((x7365
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7365))))
                                                                    (car
                                                                     x7364))))
                                                          (cdr x7363))))
                                                g7362)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7366
                                                        (letrec ((x7369
                                                                  (string?
                                                                   filename)))
                                                          (assert x7369)))
                                                       (g7367
                                                        (letrec ((x7370
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7370)))
                                                       (g7368
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7371
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7372 res))
                                                            g7372))))
                                                g7368)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7373
                                                        (letrec ((x7374
                                                                  (letrec ((x7375
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7375))))
                                                          (car x7374))))
                                                g7373)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7376
                                                        (letrec ((x7377
                                                                  (letrec ((x7378
                                                                            (letrec ((x7379
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7379))))
                                                                    (car
                                                                     x7378))))
                                                          (cdr x7377))))
                                                g7376)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7380
                                                        (letrec ((x7382
                                                                  (list? l)))
                                                          (assert x7382)))
                                                       (g7381
                                                        (letrec ((x-cnd7383
                                                                  (null? l)))
                                                          (if x-cnd7383
                                                            #f
                                                            (letrec ((x-cnd7384
                                                                      (letrec ((x7385
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7385
                                                                         k))))
                                                              (if x-cnd7384
                                                                (car l)
                                                                (letrec ((x7386
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7386))))))))
                                                g7381)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7387
                                                        (letrec ((x7388
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7388))))
                                                g7387)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7389
                                                        (letrec ((x7391
                                                                  (list? l)))
                                                          (assert x7391)))
                                                       (g7390
                                                        (letrec ((x-cnd7392
                                                                  (null? l)))
                                                          (if x-cnd7392
                                                            ""
                                                            (letrec ((x7395
                                                                      (letrec ((x7396
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7396)))
                                                                     (x7393
                                                                      (letrec ((x7394
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7394))))
                                                              (string-append
                                                               x7395
                                                               x7393))))))
                                                g7390)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7397
                                                        (letrec ((x7400
                                                                  (char? c1)))
                                                          (assert x7400)))
                                                       (g7398
                                                        (letrec ((x7401
                                                                  (char? c2)))
                                                          (assert x7401)))
                                                       (g7399
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7402
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7402))))
                                                g7399)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7403
                                                        (letrec ((x7404
                                                                  (letrec ((x7405
                                                                            (letrec ((x7406
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7406))))
                                                                    (cdr
                                                                     x7405))))
                                                          (cdr x7404))))
                                                g7403)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7407
                                                        (letrec ((x7410
                                                                  (list? l)))
                                                          (assert x7410)))
                                                       (g7408
                                                        (letrec ((x7411
                                                                  (numer?)))
                                                          (assert x7411)))
                                                       (g7409
                                                        (letrec ((x-cnd7412
                                                                  (zero? k)))
                                                          (if x-cnd7412
                                                            x
                                                            (letrec ((x7414
                                                                      (cdr x))
                                                                     (x7413
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7414
                                                               x7413))))))
                                                g7409)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7415 '())) g7415)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7416
                                                        (letrec ((x-cnd7417
                                                                  (letrec ((x7418
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7418))))
                                                          (if x-cnd7417
                                                            (letrec ((x7419
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7419))
                                                            #f))))
                                                g7416)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7420
                                                        (letrec ((x7422
                                                                  (number? x)))
                                                          (assert x7422)))
                                                       (g7421
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7423
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7424
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7424)))))
                                                            g7423))))
                                                g7421)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7425
                                                        (letrec ((val7146
                                                                  (letrec ((x7426
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7426
                                                                     9))))
                                                          (letrec ((g7427
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7428
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7428
                                                                                   10))))
                                                                        (letrec ((g7429
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7430
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7430
                                                                                       32)))))
                                                                          g7429)))))
                                                            g7427))))
                                                g7425)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7431
                                                        (letrec ((x7432
                                                                  (letrec ((x7433
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7433))))
                                                          (cdr x7432))))
                                                g7431)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7434
                                                        (letrec ((x7436
                                                                  (number? x)))
                                                          (assert x7436)))
                                                       (g7435 (> x 0)))
                                                g7435)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7437 #f)) g7437)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7438
                                                        (letrec ((x7439
                                                                  (cdr x)))
                                                          (cdr x7439))))
                                                g7438)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7440
                                                        (letrec ((x7442
                                                                  (number? x)))
                                                          (assert x7442)))
                                                       (g7441
                                                        (letrec ((x-cnd7443
                                                                  (< x 0)))
                                                          (if x-cnd7443
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7441)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7444
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7445
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7447
                                                                                          (null?
                                                                                           a))
                                                                                         (x7446
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7447
                                                                                       x7446))))
                                                                        (letrec ((g7448
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7451
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7450
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7449
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7451
                                                                                                     x7450
                                                                                                     x7449))))
                                                                                      (letrec ((g7452
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7460
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7459
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7456
                                                                                                                      (letrec ((x7458
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7457
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7458
                                                                                                                         x7457)))
                                                                                                                     (x7453
                                                                                                                      (letrec ((x7455
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7454
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7455
                                                                                                                         x7454))))
                                                                                                              (and x7460
                                                                                                                   x7459
                                                                                                                   x7456
                                                                                                                   x7453))))
                                                                                                    (letrec ((g7461
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7480
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7479
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7462
                                                                                                                          (letrec ((x7476
                                                                                                                                    (letrec ((x7477
                                                                                                                                              (letrec ((x7478
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7478))))
                                                                                                                                      (x7477)))
                                                                                                                                   (x7463
                                                                                                                                    (letrec ((x7474
                                                                                                                                              (letrec ((x7475
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7475
                                                                                                                                                 n)))
                                                                                                                                             (x7464
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7465
                                                                                                                                                                    (letrec ((x7472
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7466
                                                                                                                                                                              (letrec ((x7469
                                                                                                                                                                                        (letrec ((x7471
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7470
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7471
                                                                                                                                                                                           x7470)))
                                                                                                                                                                                       (x7467
                                                                                                                                                                                        (letrec ((x7468
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7468))))
                                                                                                                                                                                (and x7469
                                                                                                                                                                                     x7467))))
                                                                                                                                                                      (or x7472
                                                                                                                                                                          x7466))))
                                                                                                                                                            g7465))))
                                                                                                                                                (letrec ((g7473
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7473))))
                                                                                                                                      (and x7474
                                                                                                                                           x7464))))
                                                                                                                            (let x7476 x7463))))
                                                                                                                  (and x7480
                                                                                                                       x7479
                                                                                                                       x7462)))))
                                                                                                      g7461)))))
                                                                                        g7452)))))
                                                                          g7448)))))
                                                            g7445))))
                                                g7444)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7481
                                                        (letrec ((x7482
                                                                  (letrec ((x7483
                                                                            (letrec ((x7484
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7484))))
                                                                    (car
                                                                     x7483))))
                                                          (cdr x7482))))
                                                g7481)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7485
                                                        (letrec ((x7486
                                                                  (letrec ((x7487
                                                                            (letrec ((x7488
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7488))))
                                                                    (car
                                                                     x7487))))
                                                          (car x7486))))
                                                g7485)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7489 (eq? x y)))
                                                g7489)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7490
                                                        (letrec ((x7492
                                                                  (number? x)))
                                                          (assert x7492)))
                                                       (g7491
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7493
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7494
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7494)))))
                                                            g7493))))
                                                g7491)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7495
                                                        (letrec ((x7498
                                                                  (string?
                                                                   filename)))
                                                          (assert x7498)))
                                                       (g7496
                                                        (letrec ((x7499
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7499)))
                                                       (g7497
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7500
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7501 res))
                                                            g7501))))
                                                g7497)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7502 (cons x '())))
                                                g7502)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7503
                                                        (letrec ((x7506
                                                                  (char? c1)))
                                                          (assert x7506)))
                                                       (g7504
                                                        (letrec ((x7507
                                                                  (char? c2)))
                                                          (assert x7507)))
                                                       (g7505
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7508
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7508))))
                                                g7505)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7509
                                                        (letrec ((x7510
                                                                  (letrec ((x7511
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7511))))
                                                          (cdr x7510))))
                                                g7509)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7512
                                                        (letrec ((x7513
                                                                  (letrec ((x7514
                                                                            (letrec ((x7515
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7515))))
                                                                    (car
                                                                     x7514))))
                                                          (cdr x7513))))
                                                g7512)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7516
                                                        (letrec ((x7517
                                                                  (letrec ((x7518
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7518))))
                                                          (car x7517))))
                                                g7516)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7519
                                                        (letrec ((x7520
                                                                  (letrec ((x7521
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7521))))
                                                          (car x7520))))
                                                g7519)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7522
                                                        (letrec ((x7525
                                                                  (char? c1)))
                                                          (assert x7525)))
                                                       (g7523
                                                        (letrec ((x7526
                                                                  (char? c2)))
                                                          (assert x7526)))
                                                       (g7524
                                                        (letrec ((x7527
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7527))))
                                                g7524)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7528
                                                        (letrec ((x7529
                                                                  (letrec ((x7530
                                                                            (letrec ((x7531
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7531))))
                                                                    (car
                                                                     x7530))))
                                                          (car x7529))))
                                                g7528)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7532
                                                        (letrec ((x7534
                                                                  (number? x)))
                                                          (assert x7534)))
                                                       (g7533 (< x 0)))
                                                g7533)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7535 (memq e l)))
                                                g7535)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7536
                                                        (letrec ((x7537
                                                                  (letrec ((x7538
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7538))))
                                                          (car x7537))))
                                                g7536)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7539 '())) g7539)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7540
                                                        (letrec ((x7542
                                                                  (list? l)))
                                                          (assert x7542)))
                                                       (g7541
                                                        (letrec ((x-cnd7543
                                                                  (null? l)))
                                                          (if x-cnd7543
                                                            '()
                                                            (letrec ((x7546
                                                                      (letrec ((x7547
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7547)))
                                                                     (x7544
                                                                      (letrec ((x7545
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7545))))
                                                              (append
                                                               x7546
                                                               x7544))))))
                                                g7541)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7548
                                                        (letrec ((x7549
                                                                  (letrec ((x7550
                                                                            (letrec ((x7551
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7551))))
                                                                    (car
                                                                     x7550))))
                                                          (car x7549))))
                                                g7548)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7552
                                                        (letrec ((x7553
                                                                  (letrec ((x7554
                                                                            (letrec ((x7555
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7555))))
                                                                    (cdr
                                                                     x7554))))
                                                          (cdr x7553))))
                                                g7552)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7556
                                                        (letrec ((x7558
                                                                  (number? x)))
                                                          (assert x7558)))
                                                       (g7557
                                                        (letrec ((x7559
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7559))))
                                                g7557)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7560
                                                        (letrec ((x7561
                                                                  (letrec ((x7562
                                                                            (letrec ((x7563
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7563))))
                                                                    (car
                                                                     x7562))))
                                                          (car x7561))))
                                                g7560)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7564
                                                        (letrec ((x7567
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7567)))
                                                       (g7565
                                                        (letrec ((x7568
                                                                  (list?
                                                                   args)))
                                                          (assert x7568)))
                                                       (g7566
                                                        (if cnd
                                                          (letrec ((g7569
                                                                    (proc)))
                                                            g7569)
                                                          (if cnd
                                                            (letrec ((g7570
                                                                      (letrec ((x7571
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7571))))
                                                              g7570)
                                                            (if cnd
                                                              (letrec ((g7572
                                                                        (letrec ((x7574
                                                                                  (car
                                                                                   args))
                                                                                 (x7573
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7574
                                                                           x7573))))
                                                                g7572)
                                                              (if cnd
                                                                (letrec ((g7575
                                                                          (letrec ((x7578
                                                                                    (car
                                                                                     args))
                                                                                   (x7577
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7576
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7578
                                                                             x7577
                                                                             x7576))))
                                                                  g7575)
                                                                (if cnd
                                                                  (letrec ((g7579
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
                                                                                       args)))
                                                                              (proc
                                                                               x7583
                                                                               x7582
                                                                               x7581
                                                                               x7580))))
                                                                    g7579)
                                                                  (if cnd
                                                                    (letrec ((g7584
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
                                                                                         args))
                                                                                       (x7585
                                                                                        (letrec ((x7586
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7586))))
                                                                                (proc
                                                                                 x7590
                                                                                 x7589
                                                                                 x7588
                                                                                 x7587
                                                                                 x7585))))
                                                                      g7584)
                                                                    (if cnd
                                                                      (letrec ((g7591
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
                                                                                             x7593))))
                                                                                  (proc
                                                                                   x7599
                                                                                   x7598
                                                                                   x7597
                                                                                   x7596
                                                                                   x7594
                                                                                   x7592))))
                                                                        g7591)
                                                                      (if cnd
                                                                        (letrec ((g7600
                                                                                  (letrec ((x7610
                                                                                            (car
                                                                                             args))
                                                                                           (x7609
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7608
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7607
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7605
                                                                                            (letrec ((x7606
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7606)))
                                                                                           (x7603
                                                                                            (letrec ((x7604
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7604)))
                                                                                           (x7601
                                                                                            (letrec ((x7602
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7602))))
                                                                                    (proc
                                                                                     x7610
                                                                                     x7609
                                                                                     x7608
                                                                                     x7607
                                                                                     x7605
                                                                                     x7603
                                                                                     x7601))))
                                                                          g7600)
                                                                        (letrec ((g7611
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7611)))))))))))
                                                g7566)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7612
                                                        (letrec ((x7614
                                                                  (list? l)))
                                                          (assert x7614)))
                                                       (g7613
                                                        (letrec ((x-cnd7615
                                                                  (null? l)))
                                                          (if x-cnd7615
                                                            #f
                                                            (letrec ((x-cnd7616
                                                                      (letrec ((x7617
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7617
                                                                         e))))
                                                              (if x-cnd7616
                                                                l
                                                                (letrec ((x7618
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7618))))))))
                                                g7613)))
                                           (cddddr
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
                                                          (cdr x7620))))
                                                g7619)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7623
                                                        (letrec ((x7624
                                                                  (letrec ((x7625
                                                                            (letrec ((x7626
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7626))))
                                                                    (cdr
                                                                     x7625))))
                                                          (car x7624))))
                                                g7623)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7627 (random 42)))
                                                g7627)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7628
                                                        (letrec ((x7630
                                                                  (number? x)))
                                                          (assert x7630)))
                                                       (g7629 (= x 0)))
                                                g7629)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7631
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7632
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7632))))
                                                g7631)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7633
                                                        (letrec ((x7634
                                                                  (cdr x)))
                                                          (car x7634))))
                                                g7633)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7635
                                                        (letrec ((val7156
                                                                  (letrec ((x7638
                                                                            (pair?
                                                                             l))
                                                                           (x7636
                                                                            (letrec ((x7637
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7637))))
                                                                    (and x7638
                                                                         x7636))))
                                                          (letrec ((g7639
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7639))))
                                                g7635)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7640
                                                        (letrec ((x7641
                                                                  (letrec ((x7642
                                                                            (letrec ((x7643
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7643))))
                                                                    (cdr
                                                                     x7642))))
                                                          (cdr x7641))))
                                                g7640)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7644
                                                        (letrec ((x-cnd7645
                                                                  (letrec ((x7646
                                                                            #\0))
                                                                    (char<=?
                                                                     x7646
                                                                     c))))
                                                          (if x-cnd7645
                                                            (letrec ((x7647
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7647))
                                                            #f))))
                                                g7644)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7648
                                                        (letrec ((x7650
                                                                  (list? l)))
                                                          (assert x7650)))
                                                       (g7649
                                                        (letrec ((x-cnd7651
                                                                  (null? l)))
                                                          (if x-cnd7651
                                                            #f
                                                            (letrec ((x-cnd7652
                                                                      (letrec ((x7653
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7653
                                                                         k))))
                                                              (if x-cnd7652
                                                                (car l)
                                                                (letrec ((x7654
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7654))))))))
                                                g7649)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7655 (if x #f #t)))
                                                g7655)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7656 (append l1 l2)))
                                                g7656)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7662
                                                                         e))))
                                                              (if x-cnd7661
                                                                l
                                                                (letrec ((x7663
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7663))))))))
                                                g7658)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7664
                                                        (letrec ((x7665
                                                                  (letrec ((x7666
                                                                            (letrec ((x7667
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7667))))
                                                                    (cdr
                                                                     x7666))))
                                                          (car x7665))))
                                                g7664)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7668
                                                        (letrec ((x7670
                                                                  (list? l)))
                                                          (assert x7670)))
                                                       (g7669
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7671
                                                                              (letrec ((x-cnd7672
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7672
                                                                                  0
                                                                                  (letrec ((x7673
                                                                                            (letrec ((x7674
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7674))))
                                                                                    (+
                                                                                     1
                                                                                     x7673))))))
                                                                      g7671))))
                                                          (letrec ((g7675
                                                                    (rec l)))
                                                            g7675))))
                                                g7669)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7676
                                                        (letrec ((x7679
                                                                  (char? c1)))
                                                          (assert x7679)))
                                                       (g7677
                                                        (letrec ((x7680
                                                                  (char? c2)))
                                                          (assert x7680)))
                                                       (g7678
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7681
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7681))))
                                                g7678)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7682
                                                        (letrec ((x7683
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7683))))
                                                g7682)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7684
                                                        (letrec ((x7685
                                                                  (letrec ((x7686
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7686))))
                                                          (cdr x7685))))
                                                g7684)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7687
                                                        (letrec ((x7689
                                                                  (list? l)))
                                                          (assert x7689)))
                                                       (g7688
                                                        (letrec ((x-cnd7690
                                                                  (null? l)))
                                                          (if x-cnd7690
                                                            #f
                                                            (letrec ((x-cnd7691
                                                                      (letrec ((x7692
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7692
                                                                         k))))
                                                              (if x-cnd7691
                                                                (car l)
                                                                (letrec ((x7693
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7693))))))))
                                                g7688)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7694
                                                        (letrec ((x7695
                                                                  (car x)))
                                                          (car x7695))))
                                                g7694)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7696
                                                        (letrec ((x7699
                                                                  (char? c1)))
                                                          (assert x7699)))
                                                       (g7697
                                                        (letrec ((x7700
                                                                  (char? c2)))
                                                          (assert x7700)))
                                                       (g7698
                                                        (letrec ((x7701
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7701))))
                                                g7698)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7702
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7703
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7703))))
                                                g7702)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7704
                                                        (letrec ((x7707
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7707)))
                                                       (g7705
                                                        (letrec ((x7708
                                                                  (list? l)))
                                                          (assert x7708)))
                                                       (g7706
                                                        (letrec ((x-cnd7709
                                                                  (null? l)))
                                                          (if x-cnd7709
                                                            #t
                                                            (letrec ((x-cnd7710
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7710
                                                                (letrec ((g7711
                                                                          (letrec ((x7713
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7713)))
                                                                         (g7712
                                                                          (letrec ((x7714
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7714))))
                                                                  g7712)
                                                                '()))))))
                                                g7706)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7715
                                                        (letrec ((x7717
                                                                  (number? x)))
                                                          (assert x7717)))
                                                       (g7716
                                                        (letrec ((x-cnd7718
                                                                  (< x 0)))
                                                          (if x-cnd7718
                                                            (- 0 x)
                                                            x))))
                                                g7716)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7719
                                                        (letrec ((x7722
                                                                  (char? c1)))
                                                          (assert x7722)))
                                                       (g7720
                                                        (letrec ((x7723
                                                                  (char? c2)))
                                                          (assert x7723)))
                                                       (g7721
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7724
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7724))))
                                                g7721)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7725
                                                        (letrec ((x7726
                                                                  (letrec ((x7727
                                                                            (letrec ((x7728
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7728))))
                                                                    (cdr
                                                                     x7727))))
                                                          (car x7726))))
                                                g7725)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7729 #f)) g7729)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7730
                                                        (letrec ((x7732
                                                                  (letrec ((x7733
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7733)))
                                                                 (x7731
                                                                  (gcd m n)))
                                                          (/ x7732 x7731))))
                                                g7730)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7734
                                                        (letrec ((x7736
                                                                  (number? x)))
                                                          (assert x7736)))
                                                       (g7735
                                                        (letrec ((x7737
                                                                  (<= x y)))
                                                          (not x7737))))
                                                g7735)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7738
                                                        (letrec ((x7742
                                                                  (list? l)))
                                                          (assert x7742)))
                                                       (g7739
                                                        (letrec ((x7743
                                                                  (number?
                                                                   index)))
                                                          (assert x7743)))
                                                       (g7740
                                                        (letrec ((x7744
                                                                  (letrec ((x7745
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7745))))
                                                          (assert x7744)))
                                                       (g7741
                                                        (letrec ((x-cnd7746
                                                                  (= index 0)))
                                                          (if x-cnd7746
                                                            (car l)
                                                            (letrec ((x7748
                                                                      (cdr l))
                                                                     (x7747
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7748
                                                               x7747))))))
                                                g7741)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7749
                                                        (letrec ((x-cnd7750
                                                                  (= b 0)))
                                                          (if x-cnd7750
                                                            a
                                                            (letrec ((x7751
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7751))))))
                                                g7749)))
                                           (STATE/C
                                            (lambda (g7232 g7233 g7234)
                                              (letrec ((g7752
                                                        (letrec ((x-cnd7753
                                                                  ((lambda (v7231)
                                                                     (letrec ((g7754
                                                                               (letrec ((x-cnd7755
                                                                                         (eq?
                                                                                          'init
                                                                                          v7231)))
                                                                                 (if x-cnd7755
                                                                                   #t
                                                                                   (letrec ((x-cnd7756
                                                                                             (eq?
                                                                                              'opened
                                                                                              v7231)))
                                                                                     (if x-cnd7756
                                                                                       #t
                                                                                       (letrec ((x-cnd7757
                                                                                                 (eq?
                                                                                                  'closed
                                                                                                  v7231)))
                                                                                         (if x-cnd7757
                                                                                           #t
                                                                                           (eq?
                                                                                            'ignore
                                                                                            v7231)))))))))
                                                                       g7754))
                                                                   g7234)))
                                                          (if x-cnd7753
                                                            g7234
                                                            (blame
                                                             g7232
                                                             '(lambda (v7231)
                                                                (if (eq?
                                                                     'init
                                                                     v7231)
                                                                  #t
                                                                  (if (eq?
                                                                       'opened
                                                                       v7231)
                                                                    #t
                                                                    (if (eq?
                                                                         'closed
                                                                         v7231)
                                                                      #t
                                                                      (eq?
                                                                       'ignore
                                                                       v7231))))))))))
                                                g7752)))
                                           (loop
                                            (lambda ()
                                              (letrec ((g7758 (loop))) g7758)))
                                           (readit
                                            (lambda (st)
                                              (letrec ((g7759
                                                        (letrec ((x-cnd7760
                                                                  (equal?
                                                                   'opened
                                                                   st)))
                                                          (if x-cnd7760
                                                            'opened
                                                            'ignore))))
                                                g7759)))
                                           (read_
                                            (lambda (x st)
                                              (letrec ((g7761
                                                        (if x (readit st) st)))
                                                g7761)))
                                           (closeit
                                            (lambda (st)
                                              (letrec ((g7762
                                                        (if cnd
                                                          (letrec ((g7763
                                                                    'closed))
                                                            g7763)
                                                          (if cnd
                                                            (letrec ((g7764
                                                                      'ignore))
                                                              g7764)
                                                            (letrec ((g7765
                                                                      (loop))
                                                                     (g7766 0))
                                                              g7766)))))
                                                g7762)))
                                           (close_
                                            (lambda (x st)
                                              (letrec ((g7767
                                                        (if x
                                                          (closeit st)
                                                          st)))
                                                g7767)))
                                           (f
                                            (lambda (x y st)
                                              (letrec ((g7768
                                                        (letrec ((x7770
                                                                  (close_
                                                                   x
                                                                   st)))
                                                          (close_ y x7770)))
                                                       (g7769
                                                        (letrec ((x7771
                                                                  (letrec ((x7772
                                                                            (read_
                                                                             x
                                                                             st)))
                                                                    (read_
                                                                     y
                                                                     x7772))))
                                                          (f x y x7771))))
                                                g7769)))
                                           (next
                                            (lambda (st)
                                              (letrec ((g7773
                                                        (letrec ((x-cnd7774
                                                                  (equal?
                                                                   'init
                                                                   st)))
                                                          (if x-cnd7774
                                                            'opened
                                                            'ignore))))
                                                g7773)))
                                           (g
                                            (lambda (b3 x st)
                                              (letrec ((g7775
                                                        (letrec ((x-cnd7776
                                                                  (> b3 0)))
                                                          (if x-cnd7776
                                                            (letrec ((x7777
                                                                      (next
                                                                       st)))
                                                              (f x #t x7777))
                                                            (f x #f st)))))
                                                g7775)))
                                           (main
                                            (lambda (b2 b3)
                                              (letrec ((g7778
                                                        (letrec ((x-cnd7780
                                                                  (> b2 0)))
                                                          (if x-cnd7780
                                                            (g b3 #t 'opened)
                                                            (g b3 #f 'init))))
                                                       (g7779 'unit))
                                                g7779))))
                                    (letrec ((g7781
                                              (letrec ((x7784
                                                        ((lambda (j7237
                                                                  k7238
                                                                  f7239)
                                                           (letrec ((g7785
                                                                     (lambda (g7235
                                                                              g7236)
                                                                       (letrec ((g7786
                                                                                 (letrec ((x7787
                                                                                           (letrec ((x7789
                                                                                                     (integer?/c
                                                                                                      j7237
                                                                                                      k7238
                                                                                                      g7235))
                                                                                                    (x7788
                                                                                                     (integer?/c
                                                                                                      j7237
                                                                                                      k7238
                                                                                                      g7236)))
                                                                                             (f7239
                                                                                              x7789
                                                                                              x7788))))
                                                                                   (any/c
                                                                                    j7237
                                                                                    k7238
                                                                                    x7787))))
                                                                         g7786))))
                                                             g7785))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7783 (input))
                                                       (x7782 (input)))
                                                (x7784 x7783 x7782))))
                                      g7781))))
                          g7253))))
              g7251)))
    g7250))
