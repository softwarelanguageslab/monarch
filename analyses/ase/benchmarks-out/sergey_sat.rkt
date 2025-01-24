(letrec ((any? (lambda (v) (letrec ((g7230 #t)) g7230)))
         (meta (lambda (v) (letrec ((g7231 v)) g7231)))
         (member
          (lambda (v lst)
            (letrec ((g7232
                      (letrec ((g7233
                                (letrec ((x-e7234 lst))
                                  (match
                                   x-e7234
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7235 (eq? v v1)))
                                       (if x-cnd7235 #t (member v vs)))))))))
                        g7233)))
              g7232)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7236 (lambda (v) (letrec ((g7237 v)) g7237)))) g7236)))
         (nonzero?
          (lambda (v)
            (letrec ((g7238 (letrec ((x7239 (= v 0))) (not x7239)))) g7238))))
  (letrec ((g7240
            (letrec ((g7241
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7242 '())
                                 (g7243
                                  (letrec ((real/c
                                            (lambda (g7161 g7162 g7163)
                                              (letrec ((g7244
                                                        (letrec ((x-cnd7245
                                                                  (real?
                                                                   g7163)))
                                                          (if x-cnd7245
                                                            g7163
                                                            (blame
                                                             g7161
                                                             'real?)))))
                                                g7244)))
                                           (boolean?/c
                                            (lambda (g7164 g7165 g7166)
                                              (letrec ((g7246
                                                        (letrec ((x-cnd7247
                                                                  (boolean?
                                                                   g7166)))
                                                          (if x-cnd7247
                                                            g7166
                                                            (blame
                                                             g7164
                                                             'boolean?)))))
                                                g7246)))
                                           (number?/c
                                            (lambda (g7167 g7168 g7169)
                                              (letrec ((g7248
                                                        (letrec ((x-cnd7249
                                                                  (number?
                                                                   g7169)))
                                                          (if x-cnd7249
                                                            g7169
                                                            (blame
                                                             g7167
                                                             'number?)))))
                                                g7248)))
                                           (any/c
                                            (lambda (g7170 g7171 g7172)
                                              (letrec ((g7250
                                                        (letrec ((x-cnd7251
                                                                  ((lambda (v)
                                                                     (letrec ((g7252
                                                                               #t))
                                                                       g7252))
                                                                   g7172)))
                                                          (if x-cnd7251
                                                            g7172
                                                            (blame
                                                             g7170
                                                             '(lambda (v)
                                                                #t))))))
                                                g7250)))
                                           (any?/c
                                            (lambda (g7173 g7174 g7175)
                                              (letrec ((g7253
                                                        (letrec ((x-cnd7254
                                                                  ((lambda (v)
                                                                     (letrec ((g7255
                                                                               #t))
                                                                       g7255))
                                                                   g7175)))
                                                          (if x-cnd7254
                                                            g7175
                                                            (blame
                                                             g7173
                                                             '(lambda (v)
                                                                #t))))))
                                                g7253)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7176 g7177 g7178)
                                              (letrec ((g7256
                                                        (letrec ((x-cnd7257
                                                                  (pair?
                                                                   g7178)))
                                                          (if x-cnd7257
                                                            g7178
                                                            (blame
                                                             g7176
                                                             'pair?)))))
                                                g7256)))
                                           (pair?/c
                                            (lambda (g7179 g7180 g7181)
                                              (letrec ((g7258
                                                        (letrec ((x-cnd7259
                                                                  (pair?
                                                                   g7181)))
                                                          (if x-cnd7259
                                                            g7181
                                                            (blame
                                                             g7179
                                                             'pair?)))))
                                                g7258)))
                                           (integer?/c
                                            (lambda (g7182 g7183 g7184)
                                              (letrec ((g7260
                                                        (letrec ((x-cnd7261
                                                                  (integer?
                                                                   g7184)))
                                                          (if x-cnd7261
                                                            g7184
                                                            (blame
                                                             g7182
                                                             'integer?)))))
                                                g7260)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7262
                                                        (lambda (k j v)
                                                          (letrec ((g7263
                                                                    (letrec ((x-cnd7264
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7264
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7263))))
                                                g7262)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7265
                                                        (lambda (k j v)
                                                          (letrec ((g7266
                                                                    (letrec ((x-cnd7267
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7267
                                                                        '()
                                                                        (letrec ((x7271
                                                                                  (letrec ((x7272
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7272)))
                                                                                 (x7268
                                                                                  (letrec ((x7270
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7269
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7270
                                                                                     k
                                                                                     j
                                                                                     x7269))))
                                                                          (cons
                                                                           x7271
                                                                           x7268))))))
                                                            g7266))))
                                                g7265)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7273 #t)) g7273)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7274
                                                        (letrec ((x7275
                                                                  (= v 0)))
                                                          (not x7275))))
                                                g7274)))
                                           (nonzero?/c
                                            (lambda (g7185 g7186 g7187)
                                              (letrec ((g7276
                                                        (letrec ((x-cnd7277
                                                                  ((lambda (v)
                                                                     (letrec ((g7278
                                                                               (letrec ((x7279
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7279))))
                                                                       g7278))
                                                                   g7187)))
                                                          (if x-cnd7277
                                                            g7187
                                                            (blame
                                                             g7185
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7276)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7280 v)) g7280)))
                                           (+
                                            ((lambda (j7190 k7191 f7192)
                                               (letrec ((g7282
                                                         (lambda (g7188 g7189)
                                                           (letrec ((g7283
                                                                     (letrec ((x7284
                                                                               (letrec ((x7286
                                                                                         (number?/c
                                                                                          j7190
                                                                                          k7191
                                                                                          g7188))
                                                                                        (x7285
                                                                                         (number?/c
                                                                                          j7190
                                                                                          k7191
                                                                                          g7189)))
                                                                                 (f7192
                                                                                  x7286
                                                                                  x7285))))
                                                                       (number?/c
                                                                        j7190
                                                                        k7191
                                                                        x7284))))
                                                             g7283))))
                                                 g7282))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7281 (orig-+ a b)))
                                                 g7281))))
                                           (-
                                            ((lambda (j7195 k7196 f7197)
                                               (letrec ((g7288
                                                         (lambda (g7193 g7194)
                                                           (letrec ((g7289
                                                                     (letrec ((x7290
                                                                               (letrec ((x7292
                                                                                         (number?/c
                                                                                          j7195
                                                                                          k7196
                                                                                          g7193))
                                                                                        (x7291
                                                                                         (number?/c
                                                                                          j7195
                                                                                          k7196
                                                                                          g7194)))
                                                                                 (f7197
                                                                                  x7292
                                                                                  x7291))))
                                                                       (number?/c
                                                                        j7195
                                                                        k7196
                                                                        x7290))))
                                                             g7289))))
                                                 g7288))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7287 (orig-- a b)))
                                                 g7287))))
                                           (*
                                            ((lambda (j7200 k7201 f7202)
                                               (letrec ((g7294
                                                         (lambda (g7198 g7199)
                                                           (letrec ((g7295
                                                                     (letrec ((x7296
                                                                               (letrec ((x7298
                                                                                         (number?/c
                                                                                          j7200
                                                                                          k7201
                                                                                          g7198))
                                                                                        (x7297
                                                                                         (number?/c
                                                                                          j7200
                                                                                          k7201
                                                                                          g7199)))
                                                                                 (f7202
                                                                                  x7298
                                                                                  x7297))))
                                                                       (number?/c
                                                                        j7200
                                                                        k7201
                                                                        x7296))))
                                                             g7295))))
                                                 g7294))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7293 (orig-* a b)))
                                                 g7293))))
                                           (/
                                            ((lambda (j7205 k7206 f7207)
                                               (letrec ((g7300
                                                         (lambda (g7203 g7204)
                                                           (letrec ((g7301
                                                                     (letrec ((x7302
                                                                               (letrec ((x7304
                                                                                         (number?/c
                                                                                          j7205
                                                                                          k7206
                                                                                          g7203))
                                                                                        (x7303
                                                                                         (number?/c
                                                                                          j7205
                                                                                          k7206
                                                                                          g7204)))
                                                                                 (f7207
                                                                                  x7304
                                                                                  x7303))))
                                                                       (number?/c
                                                                        j7205
                                                                        k7206
                                                                        x7302))))
                                                             g7301))))
                                                 g7300))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7299 (orig-/ a b)))
                                                 g7299))))
                                           (car
                                            ((lambda (j7209 k7210 f7211)
                                               (letrec ((g7306
                                                         (lambda (g7208)
                                                           (letrec ((g7307
                                                                     (letrec ((x7308
                                                                               (letrec ((x7309
                                                                                         (pair?/c
                                                                                          j7209
                                                                                          k7210
                                                                                          g7208)))
                                                                                 (f7211
                                                                                  x7309))))
                                                                       (any/c
                                                                        j7209
                                                                        k7210
                                                                        x7308))))
                                                             g7307))))
                                                 g7306))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7305 (orig-car p)))
                                                 g7305))))
                                           (cdr
                                            ((lambda (j7213 k7214 f7215)
                                               (letrec ((g7311
                                                         (lambda (g7212)
                                                           (letrec ((g7312
                                                                     (letrec ((x7313
                                                                               (letrec ((x7314
                                                                                         (pair?/c
                                                                                          j7213
                                                                                          k7214
                                                                                          g7212)))
                                                                                 (f7215
                                                                                  x7314))))
                                                                       (any/c
                                                                        j7213
                                                                        k7214
                                                                        x7313))))
                                                             g7312))))
                                                 g7311))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7310 (orig-cdr p)))
                                                 g7310))))
                                           (cons
                                            ((lambda (j7218 k7219 f7220)
                                               (letrec ((g7316
                                                         (lambda (g7216 g7217)
                                                           (letrec ((g7317
                                                                     (letrec ((x7318
                                                                               (letrec ((x7320
                                                                                         (any/c
                                                                                          j7218
                                                                                          k7219
                                                                                          g7216))
                                                                                        (x7319
                                                                                         (any/c
                                                                                          j7218
                                                                                          k7219
                                                                                          g7217)))
                                                                                 (f7220
                                                                                  x7320
                                                                                  x7319))))
                                                                       (pair?/c
                                                                        j7218
                                                                        k7219
                                                                        x7318))))
                                                             g7317))))
                                                 g7316))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7315 (cons a b)))
                                                 g7315))))
                                           (vector-ref
                                            ((lambda (j7222 k7223 f7224)
                                               (letrec ((g7322
                                                         (lambda (g7221)
                                                           (letrec ((g7323
                                                                     (letrec ((x7324
                                                                               (letrec ((x7325
                                                                                         (vector?/c
                                                                                          j7222
                                                                                          k7223
                                                                                          g7221)))
                                                                                 (f7224
                                                                                  x7325))))
                                                                       (integer?/c
                                                                        j7222
                                                                        k7223
                                                                        x7324))))
                                                             g7323))))
                                                 g7322))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7321
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7321))))
                                           (vector-set!
                                            ((lambda (j7227 k7228 f7229)
                                               (letrec ((g7327
                                                         (lambda (g7225 g7226)
                                                           (letrec ((g7328
                                                                     (letrec ((x7329
                                                                               (letrec ((x7331
                                                                                         (vector?/c
                                                                                          j7227
                                                                                          k7228
                                                                                          g7225))
                                                                                        (x7330
                                                                                         (integer?/c
                                                                                          j7227
                                                                                          k7228
                                                                                          g7226)))
                                                                                 (f7229
                                                                                  x7331
                                                                                  x7330))))
                                                                       (any/c
                                                                        j7227
                                                                        k7228
                                                                        x7329))))
                                                             g7328))))
                                                 g7327))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7326
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7326))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7332 #t)) g7332)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7333
                                                        (letrec ((x7334
                                                                  (letrec ((x7335
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7335))))
                                                          (cdr x7334))))
                                                g7333)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7336
                                                        (letrec ((x7339
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7339)))
                                                       (g7337
                                                        (letrec ((x7340
                                                                  (list? l)))
                                                          (assert x7340)))
                                                       (g7338
                                                        (letrec ((x-cnd7341
                                                                  (null? l)))
                                                          (if x-cnd7341
                                                            '()
                                                            (letrec ((x7344
                                                                      (letrec ((x7345
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7345)))
                                                                     (x7342
                                                                      (letrec ((x7343
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7343))))
                                                              (cons
                                                               x7344
                                                               x7342))))))
                                                g7338)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7346
                                                        (letrec ((x7347
                                                                  (car x)))
                                                          (cdr x7347))))
                                                g7346)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7348
                                                        (letrec ((x7349
                                                                  (letrec ((x7350
                                                                            (letrec ((x7351
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7351))))
                                                                    (cdr
                                                                     x7350))))
                                                          (car x7349))))
                                                g7348)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7352
                                                        (letrec ((x7353
                                                                  (letrec ((x7354
                                                                            (letrec ((x7355
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7355))))
                                                                    (car
                                                                     x7354))))
                                                          (cdr x7353))))
                                                g7352)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7356
                                                        (letrec ((x7359
                                                                  (string?
                                                                   filename)))
                                                          (assert x7359)))
                                                       (g7357
                                                        (letrec ((x7360
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7360)))
                                                       (g7358
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7361
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7362 res))
                                                            g7362))))
                                                g7358)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7363
                                                        (letrec ((x7364
                                                                  (letrec ((x7365
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7365))))
                                                          (car x7364))))
                                                g7363)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7366
                                                        (letrec ((x7367
                                                                  (letrec ((x7368
                                                                            (letrec ((x7369
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7369))))
                                                                    (car
                                                                     x7368))))
                                                          (cdr x7367))))
                                                g7366)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7370
                                                        (letrec ((x7372
                                                                  (list? l)))
                                                          (assert x7372)))
                                                       (g7371
                                                        (letrec ((x-cnd7373
                                                                  (null? l)))
                                                          (if x-cnd7373
                                                            #f
                                                            (letrec ((x-cnd7374
                                                                      (letrec ((x7375
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7375
                                                                         k))))
                                                              (if x-cnd7374
                                                                (car l)
                                                                (letrec ((x7376
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7376))))))))
                                                g7371)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7377
                                                        (letrec ((x7378
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7378))))
                                                g7377)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7379
                                                        (letrec ((x7381
                                                                  (list? l)))
                                                          (assert x7381)))
                                                       (g7380
                                                        (letrec ((x-cnd7382
                                                                  (null? l)))
                                                          (if x-cnd7382
                                                            ""
                                                            (letrec ((x7385
                                                                      (letrec ((x7386
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7386)))
                                                                     (x7383
                                                                      (letrec ((x7384
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7384))))
                                                              (string-append
                                                               x7385
                                                               x7383))))))
                                                g7380)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7387
                                                        (letrec ((x7390
                                                                  (char? c1)))
                                                          (assert x7390)))
                                                       (g7388
                                                        (letrec ((x7391
                                                                  (char? c2)))
                                                          (assert x7391)))
                                                       (g7389
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7392
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7392))))
                                                g7389)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7393
                                                        (letrec ((x7394
                                                                  (letrec ((x7395
                                                                            (letrec ((x7396
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7396))))
                                                                    (cdr
                                                                     x7395))))
                                                          (cdr x7394))))
                                                g7393)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7397
                                                        (letrec ((x7400
                                                                  (list? l)))
                                                          (assert x7400)))
                                                       (g7398
                                                        (letrec ((x7401
                                                                  (numer?)))
                                                          (assert x7401)))
                                                       (g7399
                                                        (letrec ((x-cnd7402
                                                                  (zero? k)))
                                                          (if x-cnd7402
                                                            x
                                                            (letrec ((x7404
                                                                      (cdr x))
                                                                     (x7403
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7404
                                                               x7403))))))
                                                g7399)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7405 '())) g7405)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7406
                                                        (letrec ((x-cnd7407
                                                                  (letrec ((x7408
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7408))))
                                                          (if x-cnd7407
                                                            (letrec ((x7409
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7409))
                                                            #f))))
                                                g7406)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7410
                                                        (letrec ((x7412
                                                                  (number? x)))
                                                          (assert x7412)))
                                                       (g7411
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7413
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7414
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7414)))))
                                                            g7413))))
                                                g7411)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7415
                                                        (letrec ((val7146
                                                                  (letrec ((x7416
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7416
                                                                     9))))
                                                          (letrec ((g7417
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7418
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7418
                                                                                   10))))
                                                                        (letrec ((g7419
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7420
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7420
                                                                                       32)))))
                                                                          g7419)))))
                                                            g7417))))
                                                g7415)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7421
                                                        (letrec ((x7422
                                                                  (letrec ((x7423
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7423))))
                                                          (cdr x7422))))
                                                g7421)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7424
                                                        (letrec ((x7426
                                                                  (number? x)))
                                                          (assert x7426)))
                                                       (g7425 (> x 0)))
                                                g7425)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7427 #f)) g7427)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7428
                                                        (letrec ((x7429
                                                                  (cdr x)))
                                                          (cdr x7429))))
                                                g7428)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7430
                                                        (letrec ((x7432
                                                                  (number? x)))
                                                          (assert x7432)))
                                                       (g7431
                                                        (letrec ((x-cnd7433
                                                                  (< x 0)))
                                                          (if x-cnd7433
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7431)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7434
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7435
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7437
                                                                                          (null?
                                                                                           a))
                                                                                         (x7436
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7437
                                                                                       x7436))))
                                                                        (letrec ((g7438
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7441
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7440
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7439
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7441
                                                                                                     x7440
                                                                                                     x7439))))
                                                                                      (letrec ((g7442
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7450
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7449
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7446
                                                                                                                      (letrec ((x7448
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7447
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7448
                                                                                                                         x7447)))
                                                                                                                     (x7443
                                                                                                                      (letrec ((x7445
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7444
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7445
                                                                                                                         x7444))))
                                                                                                              (and x7450
                                                                                                                   x7449
                                                                                                                   x7446
                                                                                                                   x7443))))
                                                                                                    (letrec ((g7451
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7470
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7469
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7452
                                                                                                                          (letrec ((x7466
                                                                                                                                    (letrec ((x7467
                                                                                                                                              (letrec ((x7468
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7468))))
                                                                                                                                      (x7467)))
                                                                                                                                   (x7453
                                                                                                                                    (letrec ((x7464
                                                                                                                                              (letrec ((x7465
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7465
                                                                                                                                                 n)))
                                                                                                                                             (x7454
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7455
                                                                                                                                                                    (letrec ((x7462
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7456
                                                                                                                                                                              (letrec ((x7459
                                                                                                                                                                                        (letrec ((x7461
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7460
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7461
                                                                                                                                                                                           x7460)))
                                                                                                                                                                                       (x7457
                                                                                                                                                                                        (letrec ((x7458
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7458))))
                                                                                                                                                                                (and x7459
                                                                                                                                                                                     x7457))))
                                                                                                                                                                      (or x7462
                                                                                                                                                                          x7456))))
                                                                                                                                                            g7455))))
                                                                                                                                                (letrec ((g7463
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7463))))
                                                                                                                                      (and x7464
                                                                                                                                           x7454))))
                                                                                                                            (let x7466 x7453))))
                                                                                                                  (and x7470
                                                                                                                       x7469
                                                                                                                       x7452)))))
                                                                                                      g7451)))))
                                                                                        g7442)))))
                                                                          g7438)))))
                                                            g7435))))
                                                g7434)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7471
                                                        (letrec ((x7472
                                                                  (letrec ((x7473
                                                                            (letrec ((x7474
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7474))))
                                                                    (car
                                                                     x7473))))
                                                          (cdr x7472))))
                                                g7471)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7475
                                                        (letrec ((x7476
                                                                  (letrec ((x7477
                                                                            (letrec ((x7478
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7478))))
                                                                    (car
                                                                     x7477))))
                                                          (car x7476))))
                                                g7475)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7479 (eq? x y)))
                                                g7479)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7480
                                                        (letrec ((x7482
                                                                  (number? x)))
                                                          (assert x7482)))
                                                       (g7481
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7483
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7484
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7484)))))
                                                            g7483))))
                                                g7481)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7485
                                                        (letrec ((x7488
                                                                  (string?
                                                                   filename)))
                                                          (assert x7488)))
                                                       (g7486
                                                        (letrec ((x7489
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7489)))
                                                       (g7487
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7490
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7491 res))
                                                            g7491))))
                                                g7487)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7492 (cons x '())))
                                                g7492)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7493
                                                        (letrec ((x7496
                                                                  (char? c1)))
                                                          (assert x7496)))
                                                       (g7494
                                                        (letrec ((x7497
                                                                  (char? c2)))
                                                          (assert x7497)))
                                                       (g7495
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7498
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7498))))
                                                g7495)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7499
                                                        (letrec ((x7500
                                                                  (letrec ((x7501
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7501))))
                                                          (cdr x7500))))
                                                g7499)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7502
                                                        (letrec ((x7503
                                                                  (letrec ((x7504
                                                                            (letrec ((x7505
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7505))))
                                                                    (car
                                                                     x7504))))
                                                          (cdr x7503))))
                                                g7502)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7506
                                                        (letrec ((x7507
                                                                  (letrec ((x7508
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7508))))
                                                          (car x7507))))
                                                g7506)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7509
                                                        (letrec ((x7510
                                                                  (letrec ((x7511
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7511))))
                                                          (car x7510))))
                                                g7509)))
                                           (char-ci>?
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
                                                        (letrec ((x7517
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7517))))
                                                g7514)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7518
                                                        (letrec ((x7519
                                                                  (letrec ((x7520
                                                                            (letrec ((x7521
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7521))))
                                                                    (car
                                                                     x7520))))
                                                          (car x7519))))
                                                g7518)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7522
                                                        (letrec ((x7524
                                                                  (number? x)))
                                                          (assert x7524)))
                                                       (g7523 (< x 0)))
                                                g7523)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7525 (memq e l)))
                                                g7525)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7526
                                                        (letrec ((x7527
                                                                  (letrec ((x7528
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7528))))
                                                          (car x7527))))
                                                g7526)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7529 '())) g7529)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7530
                                                        (letrec ((x7532
                                                                  (list? l)))
                                                          (assert x7532)))
                                                       (g7531
                                                        (letrec ((x-cnd7533
                                                                  (null? l)))
                                                          (if x-cnd7533
                                                            '()
                                                            (letrec ((x7536
                                                                      (letrec ((x7537
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7537)))
                                                                     (x7534
                                                                      (letrec ((x7535
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7535))))
                                                              (append
                                                               x7536
                                                               x7534))))))
                                                g7531)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7538
                                                        (letrec ((x7539
                                                                  (letrec ((x7540
                                                                            (letrec ((x7541
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7541))))
                                                                    (car
                                                                     x7540))))
                                                          (car x7539))))
                                                g7538)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7542
                                                        (letrec ((x7543
                                                                  (letrec ((x7544
                                                                            (letrec ((x7545
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7545))))
                                                                    (cdr
                                                                     x7544))))
                                                          (cdr x7543))))
                                                g7542)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7546
                                                        (letrec ((x7548
                                                                  (number? x)))
                                                          (assert x7548)))
                                                       (g7547
                                                        (letrec ((x7549
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7549))))
                                                g7547)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7550
                                                        (letrec ((x7551
                                                                  (letrec ((x7552
                                                                            (letrec ((x7553
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7553))))
                                                                    (car
                                                                     x7552))))
                                                          (car x7551))))
                                                g7550)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7554
                                                        (letrec ((x7557
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7557)))
                                                       (g7555
                                                        (letrec ((x7558
                                                                  (list?
                                                                   args)))
                                                          (assert x7558)))
                                                       (g7556
                                                        (if cnd
                                                          (letrec ((g7559
                                                                    (proc)))
                                                            g7559)
                                                          (if cnd
                                                            (letrec ((g7560
                                                                      (letrec ((x7561
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7561))))
                                                              g7560)
                                                            (if cnd
                                                              (letrec ((g7562
                                                                        (letrec ((x7564
                                                                                  (car
                                                                                   args))
                                                                                 (x7563
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7564
                                                                           x7563))))
                                                                g7562)
                                                              (if cnd
                                                                (letrec ((g7565
                                                                          (letrec ((x7568
                                                                                    (car
                                                                                     args))
                                                                                   (x7567
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7566
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7568
                                                                             x7567
                                                                             x7566))))
                                                                  g7565)
                                                                (if cnd
                                                                  (letrec ((g7569
                                                                            (letrec ((x7573
                                                                                      (car
                                                                                       args))
                                                                                     (x7572
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7571
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7570
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7573
                                                                               x7572
                                                                               x7571
                                                                               x7570))))
                                                                    g7569)
                                                                  (if cnd
                                                                    (letrec ((g7574
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
                                                                                         args))
                                                                                       (x7575
                                                                                        (letrec ((x7576
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7576))))
                                                                                (proc
                                                                                 x7580
                                                                                 x7579
                                                                                 x7578
                                                                                 x7577
                                                                                 x7575))))
                                                                      g7574)
                                                                    (if cnd
                                                                      (letrec ((g7581
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
                                                                                             x7585)))
                                                                                         (x7582
                                                                                          (letrec ((x7583
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7583))))
                                                                                  (proc
                                                                                   x7589
                                                                                   x7588
                                                                                   x7587
                                                                                   x7586
                                                                                   x7584
                                                                                   x7582))))
                                                                        g7581)
                                                                      (if cnd
                                                                        (letrec ((g7590
                                                                                  (letrec ((x7600
                                                                                            (car
                                                                                             args))
                                                                                           (x7599
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7598
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7597
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7595
                                                                                            (letrec ((x7596
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7596)))
                                                                                           (x7593
                                                                                            (letrec ((x7594
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7594)))
                                                                                           (x7591
                                                                                            (letrec ((x7592
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7592))))
                                                                                    (proc
                                                                                     x7600
                                                                                     x7599
                                                                                     x7598
                                                                                     x7597
                                                                                     x7595
                                                                                     x7593
                                                                                     x7591))))
                                                                          g7590)
                                                                        (letrec ((g7601
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7601)))))))))))
                                                g7556)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7602
                                                        (letrec ((x7604
                                                                  (list? l)))
                                                          (assert x7604)))
                                                       (g7603
                                                        (letrec ((x-cnd7605
                                                                  (null? l)))
                                                          (if x-cnd7605
                                                            #f
                                                            (letrec ((x-cnd7606
                                                                      (letrec ((x7607
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7607
                                                                         e))))
                                                              (if x-cnd7606
                                                                l
                                                                (letrec ((x7608
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7608))))))))
                                                g7603)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7609
                                                        (letrec ((x7610
                                                                  (letrec ((x7611
                                                                            (letrec ((x7612
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7612))))
                                                                    (cdr
                                                                     x7611))))
                                                          (cdr x7610))))
                                                g7609)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7613
                                                        (letrec ((x7614
                                                                  (letrec ((x7615
                                                                            (letrec ((x7616
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7616))))
                                                                    (cdr
                                                                     x7615))))
                                                          (car x7614))))
                                                g7613)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7617 (random 42)))
                                                g7617)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7618
                                                        (letrec ((x7620
                                                                  (number? x)))
                                                          (assert x7620)))
                                                       (g7619 (= x 0)))
                                                g7619)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7621
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7622
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7622))))
                                                g7621)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7623
                                                        (letrec ((x7624
                                                                  (cdr x)))
                                                          (car x7624))))
                                                g7623)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7625
                                                        (letrec ((val7156
                                                                  (letrec ((x7628
                                                                            (pair?
                                                                             l))
                                                                           (x7626
                                                                            (letrec ((x7627
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7627))))
                                                                    (and x7628
                                                                         x7626))))
                                                          (letrec ((g7629
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7629))))
                                                g7625)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7630
                                                        (letrec ((x7631
                                                                  (letrec ((x7632
                                                                            (letrec ((x7633
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7633))))
                                                                    (cdr
                                                                     x7632))))
                                                          (cdr x7631))))
                                                g7630)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7634
                                                        (letrec ((x-cnd7635
                                                                  (letrec ((x7636
                                                                            #\0))
                                                                    (char<=?
                                                                     x7636
                                                                     c))))
                                                          (if x-cnd7635
                                                            (letrec ((x7637
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7637))
                                                            #f))))
                                                g7634)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7638
                                                        (letrec ((x7640
                                                                  (list? l)))
                                                          (assert x7640)))
                                                       (g7639
                                                        (letrec ((x-cnd7641
                                                                  (null? l)))
                                                          (if x-cnd7641
                                                            #f
                                                            (letrec ((x-cnd7642
                                                                      (letrec ((x7643
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7643
                                                                         k))))
                                                              (if x-cnd7642
                                                                (car l)
                                                                (letrec ((x7644
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7644))))))))
                                                g7639)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7645 (if x #f #t)))
                                                g7645)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7646 (append l1 l2)))
                                                g7646)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7652
                                                                         e))))
                                                              (if x-cnd7651
                                                                l
                                                                (letrec ((x7653
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7653))))))))
                                                g7648)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7654
                                                        (letrec ((x7655
                                                                  (letrec ((x7656
                                                                            (letrec ((x7657
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7657))))
                                                                    (cdr
                                                                     x7656))))
                                                          (car x7655))))
                                                g7654)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7658
                                                        (letrec ((x7660
                                                                  (list? l)))
                                                          (assert x7660)))
                                                       (g7659
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7661
                                                                              (letrec ((x-cnd7662
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7662
                                                                                  0
                                                                                  (letrec ((x7663
                                                                                            (letrec ((x7664
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7664))))
                                                                                    (+
                                                                                     1
                                                                                     x7663))))))
                                                                      g7661))))
                                                          (letrec ((g7665
                                                                    (rec l)))
                                                            g7665))))
                                                g7659)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7666
                                                        (letrec ((x7669
                                                                  (char? c1)))
                                                          (assert x7669)))
                                                       (g7667
                                                        (letrec ((x7670
                                                                  (char? c2)))
                                                          (assert x7670)))
                                                       (g7668
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7671
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7671))))
                                                g7668)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7672
                                                        (letrec ((x7673
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7673))))
                                                g7672)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7674
                                                        (letrec ((x7675
                                                                  (letrec ((x7676
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7676))))
                                                          (cdr x7675))))
                                                g7674)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7677
                                                        (letrec ((x7679
                                                                  (list? l)))
                                                          (assert x7679)))
                                                       (g7678
                                                        (letrec ((x-cnd7680
                                                                  (null? l)))
                                                          (if x-cnd7680
                                                            #f
                                                            (letrec ((x-cnd7681
                                                                      (letrec ((x7682
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7682
                                                                         k))))
                                                              (if x-cnd7681
                                                                (car l)
                                                                (letrec ((x7683
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7683))))))))
                                                g7678)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7684
                                                        (letrec ((x7685
                                                                  (car x)))
                                                          (car x7685))))
                                                g7684)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7686
                                                        (letrec ((x7689
                                                                  (char? c1)))
                                                          (assert x7689)))
                                                       (g7687
                                                        (letrec ((x7690
                                                                  (char? c2)))
                                                          (assert x7690)))
                                                       (g7688
                                                        (letrec ((x7691
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7691))))
                                                g7688)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7692
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7693
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7693))))
                                                g7692)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7694
                                                        (letrec ((x7697
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7697)))
                                                       (g7695
                                                        (letrec ((x7698
                                                                  (list? l)))
                                                          (assert x7698)))
                                                       (g7696
                                                        (letrec ((x-cnd7699
                                                                  (null? l)))
                                                          (if x-cnd7699
                                                            #t
                                                            (letrec ((x-cnd7700
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7700
                                                                (letrec ((g7701
                                                                          (letrec ((x7703
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7703)))
                                                                         (g7702
                                                                          (letrec ((x7704
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7704))))
                                                                  g7702)
                                                                '()))))))
                                                g7696)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7705
                                                        (letrec ((x7707
                                                                  (number? x)))
                                                          (assert x7707)))
                                                       (g7706
                                                        (letrec ((x-cnd7708
                                                                  (< x 0)))
                                                          (if x-cnd7708
                                                            (- 0 x)
                                                            x))))
                                                g7706)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7709
                                                        (letrec ((x7712
                                                                  (char? c1)))
                                                          (assert x7712)))
                                                       (g7710
                                                        (letrec ((x7713
                                                                  (char? c2)))
                                                          (assert x7713)))
                                                       (g7711
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7714
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7714))))
                                                g7711)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7715
                                                        (letrec ((x7716
                                                                  (letrec ((x7717
                                                                            (letrec ((x7718
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7718))))
                                                                    (cdr
                                                                     x7717))))
                                                          (car x7716))))
                                                g7715)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7719 #f)) g7719)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7720
                                                        (letrec ((x7722
                                                                  (letrec ((x7723
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7723)))
                                                                 (x7721
                                                                  (gcd m n)))
                                                          (/ x7722 x7721))))
                                                g7720)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7724
                                                        (letrec ((x7726
                                                                  (number? x)))
                                                          (assert x7726)))
                                                       (g7725
                                                        (letrec ((x7727
                                                                  (<= x y)))
                                                          (not x7727))))
                                                g7725)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7728
                                                        (letrec ((x7732
                                                                  (list? l)))
                                                          (assert x7732)))
                                                       (g7729
                                                        (letrec ((x7733
                                                                  (number?
                                                                   index)))
                                                          (assert x7733)))
                                                       (g7730
                                                        (letrec ((x7734
                                                                  (letrec ((x7735
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7735))))
                                                          (assert x7734)))
                                                       (g7731
                                                        (letrec ((x-cnd7736
                                                                  (= index 0)))
                                                          (if x-cnd7736
                                                            (car l)
                                                            (letrec ((x7738
                                                                      (cdr l))
                                                                     (x7737
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7738
                                                               x7737))))))
                                                g7731)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7739
                                                        (letrec ((x-cnd7740
                                                                  (= b 0)))
                                                          (if x-cnd7740
                                                            a
                                                            (letrec ((x7741
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7741))))))
                                                g7739)))
                                           (phi
                                            (letrec ((x7765 (x1))
                                                     (x7742
                                                      (letrec ((x7764 (x2))
                                                               (x7743
                                                                (letrec ((x7763
                                                                          (x3))
                                                                         (x7744
                                                                          (letrec ((x7762
                                                                                    (x4))
                                                                                   (x7745
                                                                                    (letrec ((x7761
                                                                                              (x5))
                                                                                             (x7746
                                                                                              (letrec ((x7760
                                                                                                        (x6))
                                                                                                       (x7747
                                                                                                        (letrec ((x7759
                                                                                                                  (x7))
                                                                                                                 (x7748
                                                                                                                  (letrec ((x-cnd7749
                                                                                                                            (or x1
                                                                                                                                x2)))
                                                                                                                    (if x-cnd7749
                                                                                                                      (letrec ((x-cnd7750
                                                                                                                                (letrec ((x7752
                                                                                                                                          (not
                                                                                                                                           x2))
                                                                                                                                         (x7751
                                                                                                                                          (not
                                                                                                                                           x3)))
                                                                                                                                  (or x1
                                                                                                                                      x7752
                                                                                                                                      x7751))))
                                                                                                                        (if x-cnd7750
                                                                                                                          (letrec ((x-cnd7753
                                                                                                                                    (or x3
                                                                                                                                        x4)))
                                                                                                                            (if x-cnd7753
                                                                                                                              (letrec ((x-cnd7754
                                                                                                                                        (letrec ((x7755
                                                                                                                                                  (not
                                                                                                                                                   x4)))
                                                                                                                                          (or x7755
                                                                                                                                              x1))))
                                                                                                                                (if x-cnd7754
                                                                                                                                  (letrec ((x-cnd7756
                                                                                                                                            (letrec ((x7758
                                                                                                                                                      (not
                                                                                                                                                       x2))
                                                                                                                                                     (x7757
                                                                                                                                                      (not
                                                                                                                                                       x3)))
                                                                                                                                              (or x7758
                                                                                                                                                  x7757))))
                                                                                                                                    (if x-cnd7756
                                                                                                                                      (or x4
                                                                                                                                          x2)
                                                                                                                                      #f))
                                                                                                                                  #f))
                                                                                                                              #f))
                                                                                                                          #f))
                                                                                                                      #f))))
                                                                                                          (λ x7759
                                                                                                            x7748))))
                                                                                                (λ x7760
                                                                                                  x7747))))
                                                                                      (λ x7761
                                                                                        x7746))))
                                                                            (λ x7762
                                                                              x7745))))
                                                                  (λ x7763
                                                                    x7744))))
                                                        (λ x7764 x7743))))
                                              (λ x7765 x7742)))
                                           (try
                                            (letrec ((x7768 (f))
                                                     (x7766
                                                      (letrec ((val7160
                                                                (f #t)))
                                                        (letrec ((g7767
                                                                  (if val7160
                                                                    val7160
                                                                    (f #f))))
                                                          g7767))))
                                              (λ x7768 x7766)))
                                           (sat-solve-7
                                            (letrec ((x7797 (p))
                                                     (x7769
                                                      (letrec ((x7770
                                                                (letrec ((x7796
                                                                          (n1))
                                                                         (x7771
                                                                          (letrec ((x7772
                                                                                    (letrec ((x7795
                                                                                              (n2))
                                                                                             (x7773
                                                                                              (letrec ((x7774
                                                                                                        (letrec ((x7794
                                                                                                                  (n3))
                                                                                                                 (x7775
                                                                                                                  (letrec ((x7776
                                                                                                                            (letrec ((x7793
                                                                                                                                      (n4))
                                                                                                                                     (x7777
                                                                                                                                      (letrec ((x7778
                                                                                                                                                (letrec ((x7792
                                                                                                                                                          (n5))
                                                                                                                                                         (x7779
                                                                                                                                                          (letrec ((x7780
                                                                                                                                                                    (letrec ((x7791
                                                                                                                                                                              (n6))
                                                                                                                                                                             (x7781
                                                                                                                                                                              (letrec ((x7782
                                                                                                                                                                                        (letrec ((x7790
                                                                                                                                                                                                  (n7))
                                                                                                                                                                                                 (x7783
                                                                                                                                                                                                  (letrec ((x7784
                                                                                                                                                                                                            (letrec ((x7785
                                                                                                                                                                                                                      (letrec ((x7786
                                                                                                                                                                                                                                (letrec ((x7787
                                                                                                                                                                                                                                          (letrec ((x7788
                                                                                                                                                                                                                                                    (letrec ((x7789
                                                                                                                                                                                                                                                              (p
                                                                                                                                                                                                                                                               n1)))
                                                                                                                                                                                                                                                      (x7789
                                                                                                                                                                                                                                                       n2))))
                                                                                                                                                                                                                                            (x7788
                                                                                                                                                                                                                                             n3))))
                                                                                                                                                                                                                                  (x7787
                                                                                                                                                                                                                                   n4))))
                                                                                                                                                                                                                        (x7786
                                                                                                                                                                                                                         n5))))
                                                                                                                                                                                                              (x7785
                                                                                                                                                                                                               n6))))
                                                                                                                                                                                                    (x7784
                                                                                                                                                                                                     n7))))
                                                                                                                                                                                          (λ x7790
                                                                                                                                                                                            x7783))))
                                                                                                                                                                                (try
                                                                                                                                                                                 x7782))))
                                                                                                                                                                      (λ x7791
                                                                                                                                                                        x7781))))
                                                                                                                                                            (try
                                                                                                                                                             x7780))))
                                                                                                                                                  (λ x7792
                                                                                                                                                    x7779))))
                                                                                                                                        (try
                                                                                                                                         x7778))))
                                                                                                                              (λ x7793
                                                                                                                                x7777))))
                                                                                                                    (try
                                                                                                                     x7776))))
                                                                                                          (λ x7794
                                                                                                            x7775))))
                                                                                                (try
                                                                                                 x7774))))
                                                                                      (λ x7795
                                                                                        x7773))))
                                                                            (try
                                                                             x7772))))
                                                                  (λ x7796
                                                                    x7771))))
                                                        (try x7770))))
                                              (λ x7797 x7769))))
                                    (letrec ((g7798 (sat-solve-7 phi)))
                                      g7798))))
                          g7243))))
              g7241)))
    g7240))
