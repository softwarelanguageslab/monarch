(letrec ((any? (lambda (v) (letrec ((g7242 #t)) g7242)))
         (meta (lambda (v) (letrec ((g7243 v)) g7243)))
         (member
          (lambda (v lst)
            (letrec ((g7244
                      (letrec ((g7245
                                (letrec ((x-e7246 lst))
                                  (match
                                   x-e7246
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7247 (eq? v v1)))
                                       (if x-cnd7247 #t (member v vs)))))))))
                        g7245)))
              g7244)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7248 (lambda (v) (letrec ((g7249 v)) g7249)))) g7248)))
         (nonzero?
          (lambda (v)
            (letrec ((g7250 (letrec ((x7251 (= v 0))) (not x7251)))) g7250))))
  (letrec ((g7252
            (letrec ((g7253
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7254 '())
                                 (g7255
                                  (letrec ((real/c
                                            (lambda (g7160 g7161 g7162)
                                              (letrec ((g7256
                                                        (letrec ((x-cnd7257
                                                                  (real?
                                                                   g7162)))
                                                          (if x-cnd7257
                                                            g7162
                                                            (blame
                                                             g7160
                                                             'real?)))))
                                                g7256)))
                                           (boolean?/c
                                            (lambda (g7163 g7164 g7165)
                                              (letrec ((g7258
                                                        (letrec ((x-cnd7259
                                                                  (boolean?
                                                                   g7165)))
                                                          (if x-cnd7259
                                                            g7165
                                                            (blame
                                                             g7163
                                                             'boolean?)))))
                                                g7258)))
                                           (number?/c
                                            (lambda (g7166 g7167 g7168)
                                              (letrec ((g7260
                                                        (letrec ((x-cnd7261
                                                                  (number?
                                                                   g7168)))
                                                          (if x-cnd7261
                                                            g7168
                                                            (blame
                                                             g7166
                                                             'number?)))))
                                                g7260)))
                                           (any/c
                                            (lambda (g7169 g7170 g7171)
                                              (letrec ((g7262
                                                        (letrec ((x-cnd7263
                                                                  ((lambda (v)
                                                                     (letrec ((g7264
                                                                               #t))
                                                                       g7264))
                                                                   g7171)))
                                                          (if x-cnd7263
                                                            g7171
                                                            (blame
                                                             g7169
                                                             '(lambda (v)
                                                                #t))))))
                                                g7262)))
                                           (any?/c
                                            (lambda (g7172 g7173 g7174)
                                              (letrec ((g7265
                                                        (letrec ((x-cnd7266
                                                                  ((lambda (v)
                                                                     (letrec ((g7267
                                                                               #t))
                                                                       g7267))
                                                                   g7174)))
                                                          (if x-cnd7266
                                                            g7174
                                                            (blame
                                                             g7172
                                                             '(lambda (v)
                                                                #t))))))
                                                g7265)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7175 g7176 g7177)
                                              (letrec ((g7268
                                                        (letrec ((x-cnd7269
                                                                  (pair?
                                                                   g7177)))
                                                          (if x-cnd7269
                                                            g7177
                                                            (blame
                                                             g7175
                                                             'pair?)))))
                                                g7268)))
                                           (pair?/c
                                            (lambda (g7178 g7179 g7180)
                                              (letrec ((g7270
                                                        (letrec ((x-cnd7271
                                                                  (pair?
                                                                   g7180)))
                                                          (if x-cnd7271
                                                            g7180
                                                            (blame
                                                             g7178
                                                             'pair?)))))
                                                g7270)))
                                           (integer?
                                            (lambda (g7181 g7182 g7183)
                                              (letrec ((g7272
                                                        (letrec ((x-cnd7273
                                                                  (integer?
                                                                   g7183)))
                                                          (if x-cnd7273
                                                            g7183
                                                            (blame
                                                             g7181
                                                             'integer?)))))
                                                g7272)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7274
                                                        (lambda (k j v)
                                                          (letrec ((g7275
                                                                    (letrec ((x-cnd7276
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7276
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7275))))
                                                g7274)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7277
                                                        (lambda (k j v)
                                                          (letrec ((g7278
                                                                    (letrec ((x-cnd7279
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7279
                                                                        '()
                                                                        (letrec ((x7283
                                                                                  (letrec ((x7284
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7284)))
                                                                                 (x7280
                                                                                  (letrec ((x7282
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7281
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7282
                                                                                     k
                                                                                     j
                                                                                     x7281))))
                                                                          (cons
                                                                           x7283
                                                                           x7280))))))
                                                            g7278))))
                                                g7277)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7285 #t)) g7285)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7286
                                                        (letrec ((x7287
                                                                  (= v 0)))
                                                          (not x7287))))
                                                g7286)))
                                           (nonzero?/c
                                            (lambda (g7184 g7185 g7186)
                                              (letrec ((g7288
                                                        (letrec ((x-cnd7289
                                                                  ((lambda (v)
                                                                     (letrec ((g7290
                                                                               (letrec ((x7291
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7291))))
                                                                       g7290))
                                                                   g7186)))
                                                          (if x-cnd7289
                                                            g7186
                                                            (blame
                                                             g7184
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7288)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7292 v)) g7292)))
                                           (+
                                            ((lambda (j7189 k7190 f7191)
                                               (letrec ((g7294
                                                         (lambda (g7187 g7188)
                                                           (letrec ((g7295
                                                                     (letrec ((x7296
                                                                               (letrec ((x7298
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7187))
                                                                                        (x7297
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7188)))
                                                                                 (f7191
                                                                                  x7298
                                                                                  x7297))))
                                                                       (number?/c
                                                                        j7189
                                                                        k7190
                                                                        x7296))))
                                                             g7295))))
                                                 g7294))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7293 (orig-+ a b)))
                                                 g7293))))
                                           (-
                                            ((lambda (j7194 k7195 f7196)
                                               (letrec ((g7300
                                                         (lambda (g7192 g7193)
                                                           (letrec ((g7301
                                                                     (letrec ((x7302
                                                                               (letrec ((x7304
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7192))
                                                                                        (x7303
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7193)))
                                                                                 (f7196
                                                                                  x7304
                                                                                  x7303))))
                                                                       (number?/c
                                                                        j7194
                                                                        k7195
                                                                        x7302))))
                                                             g7301))))
                                                 g7300))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7299 (orig-- a b)))
                                                 g7299))))
                                           (*
                                            ((lambda (j7199 k7200 f7201)
                                               (letrec ((g7306
                                                         (lambda (g7197 g7198)
                                                           (letrec ((g7307
                                                                     (letrec ((x7308
                                                                               (letrec ((x7310
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7197))
                                                                                        (x7309
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7198)))
                                                                                 (f7201
                                                                                  x7310
                                                                                  x7309))))
                                                                       (number?/c
                                                                        j7199
                                                                        k7200
                                                                        x7308))))
                                                             g7307))))
                                                 g7306))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7305 (orig-* a b)))
                                                 g7305))))
                                           (/
                                            ((lambda (j7204 k7205 f7206)
                                               (letrec ((g7312
                                                         (lambda (g7202 g7203)
                                                           (letrec ((g7313
                                                                     (letrec ((x7314
                                                                               (letrec ((x7316
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7202))
                                                                                        (x7315
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7203)))
                                                                                 (f7206
                                                                                  x7316
                                                                                  x7315))))
                                                                       (number?/c
                                                                        j7204
                                                                        k7205
                                                                        x7314))))
                                                             g7313))))
                                                 g7312))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7311 (orig-/ a b)))
                                                 g7311))))
                                           (car
                                            ((lambda (j7208 k7209 f7210)
                                               (letrec ((g7318
                                                         (lambda (g7207)
                                                           (letrec ((g7319
                                                                     (letrec ((x7320
                                                                               (letrec ((x7321
                                                                                         (pair?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7207)))
                                                                                 (f7210
                                                                                  x7321))))
                                                                       (any/c
                                                                        j7208
                                                                        k7209
                                                                        x7320))))
                                                             g7319))))
                                                 g7318))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7317 (orig-car p)))
                                                 g7317))))
                                           (cdr
                                            ((lambda (j7212 k7213 f7214)
                                               (letrec ((g7323
                                                         (lambda (g7211)
                                                           (letrec ((g7324
                                                                     (letrec ((x7325
                                                                               (letrec ((x7326
                                                                                         (pair?/c
                                                                                          j7212
                                                                                          k7213
                                                                                          g7211)))
                                                                                 (f7214
                                                                                  x7326))))
                                                                       (any/c
                                                                        j7212
                                                                        k7213
                                                                        x7325))))
                                                             g7324))))
                                                 g7323))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7322 (orig-cdr p)))
                                                 g7322))))
                                           (cons
                                            ((lambda (j7217 k7218 f7219)
                                               (letrec ((g7328
                                                         (lambda (g7215 g7216)
                                                           (letrec ((g7329
                                                                     (letrec ((x7330
                                                                               (letrec ((x7332
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7215))
                                                                                        (x7331
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7216)))
                                                                                 (f7219
                                                                                  x7332
                                                                                  x7331))))
                                                                       (pair?/c
                                                                        j7217
                                                                        k7218
                                                                        x7330))))
                                                             g7329))))
                                                 g7328))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7327 (cons a b)))
                                                 g7327))))
                                           (vector-ref
                                            ((lambda (j7221 k7222 f7223)
                                               (letrec ((g7334
                                                         (lambda (g7220)
                                                           (letrec ((g7335
                                                                     (letrec ((x7336
                                                                               (letrec ((x7337
                                                                                         (vector?/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7220)))
                                                                                 (f7223
                                                                                  x7337))))
                                                                       (integer?/c
                                                                        j7221
                                                                        k7222
                                                                        x7336))))
                                                             g7335))))
                                                 g7334))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7333
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7333))))
                                           (vector-set!
                                            ((lambda (j7226 k7227 f7228)
                                               (letrec ((g7339
                                                         (lambda (g7224 g7225)
                                                           (letrec ((g7340
                                                                     (letrec ((x7341
                                                                               (letrec ((x7343
                                                                                         (vector?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7224))
                                                                                        (x7342
                                                                                         (integer?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7225)))
                                                                                 (f7228
                                                                                  x7343
                                                                                  x7342))))
                                                                       (any/c
                                                                        j7226
                                                                        k7227
                                                                        x7341))))
                                                             g7340))))
                                                 g7339))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7338
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7338))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7344 #t)) g7344)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7345
                                                        (letrec ((x7346
                                                                  (letrec ((x7347
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7347))))
                                                          (cdr x7346))))
                                                g7345)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7348
                                                        (letrec ((x7351
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7351)))
                                                       (g7349
                                                        (letrec ((x7352
                                                                  (list? l)))
                                                          (assert x7352)))
                                                       (g7350
                                                        (letrec ((x-cnd7353
                                                                  (null? l)))
                                                          (if x-cnd7353
                                                            '()
                                                            (letrec ((x7356
                                                                      (letrec ((x7357
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7357)))
                                                                     (x7354
                                                                      (letrec ((x7355
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7355))))
                                                              (cons
                                                               x7356
                                                               x7354))))))
                                                g7350)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7358
                                                        (letrec ((x7359
                                                                  (car x)))
                                                          (cdr x7359))))
                                                g7358)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7360
                                                        (letrec ((x7361
                                                                  (letrec ((x7362
                                                                            (letrec ((x7363
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7363))))
                                                                    (cdr
                                                                     x7362))))
                                                          (car x7361))))
                                                g7360)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7364
                                                        (letrec ((x7365
                                                                  (letrec ((x7366
                                                                            (letrec ((x7367
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7367))))
                                                                    (car
                                                                     x7366))))
                                                          (cdr x7365))))
                                                g7364)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7368
                                                        (letrec ((x7371
                                                                  (string?
                                                                   filename)))
                                                          (assert x7371)))
                                                       (g7369
                                                        (letrec ((x7372
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7372)))
                                                       (g7370
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7373
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7374 res))
                                                            g7374))))
                                                g7370)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7375
                                                        (letrec ((x7376
                                                                  (letrec ((x7377
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7377))))
                                                          (car x7376))))
                                                g7375)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7378
                                                        (letrec ((x7379
                                                                  (letrec ((x7380
                                                                            (letrec ((x7381
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7381))))
                                                                    (car
                                                                     x7380))))
                                                          (cdr x7379))))
                                                g7378)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7382
                                                        (letrec ((x7384
                                                                  (list? l)))
                                                          (assert x7384)))
                                                       (g7383
                                                        (letrec ((x-cnd7385
                                                                  (null? l)))
                                                          (if x-cnd7385
                                                            #f
                                                            (letrec ((x-cnd7386
                                                                      (letrec ((x7387
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7387
                                                                         k))))
                                                              (if x-cnd7386
                                                                (car l)
                                                                (letrec ((x7388
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7388))))))))
                                                g7383)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7389
                                                        (letrec ((x7390
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7390))))
                                                g7389)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7391
                                                        (letrec ((x7393
                                                                  (list? l)))
                                                          (assert x7393)))
                                                       (g7392
                                                        (letrec ((x-cnd7394
                                                                  (null? l)))
                                                          (if x-cnd7394
                                                            ""
                                                            (letrec ((x7397
                                                                      (letrec ((x7398
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7398)))
                                                                     (x7395
                                                                      (letrec ((x7396
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7396))))
                                                              (string-append
                                                               x7397
                                                               x7395))))))
                                                g7392)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7399
                                                        (letrec ((x7402
                                                                  (char? c1)))
                                                          (assert x7402)))
                                                       (g7400
                                                        (letrec ((x7403
                                                                  (char? c2)))
                                                          (assert x7403)))
                                                       (g7401
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7404
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7404))))
                                                g7401)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7405
                                                        (letrec ((x7406
                                                                  (letrec ((x7407
                                                                            (letrec ((x7408
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7408))))
                                                                    (cdr
                                                                     x7407))))
                                                          (cdr x7406))))
                                                g7405)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7409
                                                        (letrec ((x7412
                                                                  (list? l)))
                                                          (assert x7412)))
                                                       (g7410
                                                        (letrec ((x7413
                                                                  (numer?)))
                                                          (assert x7413)))
                                                       (g7411
                                                        (letrec ((x-cnd7414
                                                                  (zero? k)))
                                                          (if x-cnd7414
                                                            x
                                                            (letrec ((x7416
                                                                      (cdr x))
                                                                     (x7415
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7416
                                                               x7415))))))
                                                g7411)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7417 '())) g7417)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7418
                                                        (letrec ((x-cnd7419
                                                                  (letrec ((x7420
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7420))))
                                                          (if x-cnd7419
                                                            (letrec ((x7421
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7421))
                                                            #f))))
                                                g7418)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7422
                                                        (letrec ((x7424
                                                                  (number? x)))
                                                          (assert x7424)))
                                                       (g7423
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7425
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7426
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7426)))))
                                                            g7425))))
                                                g7423)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7427
                                                        (letrec ((val7146
                                                                  (letrec ((x7428
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7428
                                                                     9))))
                                                          (letrec ((g7429
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7430
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7430
                                                                                   10))))
                                                                        (letrec ((g7431
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7432
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7432
                                                                                       32)))))
                                                                          g7431)))))
                                                            g7429))))
                                                g7427)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7433
                                                        (letrec ((x7434
                                                                  (letrec ((x7435
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7435))))
                                                          (cdr x7434))))
                                                g7433)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7436
                                                        (letrec ((x7438
                                                                  (number? x)))
                                                          (assert x7438)))
                                                       (g7437 (> x 0)))
                                                g7437)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7439 #f)) g7439)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7440
                                                        (letrec ((x7441
                                                                  (cdr x)))
                                                          (cdr x7441))))
                                                g7440)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7442
                                                        (letrec ((x7444
                                                                  (number? x)))
                                                          (assert x7444)))
                                                       (g7443
                                                        (letrec ((x-cnd7445
                                                                  (< x 0)))
                                                          (if x-cnd7445
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7443)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7446
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7447
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7449
                                                                                          (null?
                                                                                           a))
                                                                                         (x7448
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7449
                                                                                       x7448))))
                                                                        (letrec ((g7450
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7453
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7452
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7451
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7453
                                                                                                     x7452
                                                                                                     x7451))))
                                                                                      (letrec ((g7454
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7462
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7461
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7458
                                                                                                                      (letrec ((x7460
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7459
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7460
                                                                                                                         x7459)))
                                                                                                                     (x7455
                                                                                                                      (letrec ((x7457
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7456
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7457
                                                                                                                         x7456))))
                                                                                                              (and x7462
                                                                                                                   x7461
                                                                                                                   x7458
                                                                                                                   x7455))))
                                                                                                    (letrec ((g7463
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7482
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7481
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7464
                                                                                                                          (letrec ((x7478
                                                                                                                                    (letrec ((x7479
                                                                                                                                              (letrec ((x7480
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7480))))
                                                                                                                                      (x7479)))
                                                                                                                                   (x7465
                                                                                                                                    (letrec ((x7476
                                                                                                                                              (letrec ((x7477
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7477
                                                                                                                                                 n)))
                                                                                                                                             (x7466
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7467
                                                                                                                                                                    (letrec ((x7474
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7468
                                                                                                                                                                              (letrec ((x7471
                                                                                                                                                                                        (letrec ((x7473
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7472
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7473
                                                                                                                                                                                           x7472)))
                                                                                                                                                                                       (x7469
                                                                                                                                                                                        (letrec ((x7470
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7470))))
                                                                                                                                                                                (and x7471
                                                                                                                                                                                     x7469))))
                                                                                                                                                                      (or x7474
                                                                                                                                                                          x7468))))
                                                                                                                                                            g7467))))
                                                                                                                                                (letrec ((g7475
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7475))))
                                                                                                                                      (and x7476
                                                                                                                                           x7466))))
                                                                                                                            (let x7478 x7465))))
                                                                                                                  (and x7482
                                                                                                                       x7481
                                                                                                                       x7464)))))
                                                                                                      g7463)))))
                                                                                        g7454)))))
                                                                          g7450)))))
                                                            g7447))))
                                                g7446)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7483
                                                        (letrec ((x7484
                                                                  (letrec ((x7485
                                                                            (letrec ((x7486
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7486))))
                                                                    (car
                                                                     x7485))))
                                                          (cdr x7484))))
                                                g7483)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7487
                                                        (letrec ((x7488
                                                                  (letrec ((x7489
                                                                            (letrec ((x7490
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7490))))
                                                                    (car
                                                                     x7489))))
                                                          (car x7488))))
                                                g7487)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7491 (eq? x y)))
                                                g7491)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7492
                                                        (letrec ((x7494
                                                                  (number? x)))
                                                          (assert x7494)))
                                                       (g7493
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7495
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7496
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7496)))))
                                                            g7495))))
                                                g7493)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7497
                                                        (letrec ((x7500
                                                                  (string?
                                                                   filename)))
                                                          (assert x7500)))
                                                       (g7498
                                                        (letrec ((x7501
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7501)))
                                                       (g7499
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7502
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7503 res))
                                                            g7503))))
                                                g7499)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7504 (cons x '())))
                                                g7504)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7505
                                                        (letrec ((x7508
                                                                  (char? c1)))
                                                          (assert x7508)))
                                                       (g7506
                                                        (letrec ((x7509
                                                                  (char? c2)))
                                                          (assert x7509)))
                                                       (g7507
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7510
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7510))))
                                                g7507)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7511
                                                        (letrec ((x7512
                                                                  (letrec ((x7513
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7513))))
                                                          (cdr x7512))))
                                                g7511)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7514
                                                        (letrec ((x7515
                                                                  (letrec ((x7516
                                                                            (letrec ((x7517
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7517))))
                                                                    (car
                                                                     x7516))))
                                                          (cdr x7515))))
                                                g7514)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7518
                                                        (letrec ((x7519
                                                                  (letrec ((x7520
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7520))))
                                                          (car x7519))))
                                                g7518)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7521
                                                        (letrec ((x7522
                                                                  (letrec ((x7523
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7523))))
                                                          (car x7522))))
                                                g7521)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7524
                                                        (letrec ((x7527
                                                                  (char? c1)))
                                                          (assert x7527)))
                                                       (g7525
                                                        (letrec ((x7528
                                                                  (char? c2)))
                                                          (assert x7528)))
                                                       (g7526
                                                        (letrec ((x7529
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7529))))
                                                g7526)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7530
                                                        (letrec ((x7531
                                                                  (letrec ((x7532
                                                                            (letrec ((x7533
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7533))))
                                                                    (car
                                                                     x7532))))
                                                          (car x7531))))
                                                g7530)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7534
                                                        (letrec ((x7536
                                                                  (number? x)))
                                                          (assert x7536)))
                                                       (g7535 (< x 0)))
                                                g7535)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7537 (memq e l)))
                                                g7537)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7538
                                                        (letrec ((x7539
                                                                  (letrec ((x7540
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7540))))
                                                          (car x7539))))
                                                g7538)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7541 '())) g7541)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7542
                                                        (letrec ((x7544
                                                                  (list? l)))
                                                          (assert x7544)))
                                                       (g7543
                                                        (letrec ((x-cnd7545
                                                                  (null? l)))
                                                          (if x-cnd7545
                                                            '()
                                                            (letrec ((x7548
                                                                      (letrec ((x7549
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7549)))
                                                                     (x7546
                                                                      (letrec ((x7547
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7547))))
                                                              (append
                                                               x7548
                                                               x7546))))))
                                                g7543)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7550
                                                        (letrec ((x7551
                                                                  (letrec ((x7552
                                                                            (letrec ((x7553
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7553))))
                                                                    (car
                                                                     x7552))))
                                                          (car x7551))))
                                                g7550)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7554
                                                        (letrec ((x7555
                                                                  (letrec ((x7556
                                                                            (letrec ((x7557
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7557))))
                                                                    (cdr
                                                                     x7556))))
                                                          (cdr x7555))))
                                                g7554)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7558
                                                        (letrec ((x7560
                                                                  (number? x)))
                                                          (assert x7560)))
                                                       (g7559
                                                        (letrec ((x7561
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7561))))
                                                g7559)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7562
                                                        (letrec ((x7563
                                                                  (letrec ((x7564
                                                                            (letrec ((x7565
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7565))))
                                                                    (car
                                                                     x7564))))
                                                          (car x7563))))
                                                g7562)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7566
                                                        (letrec ((x7569
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7569)))
                                                       (g7567
                                                        (letrec ((x7570
                                                                  (list?
                                                                   args)))
                                                          (assert x7570)))
                                                       (g7568
                                                        (if cnd
                                                          (letrec ((g7571
                                                                    (proc)))
                                                            g7571)
                                                          (if cnd
                                                            (letrec ((g7572
                                                                      (letrec ((x7573
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7573))))
                                                              g7572)
                                                            (if cnd
                                                              (letrec ((g7574
                                                                        (letrec ((x7576
                                                                                  (car
                                                                                   args))
                                                                                 (x7575
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7576
                                                                           x7575))))
                                                                g7574)
                                                              (if cnd
                                                                (letrec ((g7577
                                                                          (letrec ((x7580
                                                                                    (car
                                                                                     args))
                                                                                   (x7579
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7578
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7580
                                                                             x7579
                                                                             x7578))))
                                                                  g7577)
                                                                (if cnd
                                                                  (letrec ((g7581
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
                                                                                       args)))
                                                                              (proc
                                                                               x7585
                                                                               x7584
                                                                               x7583
                                                                               x7582))))
                                                                    g7581)
                                                                  (if cnd
                                                                    (letrec ((g7586
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
                                                                                           x7588))))
                                                                                (proc
                                                                                 x7592
                                                                                 x7591
                                                                                 x7590
                                                                                 x7589
                                                                                 x7587))))
                                                                      g7586)
                                                                    (if cnd
                                                                      (letrec ((g7593
                                                                                (letrec ((x7601
                                                                                          (car
                                                                                           args))
                                                                                         (x7600
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7599
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7598
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7596
                                                                                          (letrec ((x7597
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7597)))
                                                                                         (x7594
                                                                                          (letrec ((x7595
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7595))))
                                                                                  (proc
                                                                                   x7601
                                                                                   x7600
                                                                                   x7599
                                                                                   x7598
                                                                                   x7596
                                                                                   x7594))))
                                                                        g7593)
                                                                      (if cnd
                                                                        (letrec ((g7602
                                                                                  (letrec ((x7612
                                                                                            (car
                                                                                             args))
                                                                                           (x7611
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7610
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7609
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7607
                                                                                            (letrec ((x7608
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7608)))
                                                                                           (x7605
                                                                                            (letrec ((x7606
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7606)))
                                                                                           (x7603
                                                                                            (letrec ((x7604
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7604))))
                                                                                    (proc
                                                                                     x7612
                                                                                     x7611
                                                                                     x7610
                                                                                     x7609
                                                                                     x7607
                                                                                     x7605
                                                                                     x7603))))
                                                                          g7602)
                                                                        (letrec ((g7613
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7613)))))))))))
                                                g7568)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7614
                                                        (letrec ((x7616
                                                                  (list? l)))
                                                          (assert x7616)))
                                                       (g7615
                                                        (letrec ((x-cnd7617
                                                                  (null? l)))
                                                          (if x-cnd7617
                                                            #f
                                                            (letrec ((x-cnd7618
                                                                      (letrec ((x7619
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7619
                                                                         e))))
                                                              (if x-cnd7618
                                                                l
                                                                (letrec ((x7620
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7620))))))))
                                                g7615)))
                                           (cddddr
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
                                                          (cdr x7622))))
                                                g7621)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7625
                                                        (letrec ((x7626
                                                                  (letrec ((x7627
                                                                            (letrec ((x7628
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7628))))
                                                                    (cdr
                                                                     x7627))))
                                                          (car x7626))))
                                                g7625)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7629 (random 42)))
                                                g7629)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7630
                                                        (letrec ((x7632
                                                                  (number? x)))
                                                          (assert x7632)))
                                                       (g7631 (= x 0)))
                                                g7631)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7633
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7634
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7634))))
                                                g7633)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7635
                                                        (letrec ((x7636
                                                                  (cdr x)))
                                                          (car x7636))))
                                                g7635)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7637
                                                        (letrec ((val7156
                                                                  (letrec ((x7640
                                                                            (pair?
                                                                             l))
                                                                           (x7638
                                                                            (letrec ((x7639
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7639))))
                                                                    (and x7640
                                                                         x7638))))
                                                          (letrec ((g7641
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7641))))
                                                g7637)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7642
                                                        (letrec ((x7643
                                                                  (letrec ((x7644
                                                                            (letrec ((x7645
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7645))))
                                                                    (cdr
                                                                     x7644))))
                                                          (cdr x7643))))
                                                g7642)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7646
                                                        (letrec ((x-cnd7647
                                                                  (letrec ((x7648
                                                                            #\0))
                                                                    (char<=?
                                                                     x7648
                                                                     c))))
                                                          (if x-cnd7647
                                                            (letrec ((x7649
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7649))
                                                            #f))))
                                                g7646)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7655
                                                                         k))))
                                                              (if x-cnd7654
                                                                (car l)
                                                                (letrec ((x7656
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7656))))))))
                                                g7651)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7657 (if x #f #t)))
                                                g7657)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7658 (append l1 l2)))
                                                g7658)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7659
                                                        (letrec ((x7661
                                                                  (list? l)))
                                                          (assert x7661)))
                                                       (g7660
                                                        (letrec ((x-cnd7662
                                                                  (null? l)))
                                                          (if x-cnd7662
                                                            #f
                                                            (letrec ((x-cnd7663
                                                                      (letrec ((x7664
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7664
                                                                         e))))
                                                              (if x-cnd7663
                                                                l
                                                                (letrec ((x7665
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7665))))))))
                                                g7660)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7666
                                                        (letrec ((x7667
                                                                  (letrec ((x7668
                                                                            (letrec ((x7669
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7669))))
                                                                    (cdr
                                                                     x7668))))
                                                          (car x7667))))
                                                g7666)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7670
                                                        (letrec ((x7672
                                                                  (list? l)))
                                                          (assert x7672)))
                                                       (g7671
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7673
                                                                              (letrec ((x-cnd7674
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7674
                                                                                  0
                                                                                  (letrec ((x7675
                                                                                            (letrec ((x7676
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7676))))
                                                                                    (+
                                                                                     1
                                                                                     x7675))))))
                                                                      g7673))))
                                                          (letrec ((g7677
                                                                    (rec l)))
                                                            g7677))))
                                                g7671)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7678
                                                        (letrec ((x7681
                                                                  (char? c1)))
                                                          (assert x7681)))
                                                       (g7679
                                                        (letrec ((x7682
                                                                  (char? c2)))
                                                          (assert x7682)))
                                                       (g7680
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7683
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7683))))
                                                g7680)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7684
                                                        (letrec ((x7685
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7685))))
                                                g7684)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7686
                                                        (letrec ((x7687
                                                                  (letrec ((x7688
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7688))))
                                                          (cdr x7687))))
                                                g7686)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7689
                                                        (letrec ((x7691
                                                                  (list? l)))
                                                          (assert x7691)))
                                                       (g7690
                                                        (letrec ((x-cnd7692
                                                                  (null? l)))
                                                          (if x-cnd7692
                                                            #f
                                                            (letrec ((x-cnd7693
                                                                      (letrec ((x7694
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7694
                                                                         k))))
                                                              (if x-cnd7693
                                                                (car l)
                                                                (letrec ((x7695
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7695))))))))
                                                g7690)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7696
                                                        (letrec ((x7697
                                                                  (car x)))
                                                          (car x7697))))
                                                g7696)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7698
                                                        (letrec ((x7701
                                                                  (char? c1)))
                                                          (assert x7701)))
                                                       (g7699
                                                        (letrec ((x7702
                                                                  (char? c2)))
                                                          (assert x7702)))
                                                       (g7700
                                                        (letrec ((x7703
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7703))))
                                                g7700)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7704
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7705
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7705))))
                                                g7704)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7706
                                                        (letrec ((x7709
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7709)))
                                                       (g7707
                                                        (letrec ((x7710
                                                                  (list? l)))
                                                          (assert x7710)))
                                                       (g7708
                                                        (letrec ((x-cnd7711
                                                                  (null? l)))
                                                          (if x-cnd7711
                                                            #t
                                                            (letrec ((x-cnd7712
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7712
                                                                (letrec ((g7713
                                                                          (letrec ((x7715
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7715)))
                                                                         (g7714
                                                                          (letrec ((x7716
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7716))))
                                                                  g7714)
                                                                '()))))))
                                                g7708)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7717
                                                        (letrec ((x7719
                                                                  (number? x)))
                                                          (assert x7719)))
                                                       (g7718
                                                        (letrec ((x-cnd7720
                                                                  (< x 0)))
                                                          (if x-cnd7720
                                                            (- 0 x)
                                                            x))))
                                                g7718)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7721
                                                        (letrec ((x7724
                                                                  (char? c1)))
                                                          (assert x7724)))
                                                       (g7722
                                                        (letrec ((x7725
                                                                  (char? c2)))
                                                          (assert x7725)))
                                                       (g7723
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7726
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7726))))
                                                g7723)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7727
                                                        (letrec ((x7728
                                                                  (letrec ((x7729
                                                                            (letrec ((x7730
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7730))))
                                                                    (cdr
                                                                     x7729))))
                                                          (car x7728))))
                                                g7727)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7731 #f)) g7731)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7732
                                                        (letrec ((x7734
                                                                  (letrec ((x7735
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7735)))
                                                                 (x7733
                                                                  (gcd m n)))
                                                          (/ x7734 x7733))))
                                                g7732)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7736
                                                        (letrec ((x7738
                                                                  (number? x)))
                                                          (assert x7738)))
                                                       (g7737
                                                        (letrec ((x7739
                                                                  (<= x y)))
                                                          (not x7739))))
                                                g7737)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7740
                                                        (letrec ((x7744
                                                                  (list? l)))
                                                          (assert x7744)))
                                                       (g7741
                                                        (letrec ((x7745
                                                                  (number?
                                                                   index)))
                                                          (assert x7745)))
                                                       (g7742
                                                        (letrec ((x7746
                                                                  (letrec ((x7747
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7747))))
                                                          (assert x7746)))
                                                       (g7743
                                                        (letrec ((x-cnd7748
                                                                  (= index 0)))
                                                          (if x-cnd7748
                                                            (car l)
                                                            (letrec ((x7750
                                                                      (cdr l))
                                                                     (x7749
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7750
                                                               x7749))))))
                                                g7743)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7751
                                                        (letrec ((x-cnd7752
                                                                  (= b 0)))
                                                          (if x-cnd7752
                                                            a
                                                            (letrec ((x7753
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7753))))))
                                                g7751)))
                                           (f
                                            (lambda (g x)
                                              (letrec ((g7754
                                                        (letrec ((x-cnd7755
                                                                  (>= x 0)))
                                                          (if x-cnd7755
                                                            (g x)
                                                            (letrec ((x7757
                                                                      (letrec ((x7759
                                                                                (x))
                                                                               (x7758
                                                                                (f
                                                                                 g
                                                                                 x)))
                                                                        (λ x7759
                                                                          x7758)))
                                                                     (x7756
                                                                      (g x)))
                                                              (f
                                                               x7757
                                                               x7756))))))
                                                g7754)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7760 (f add1 n)))
                                                g7760))))
                                    (letrec ((g7761
                                              (letrec ((x7765
                                                        ((lambda (j7231
                                                                  k7232
                                                                  f7233)
                                                           (letrec ((g7766
                                                                     (lambda (g7229
                                                                              g7230)
                                                                       (letrec ((g7767
                                                                                 (letrec ((x7768
                                                                                           (letrec ((x7770
                                                                                                     ((lambda (j7235
                                                                                                               k7236
                                                                                                               f7237)
                                                                                                        (letrec ((g7771
                                                                                                                  (lambda (g7234)
                                                                                                                    (letrec ((g7772
                                                                                                                              (letrec ((x7773
                                                                                                                                        (letrec ((x7774
                                                                                                                                                  (integer?
                                                                                                                                                   j7235
                                                                                                                                                   k7236
                                                                                                                                                   g7234)))
                                                                                                                                          (f7237
                                                                                                                                           x7774))))
                                                                                                                                (integer?
                                                                                                                                 j7235
                                                                                                                                 k7236
                                                                                                                                 x7773))))
                                                                                                                      g7772))))
                                                                                                          g7771))
                                                                                                      j7231
                                                                                                      k7232
                                                                                                      g7229))
                                                                                                    (x7769
                                                                                                     (integer?
                                                                                                      j7231
                                                                                                      k7232
                                                                                                      g7230)))
                                                                                             (f7233
                                                                                              x7770
                                                                                              x7769))))
                                                                                   (integer?
                                                                                    j7231
                                                                                    k7232
                                                                                    x7768))))
                                                                         g7767))))
                                                             g7766))
                                                         'module
                                                         'importer
                                                         f))
                                                       (x7764 (input))
                                                       (x7763 (input)))
                                                (x7765 x7764 x7763)))
                                             (g7762
                                              (letrec ((x7776
                                                        ((lambda (j7239
                                                                  k7240
                                                                  f7241)
                                                           (letrec ((g7777
                                                                     (lambda (g7238)
                                                                       (letrec ((g7778
                                                                                 (letrec ((x7781
                                                                                           (letrec ((x7782
                                                                                                     (>=/c
                                                                                                      0)))
                                                                                             (and/c
                                                                                              integer?
                                                                                              x7782)))
                                                                                          (x7779
                                                                                           (letrec ((x7780
                                                                                                     (integer?
                                                                                                      j7239
                                                                                                      k7240
                                                                                                      g7238)))
                                                                                             (f7241
                                                                                              x7780))))
                                                                                   (x7781
                                                                                    j7239
                                                                                    k7240
                                                                                    x7779))))
                                                                         g7778))))
                                                             g7777))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7775 (input)))
                                                (x7776 x7775))))
                                      g7762))))
                          g7255))))
              g7253)))
    g7252))
