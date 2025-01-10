(letrec ((any? (lambda (v) (letrec ((g7232 #t)) g7232)))
         (meta (lambda (v) (letrec ((g7233 v)) g7233)))
         (member
          (lambda (v lst)
            (letrec ((g7234
                      (letrec ((g7235
                                (letrec ((x-e7236 lst))
                                  (match
                                   x-e7236
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7237 (eq? v v1)))
                                       (if x-cnd7237 #t (member v vs)))))))))
                        g7235)))
              g7234)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7238 (lambda (v) (letrec ((g7239 v)) g7239)))) g7238)))
         (nonzero?
          (lambda (v)
            (letrec ((g7240 (letrec ((x7241 (= v 0))) (not x7241)))) g7240))))
  (letrec ((g7242
            (letrec ((g7243
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7244 '())
                                 (g7245
                                  (letrec ((real/c
                                            (lambda (g7160 g7161 g7162)
                                              (letrec ((g7246
                                                        (letrec ((x-cnd7247
                                                                  (real?
                                                                   g7162)))
                                                          (if x-cnd7247
                                                            g7162
                                                            (blame
                                                             g7160
                                                             'real?)))))
                                                g7246)))
                                           (boolean?/c
                                            (lambda (g7163 g7164 g7165)
                                              (letrec ((g7248
                                                        (letrec ((x-cnd7249
                                                                  (boolean?
                                                                   g7165)))
                                                          (if x-cnd7249
                                                            g7165
                                                            (blame
                                                             g7163
                                                             'boolean?)))))
                                                g7248)))
                                           (number?/c
                                            (lambda (g7166 g7167 g7168)
                                              (letrec ((g7250
                                                        (letrec ((x-cnd7251
                                                                  (number?
                                                                   g7168)))
                                                          (if x-cnd7251
                                                            g7168
                                                            (blame
                                                             g7166
                                                             'number?)))))
                                                g7250)))
                                           (any/c
                                            (lambda (g7169 g7170 g7171)
                                              (letrec ((g7252
                                                        (letrec ((x-cnd7253
                                                                  ((lambda (v)
                                                                     (letrec ((g7254
                                                                               #t))
                                                                       g7254))
                                                                   g7171)))
                                                          (if x-cnd7253
                                                            g7171
                                                            (blame
                                                             g7169
                                                             '(lambda (v)
                                                                #t))))))
                                                g7252)))
                                           (any?/c
                                            (lambda (g7172 g7173 g7174)
                                              (letrec ((g7255
                                                        (letrec ((x-cnd7256
                                                                  ((lambda (v)
                                                                     (letrec ((g7257
                                                                               #t))
                                                                       g7257))
                                                                   g7174)))
                                                          (if x-cnd7256
                                                            g7174
                                                            (blame
                                                             g7172
                                                             '(lambda (v)
                                                                #t))))))
                                                g7255)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7175 g7176 g7177)
                                              (letrec ((g7258
                                                        (letrec ((x-cnd7259
                                                                  (pair?
                                                                   g7177)))
                                                          (if x-cnd7259
                                                            g7177
                                                            (blame
                                                             g7175
                                                             'pair?)))))
                                                g7258)))
                                           (pair?/c
                                            (lambda (g7178 g7179 g7180)
                                              (letrec ((g7260
                                                        (letrec ((x-cnd7261
                                                                  (pair?
                                                                   g7180)))
                                                          (if x-cnd7261
                                                            g7180
                                                            (blame
                                                             g7178
                                                             'pair?)))))
                                                g7260)))
                                           (integer?/c
                                            (lambda (g7181 g7182 g7183)
                                              (letrec ((g7262
                                                        (letrec ((x-cnd7263
                                                                  (integer?
                                                                   g7183)))
                                                          (if x-cnd7263
                                                            g7183
                                                            (blame
                                                             g7181
                                                             'integer?)))))
                                                g7262)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7264
                                                        (lambda (k j v)
                                                          (letrec ((g7265
                                                                    (letrec ((x-cnd7266
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7266
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7265))))
                                                g7264)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7267
                                                        (lambda (k j v)
                                                          (letrec ((g7268
                                                                    (letrec ((x-cnd7269
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7269
                                                                        '()
                                                                        (letrec ((x7273
                                                                                  (letrec ((x7274
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7274)))
                                                                                 (x7270
                                                                                  (letrec ((x7272
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7271
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7272
                                                                                     k
                                                                                     j
                                                                                     x7271))))
                                                                          (cons
                                                                           x7273
                                                                           x7270))))))
                                                            g7268))))
                                                g7267)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7275 #t)) g7275)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7276
                                                        (letrec ((x7277
                                                                  (= v 0)))
                                                          (not x7277))))
                                                g7276)))
                                           (nonzero?/c
                                            (lambda (g7184 g7185 g7186)
                                              (letrec ((g7278
                                                        (letrec ((x-cnd7279
                                                                  ((lambda (v)
                                                                     (letrec ((g7280
                                                                               (letrec ((x7281
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7281))))
                                                                       g7280))
                                                                   g7186)))
                                                          (if x-cnd7279
                                                            g7186
                                                            (blame
                                                             g7184
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7278)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7282 v)) g7282)))
                                           (+
                                            ((lambda (j7189 k7190 f7191)
                                               (letrec ((g7284
                                                         (lambda (g7187 g7188)
                                                           (letrec ((g7285
                                                                     (letrec ((x7286
                                                                               (letrec ((x7288
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7187))
                                                                                        (x7287
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7188)))
                                                                                 (f7191
                                                                                  x7288
                                                                                  x7287))))
                                                                       (number?/c
                                                                        j7189
                                                                        k7190
                                                                        x7286))))
                                                             g7285))))
                                                 g7284))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7283 (orig-+ a b)))
                                                 g7283))))
                                           (-
                                            ((lambda (j7194 k7195 f7196)
                                               (letrec ((g7290
                                                         (lambda (g7192 g7193)
                                                           (letrec ((g7291
                                                                     (letrec ((x7292
                                                                               (letrec ((x7294
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7192))
                                                                                        (x7293
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7193)))
                                                                                 (f7196
                                                                                  x7294
                                                                                  x7293))))
                                                                       (number?/c
                                                                        j7194
                                                                        k7195
                                                                        x7292))))
                                                             g7291))))
                                                 g7290))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7289 (orig-- a b)))
                                                 g7289))))
                                           (*
                                            ((lambda (j7199 k7200 f7201)
                                               (letrec ((g7296
                                                         (lambda (g7197 g7198)
                                                           (letrec ((g7297
                                                                     (letrec ((x7298
                                                                               (letrec ((x7300
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7197))
                                                                                        (x7299
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7198)))
                                                                                 (f7201
                                                                                  x7300
                                                                                  x7299))))
                                                                       (number?/c
                                                                        j7199
                                                                        k7200
                                                                        x7298))))
                                                             g7297))))
                                                 g7296))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7295 (orig-* a b)))
                                                 g7295))))
                                           (/
                                            ((lambda (j7204 k7205 f7206)
                                               (letrec ((g7302
                                                         (lambda (g7202 g7203)
                                                           (letrec ((g7303
                                                                     (letrec ((x7304
                                                                               (letrec ((x7306
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7202))
                                                                                        (x7305
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7203)))
                                                                                 (f7206
                                                                                  x7306
                                                                                  x7305))))
                                                                       (number?/c
                                                                        j7204
                                                                        k7205
                                                                        x7304))))
                                                             g7303))))
                                                 g7302))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7301 (orig-/ a b)))
                                                 g7301))))
                                           (car
                                            ((lambda (j7208 k7209 f7210)
                                               (letrec ((g7308
                                                         (lambda (g7207)
                                                           (letrec ((g7309
                                                                     (letrec ((x7310
                                                                               (letrec ((x7311
                                                                                         (pair?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7207)))
                                                                                 (f7210
                                                                                  x7311))))
                                                                       (any/c
                                                                        j7208
                                                                        k7209
                                                                        x7310))))
                                                             g7309))))
                                                 g7308))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7307 (orig-car p)))
                                                 g7307))))
                                           (cdr
                                            ((lambda (j7212 k7213 f7214)
                                               (letrec ((g7313
                                                         (lambda (g7211)
                                                           (letrec ((g7314
                                                                     (letrec ((x7315
                                                                               (letrec ((x7316
                                                                                         (pair?/c
                                                                                          j7212
                                                                                          k7213
                                                                                          g7211)))
                                                                                 (f7214
                                                                                  x7316))))
                                                                       (any/c
                                                                        j7212
                                                                        k7213
                                                                        x7315))))
                                                             g7314))))
                                                 g7313))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7312 (orig-cdr p)))
                                                 g7312))))
                                           (cons
                                            ((lambda (j7217 k7218 f7219)
                                               (letrec ((g7318
                                                         (lambda (g7215 g7216)
                                                           (letrec ((g7319
                                                                     (letrec ((x7320
                                                                               (letrec ((x7322
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7215))
                                                                                        (x7321
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7216)))
                                                                                 (f7219
                                                                                  x7322
                                                                                  x7321))))
                                                                       (pair?/c
                                                                        j7217
                                                                        k7218
                                                                        x7320))))
                                                             g7319))))
                                                 g7318))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7317 (cons a b)))
                                                 g7317))))
                                           (vector-ref
                                            ((lambda (j7221 k7222 f7223)
                                               (letrec ((g7324
                                                         (lambda (g7220)
                                                           (letrec ((g7325
                                                                     (letrec ((x7326
                                                                               (letrec ((x7327
                                                                                         (vector?/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7220)))
                                                                                 (f7223
                                                                                  x7327))))
                                                                       (integer?/c
                                                                        j7221
                                                                        k7222
                                                                        x7326))))
                                                             g7325))))
                                                 g7324))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7323
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7323))))
                                           (vector-set!
                                            ((lambda (j7226 k7227 f7228)
                                               (letrec ((g7329
                                                         (lambda (g7224 g7225)
                                                           (letrec ((g7330
                                                                     (letrec ((x7331
                                                                               (letrec ((x7333
                                                                                         (vector?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7224))
                                                                                        (x7332
                                                                                         (integer?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7225)))
                                                                                 (f7228
                                                                                  x7333
                                                                                  x7332))))
                                                                       (any/c
                                                                        j7226
                                                                        k7227
                                                                        x7331))))
                                                             g7330))))
                                                 g7329))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7328
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7328))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7334 #t)) g7334)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7335
                                                        (letrec ((x7336
                                                                  (letrec ((x7337
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7337))))
                                                          (cdr x7336))))
                                                g7335)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7338
                                                        (letrec ((x7341
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7341)))
                                                       (g7339
                                                        (letrec ((x7342
                                                                  (list? l)))
                                                          (assert x7342)))
                                                       (g7340
                                                        (letrec ((x-cnd7343
                                                                  (null? l)))
                                                          (if x-cnd7343
                                                            '()
                                                            (letrec ((x7346
                                                                      (letrec ((x7347
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7347)))
                                                                     (x7344
                                                                      (letrec ((x7345
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7345))))
                                                              (cons
                                                               x7346
                                                               x7344))))))
                                                g7340)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7348
                                                        (letrec ((x7349
                                                                  (car x)))
                                                          (cdr x7349))))
                                                g7348)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7350
                                                        (letrec ((x7351
                                                                  (letrec ((x7352
                                                                            (letrec ((x7353
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7353))))
                                                                    (cdr
                                                                     x7352))))
                                                          (car x7351))))
                                                g7350)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7354
                                                        (letrec ((x7355
                                                                  (letrec ((x7356
                                                                            (letrec ((x7357
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7357))))
                                                                    (car
                                                                     x7356))))
                                                          (cdr x7355))))
                                                g7354)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7358
                                                        (letrec ((x7361
                                                                  (string?
                                                                   filename)))
                                                          (assert x7361)))
                                                       (g7359
                                                        (letrec ((x7362
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7362)))
                                                       (g7360
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7363
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7364 res))
                                                            g7364))))
                                                g7360)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7365
                                                        (letrec ((x7366
                                                                  (letrec ((x7367
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7367))))
                                                          (car x7366))))
                                                g7365)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7368
                                                        (letrec ((x7369
                                                                  (letrec ((x7370
                                                                            (letrec ((x7371
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7371))))
                                                                    (car
                                                                     x7370))))
                                                          (cdr x7369))))
                                                g7368)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7372
                                                        (letrec ((x7374
                                                                  (list? l)))
                                                          (assert x7374)))
                                                       (g7373
                                                        (letrec ((x-cnd7375
                                                                  (null? l)))
                                                          (if x-cnd7375
                                                            #f
                                                            (letrec ((x-cnd7376
                                                                      (letrec ((x7377
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7377
                                                                         k))))
                                                              (if x-cnd7376
                                                                (car l)
                                                                (letrec ((x7378
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7378))))))))
                                                g7373)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7379
                                                        (letrec ((x7380
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7380))))
                                                g7379)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7381
                                                        (letrec ((x7383
                                                                  (list? l)))
                                                          (assert x7383)))
                                                       (g7382
                                                        (letrec ((x-cnd7384
                                                                  (null? l)))
                                                          (if x-cnd7384
                                                            ""
                                                            (letrec ((x7387
                                                                      (letrec ((x7388
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7388)))
                                                                     (x7385
                                                                      (letrec ((x7386
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7386))))
                                                              (string-append
                                                               x7387
                                                               x7385))))))
                                                g7382)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7389
                                                        (letrec ((x7392
                                                                  (char? c1)))
                                                          (assert x7392)))
                                                       (g7390
                                                        (letrec ((x7393
                                                                  (char? c2)))
                                                          (assert x7393)))
                                                       (g7391
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7394
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7394))))
                                                g7391)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7395
                                                        (letrec ((x7396
                                                                  (letrec ((x7397
                                                                            (letrec ((x7398
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7398))))
                                                                    (cdr
                                                                     x7397))))
                                                          (cdr x7396))))
                                                g7395)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7399
                                                        (letrec ((x7402
                                                                  (list? l)))
                                                          (assert x7402)))
                                                       (g7400
                                                        (letrec ((x7403
                                                                  (numer?)))
                                                          (assert x7403)))
                                                       (g7401
                                                        (letrec ((x-cnd7404
                                                                  (zero? k)))
                                                          (if x-cnd7404
                                                            x
                                                            (letrec ((x7406
                                                                      (cdr x))
                                                                     (x7405
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7406
                                                               x7405))))))
                                                g7401)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7407 '())) g7407)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7408
                                                        (letrec ((x-cnd7409
                                                                  (letrec ((x7410
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7410))))
                                                          (if x-cnd7409
                                                            (letrec ((x7411
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7411))
                                                            #f))))
                                                g7408)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7412
                                                        (letrec ((x7414
                                                                  (number? x)))
                                                          (assert x7414)))
                                                       (g7413
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7415
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7416
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7416)))))
                                                            g7415))))
                                                g7413)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7417
                                                        (letrec ((val7146
                                                                  (letrec ((x7418
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7418
                                                                     9))))
                                                          (letrec ((g7419
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7420
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7420
                                                                                   10))))
                                                                        (letrec ((g7421
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7422
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7422
                                                                                       32)))))
                                                                          g7421)))))
                                                            g7419))))
                                                g7417)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7423
                                                        (letrec ((x7424
                                                                  (letrec ((x7425
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7425))))
                                                          (cdr x7424))))
                                                g7423)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7426
                                                        (letrec ((x7428
                                                                  (number? x)))
                                                          (assert x7428)))
                                                       (g7427 (> x 0)))
                                                g7427)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7429 #f)) g7429)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7430
                                                        (letrec ((x7431
                                                                  (cdr x)))
                                                          (cdr x7431))))
                                                g7430)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7432
                                                        (letrec ((x7434
                                                                  (number? x)))
                                                          (assert x7434)))
                                                       (g7433
                                                        (letrec ((x-cnd7435
                                                                  (< x 0)))
                                                          (if x-cnd7435
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7433)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7436
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7437
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7439
                                                                                          (null?
                                                                                           a))
                                                                                         (x7438
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7439
                                                                                       x7438))))
                                                                        (letrec ((g7440
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7443
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7442
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7441
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7443
                                                                                                     x7442
                                                                                                     x7441))))
                                                                                      (letrec ((g7444
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7452
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7451
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7448
                                                                                                                      (letrec ((x7450
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7449
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7450
                                                                                                                         x7449)))
                                                                                                                     (x7445
                                                                                                                      (letrec ((x7447
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7446
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7447
                                                                                                                         x7446))))
                                                                                                              (and x7452
                                                                                                                   x7451
                                                                                                                   x7448
                                                                                                                   x7445))))
                                                                                                    (letrec ((g7453
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7472
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7471
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7454
                                                                                                                          (letrec ((x7468
                                                                                                                                    (letrec ((x7469
                                                                                                                                              (letrec ((x7470
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7470))))
                                                                                                                                      (x7469)))
                                                                                                                                   (x7455
                                                                                                                                    (letrec ((x7466
                                                                                                                                              (letrec ((x7467
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7467
                                                                                                                                                 n)))
                                                                                                                                             (x7456
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7457
                                                                                                                                                                    (letrec ((x7464
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7458
                                                                                                                                                                              (letrec ((x7461
                                                                                                                                                                                        (letrec ((x7463
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7462
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7463
                                                                                                                                                                                           x7462)))
                                                                                                                                                                                       (x7459
                                                                                                                                                                                        (letrec ((x7460
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7460))))
                                                                                                                                                                                (and x7461
                                                                                                                                                                                     x7459))))
                                                                                                                                                                      (or x7464
                                                                                                                                                                          x7458))))
                                                                                                                                                            g7457))))
                                                                                                                                                (letrec ((g7465
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7465))))
                                                                                                                                      (and x7466
                                                                                                                                           x7456))))
                                                                                                                            (let x7468 x7455))))
                                                                                                                  (and x7472
                                                                                                                       x7471
                                                                                                                       x7454)))))
                                                                                                      g7453)))))
                                                                                        g7444)))))
                                                                          g7440)))))
                                                            g7437))))
                                                g7436)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7473
                                                        (letrec ((x7474
                                                                  (letrec ((x7475
                                                                            (letrec ((x7476
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7476))))
                                                                    (car
                                                                     x7475))))
                                                          (cdr x7474))))
                                                g7473)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7477
                                                        (letrec ((x7478
                                                                  (letrec ((x7479
                                                                            (letrec ((x7480
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7480))))
                                                                    (car
                                                                     x7479))))
                                                          (car x7478))))
                                                g7477)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7481 (eq? x y)))
                                                g7481)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7482
                                                        (letrec ((x7484
                                                                  (number? x)))
                                                          (assert x7484)))
                                                       (g7483
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7485
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7486
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7486)))))
                                                            g7485))))
                                                g7483)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7487
                                                        (letrec ((x7490
                                                                  (string?
                                                                   filename)))
                                                          (assert x7490)))
                                                       (g7488
                                                        (letrec ((x7491
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7491)))
                                                       (g7489
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7492
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7493 res))
                                                            g7493))))
                                                g7489)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7494 (cons x '())))
                                                g7494)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7495
                                                        (letrec ((x7498
                                                                  (char? c1)))
                                                          (assert x7498)))
                                                       (g7496
                                                        (letrec ((x7499
                                                                  (char? c2)))
                                                          (assert x7499)))
                                                       (g7497
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7500
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7500))))
                                                g7497)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7501
                                                        (letrec ((x7502
                                                                  (letrec ((x7503
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7503))))
                                                          (cdr x7502))))
                                                g7501)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7504
                                                        (letrec ((x7505
                                                                  (letrec ((x7506
                                                                            (letrec ((x7507
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7507))))
                                                                    (car
                                                                     x7506))))
                                                          (cdr x7505))))
                                                g7504)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7508
                                                        (letrec ((x7509
                                                                  (letrec ((x7510
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7510))))
                                                          (car x7509))))
                                                g7508)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7511
                                                        (letrec ((x7512
                                                                  (letrec ((x7513
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7513))))
                                                          (car x7512))))
                                                g7511)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7514
                                                        (letrec ((x7517
                                                                  (char? c1)))
                                                          (assert x7517)))
                                                       (g7515
                                                        (letrec ((x7518
                                                                  (char? c2)))
                                                          (assert x7518)))
                                                       (g7516
                                                        (letrec ((x7519
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7519))))
                                                g7516)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7520
                                                        (letrec ((x7521
                                                                  (letrec ((x7522
                                                                            (letrec ((x7523
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7523))))
                                                                    (car
                                                                     x7522))))
                                                          (car x7521))))
                                                g7520)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7524
                                                        (letrec ((x7526
                                                                  (number? x)))
                                                          (assert x7526)))
                                                       (g7525 (< x 0)))
                                                g7525)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7527 (memq e l)))
                                                g7527)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7528
                                                        (letrec ((x7529
                                                                  (letrec ((x7530
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7530))))
                                                          (car x7529))))
                                                g7528)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7531 '())) g7531)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7532
                                                        (letrec ((x7534
                                                                  (list? l)))
                                                          (assert x7534)))
                                                       (g7533
                                                        (letrec ((x-cnd7535
                                                                  (null? l)))
                                                          (if x-cnd7535
                                                            '()
                                                            (letrec ((x7538
                                                                      (letrec ((x7539
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7539)))
                                                                     (x7536
                                                                      (letrec ((x7537
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7537))))
                                                              (append
                                                               x7538
                                                               x7536))))))
                                                g7533)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7540
                                                        (letrec ((x7541
                                                                  (letrec ((x7542
                                                                            (letrec ((x7543
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7543))))
                                                                    (car
                                                                     x7542))))
                                                          (car x7541))))
                                                g7540)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7544
                                                        (letrec ((x7545
                                                                  (letrec ((x7546
                                                                            (letrec ((x7547
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7547))))
                                                                    (cdr
                                                                     x7546))))
                                                          (cdr x7545))))
                                                g7544)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7548
                                                        (letrec ((x7550
                                                                  (number? x)))
                                                          (assert x7550)))
                                                       (g7549
                                                        (letrec ((x7551
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7551))))
                                                g7549)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7552
                                                        (letrec ((x7553
                                                                  (letrec ((x7554
                                                                            (letrec ((x7555
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7555))))
                                                                    (car
                                                                     x7554))))
                                                          (car x7553))))
                                                g7552)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7556
                                                        (letrec ((x7559
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7559)))
                                                       (g7557
                                                        (letrec ((x7560
                                                                  (list?
                                                                   args)))
                                                          (assert x7560)))
                                                       (g7558
                                                        (if cnd
                                                          (letrec ((g7561
                                                                    (proc)))
                                                            g7561)
                                                          (if cnd
                                                            (letrec ((g7562
                                                                      (letrec ((x7563
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7563))))
                                                              g7562)
                                                            (if cnd
                                                              (letrec ((g7564
                                                                        (letrec ((x7566
                                                                                  (car
                                                                                   args))
                                                                                 (x7565
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7566
                                                                           x7565))))
                                                                g7564)
                                                              (if cnd
                                                                (letrec ((g7567
                                                                          (letrec ((x7570
                                                                                    (car
                                                                                     args))
                                                                                   (x7569
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7568
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7570
                                                                             x7569
                                                                             x7568))))
                                                                  g7567)
                                                                (if cnd
                                                                  (letrec ((g7571
                                                                            (letrec ((x7575
                                                                                      (car
                                                                                       args))
                                                                                     (x7574
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7573
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7572
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7575
                                                                               x7574
                                                                               x7573
                                                                               x7572))))
                                                                    g7571)
                                                                  (if cnd
                                                                    (letrec ((g7576
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
                                                                                         args))
                                                                                       (x7577
                                                                                        (letrec ((x7578
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7578))))
                                                                                (proc
                                                                                 x7582
                                                                                 x7581
                                                                                 x7580
                                                                                 x7579
                                                                                 x7577))))
                                                                      g7576)
                                                                    (if cnd
                                                                      (letrec ((g7583
                                                                                (letrec ((x7591
                                                                                          (car
                                                                                           args))
                                                                                         (x7590
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7589
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7588
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7586
                                                                                          (letrec ((x7587
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7587)))
                                                                                         (x7584
                                                                                          (letrec ((x7585
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7585))))
                                                                                  (proc
                                                                                   x7591
                                                                                   x7590
                                                                                   x7589
                                                                                   x7588
                                                                                   x7586
                                                                                   x7584))))
                                                                        g7583)
                                                                      (if cnd
                                                                        (letrec ((g7592
                                                                                  (letrec ((x7602
                                                                                            (car
                                                                                             args))
                                                                                           (x7601
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7600
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7599
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7597
                                                                                            (letrec ((x7598
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7598)))
                                                                                           (x7595
                                                                                            (letrec ((x7596
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7596)))
                                                                                           (x7593
                                                                                            (letrec ((x7594
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7594))))
                                                                                    (proc
                                                                                     x7602
                                                                                     x7601
                                                                                     x7600
                                                                                     x7599
                                                                                     x7597
                                                                                     x7595
                                                                                     x7593))))
                                                                          g7592)
                                                                        (letrec ((g7603
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7603)))))))))))
                                                g7558)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7604
                                                        (letrec ((x7606
                                                                  (list? l)))
                                                          (assert x7606)))
                                                       (g7605
                                                        (letrec ((x-cnd7607
                                                                  (null? l)))
                                                          (if x-cnd7607
                                                            #f
                                                            (letrec ((x-cnd7608
                                                                      (letrec ((x7609
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7609
                                                                         e))))
                                                              (if x-cnd7608
                                                                l
                                                                (letrec ((x7610
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7610))))))))
                                                g7605)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7611
                                                        (letrec ((x7612
                                                                  (letrec ((x7613
                                                                            (letrec ((x7614
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7614))))
                                                                    (cdr
                                                                     x7613))))
                                                          (cdr x7612))))
                                                g7611)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7615
                                                        (letrec ((x7616
                                                                  (letrec ((x7617
                                                                            (letrec ((x7618
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7618))))
                                                                    (cdr
                                                                     x7617))))
                                                          (car x7616))))
                                                g7615)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7619 (random 42)))
                                                g7619)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7620
                                                        (letrec ((x7622
                                                                  (number? x)))
                                                          (assert x7622)))
                                                       (g7621 (= x 0)))
                                                g7621)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7623
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7624
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7624))))
                                                g7623)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7625
                                                        (letrec ((x7626
                                                                  (cdr x)))
                                                          (car x7626))))
                                                g7625)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7627
                                                        (letrec ((val7156
                                                                  (letrec ((x7630
                                                                            (pair?
                                                                             l))
                                                                           (x7628
                                                                            (letrec ((x7629
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7629))))
                                                                    (and x7630
                                                                         x7628))))
                                                          (letrec ((g7631
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7631))))
                                                g7627)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7632
                                                        (letrec ((x7633
                                                                  (letrec ((x7634
                                                                            (letrec ((x7635
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7635))))
                                                                    (cdr
                                                                     x7634))))
                                                          (cdr x7633))))
                                                g7632)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7636
                                                        (letrec ((x-cnd7637
                                                                  (letrec ((x7638
                                                                            #\0))
                                                                    (char<=?
                                                                     x7638
                                                                     c))))
                                                          (if x-cnd7637
                                                            (letrec ((x7639
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7639))
                                                            #f))))
                                                g7636)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7640
                                                        (letrec ((x7642
                                                                  (list? l)))
                                                          (assert x7642)))
                                                       (g7641
                                                        (letrec ((x-cnd7643
                                                                  (null? l)))
                                                          (if x-cnd7643
                                                            #f
                                                            (letrec ((x-cnd7644
                                                                      (letrec ((x7645
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7645
                                                                         k))))
                                                              (if x-cnd7644
                                                                (car l)
                                                                (letrec ((x7646
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7646))))))))
                                                g7641)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7647 (if x #f #t)))
                                                g7647)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7648 (append l1 l2)))
                                                g7648)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7649
                                                        (letrec ((x7651
                                                                  (list? l)))
                                                          (assert x7651)))
                                                       (g7650
                                                        (letrec ((x-cnd7652
                                                                  (null? l)))
                                                          (if x-cnd7652
                                                            #f
                                                            (letrec ((x-cnd7653
                                                                      (letrec ((x7654
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7654
                                                                         e))))
                                                              (if x-cnd7653
                                                                l
                                                                (letrec ((x7655
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7655))))))))
                                                g7650)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7656
                                                        (letrec ((x7657
                                                                  (letrec ((x7658
                                                                            (letrec ((x7659
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7659))))
                                                                    (cdr
                                                                     x7658))))
                                                          (car x7657))))
                                                g7656)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7660
                                                        (letrec ((x7662
                                                                  (list? l)))
                                                          (assert x7662)))
                                                       (g7661
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7663
                                                                              (letrec ((x-cnd7664
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7664
                                                                                  0
                                                                                  (letrec ((x7665
                                                                                            (letrec ((x7666
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7666))))
                                                                                    (+
                                                                                     1
                                                                                     x7665))))))
                                                                      g7663))))
                                                          (letrec ((g7667
                                                                    (rec l)))
                                                            g7667))))
                                                g7661)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7668
                                                        (letrec ((x7671
                                                                  (char? c1)))
                                                          (assert x7671)))
                                                       (g7669
                                                        (letrec ((x7672
                                                                  (char? c2)))
                                                          (assert x7672)))
                                                       (g7670
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7673
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7673))))
                                                g7670)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7674
                                                        (letrec ((x7675
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7675))))
                                                g7674)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7676
                                                        (letrec ((x7677
                                                                  (letrec ((x7678
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7678))))
                                                          (cdr x7677))))
                                                g7676)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7679
                                                        (letrec ((x7681
                                                                  (list? l)))
                                                          (assert x7681)))
                                                       (g7680
                                                        (letrec ((x-cnd7682
                                                                  (null? l)))
                                                          (if x-cnd7682
                                                            #f
                                                            (letrec ((x-cnd7683
                                                                      (letrec ((x7684
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7684
                                                                         k))))
                                                              (if x-cnd7683
                                                                (car l)
                                                                (letrec ((x7685
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7685))))))))
                                                g7680)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7686
                                                        (letrec ((x7687
                                                                  (car x)))
                                                          (car x7687))))
                                                g7686)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7688
                                                        (letrec ((x7691
                                                                  (char? c1)))
                                                          (assert x7691)))
                                                       (g7689
                                                        (letrec ((x7692
                                                                  (char? c2)))
                                                          (assert x7692)))
                                                       (g7690
                                                        (letrec ((x7693
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7693))))
                                                g7690)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7694
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7695
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7695))))
                                                g7694)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7696
                                                        (letrec ((x7699
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7699)))
                                                       (g7697
                                                        (letrec ((x7700
                                                                  (list? l)))
                                                          (assert x7700)))
                                                       (g7698
                                                        (letrec ((x-cnd7701
                                                                  (null? l)))
                                                          (if x-cnd7701
                                                            #t
                                                            (letrec ((x-cnd7702
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7702
                                                                (letrec ((g7703
                                                                          (letrec ((x7705
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7705)))
                                                                         (g7704
                                                                          (letrec ((x7706
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7706))))
                                                                  g7704)
                                                                '()))))))
                                                g7698)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7707
                                                        (letrec ((x7709
                                                                  (number? x)))
                                                          (assert x7709)))
                                                       (g7708
                                                        (letrec ((x-cnd7710
                                                                  (< x 0)))
                                                          (if x-cnd7710
                                                            (- 0 x)
                                                            x))))
                                                g7708)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7711
                                                        (letrec ((x7714
                                                                  (char? c1)))
                                                          (assert x7714)))
                                                       (g7712
                                                        (letrec ((x7715
                                                                  (char? c2)))
                                                          (assert x7715)))
                                                       (g7713
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7716
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7716))))
                                                g7713)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7717
                                                        (letrec ((x7718
                                                                  (letrec ((x7719
                                                                            (letrec ((x7720
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7720))))
                                                                    (cdr
                                                                     x7719))))
                                                          (car x7718))))
                                                g7717)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7721 #f)) g7721)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7722
                                                        (letrec ((x7724
                                                                  (letrec ((x7725
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7725)))
                                                                 (x7723
                                                                  (gcd m n)))
                                                          (/ x7724 x7723))))
                                                g7722)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7726
                                                        (letrec ((x7728
                                                                  (number? x)))
                                                          (assert x7728)))
                                                       (g7727
                                                        (letrec ((x7729
                                                                  (<= x y)))
                                                          (not x7729))))
                                                g7727)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7730
                                                        (letrec ((x7734
                                                                  (list? l)))
                                                          (assert x7734)))
                                                       (g7731
                                                        (letrec ((x7735
                                                                  (number?
                                                                   index)))
                                                          (assert x7735)))
                                                       (g7732
                                                        (letrec ((x7736
                                                                  (letrec ((x7737
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7737))))
                                                          (assert x7736)))
                                                       (g7733
                                                        (letrec ((x-cnd7738
                                                                  (= index 0)))
                                                          (if x-cnd7738
                                                            (car l)
                                                            (letrec ((x7740
                                                                      (cdr l))
                                                                     (x7739
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7740
                                                               x7739))))))
                                                g7733)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7741
                                                        (letrec ((x-cnd7742
                                                                  (= b 0)))
                                                          (if x-cnd7742
                                                            a
                                                            (letrec ((x7743
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7743))))))
                                                g7741)))
                                           (member
                                            (lambda (x l)
                                              (letrec ((g7744
                                                        (letrec ((x-cnd7745
                                                                  (empty? l)))
                                                          (if x-cnd7745
                                                            empty
                                                            (letrec ((x-cnd7746
                                                                      (letrec ((x7747
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x
                                                                         x7747))))
                                                              (if x-cnd7746
                                                                l
                                                                (letrec ((x7748
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   x
                                                                   x7748))))))))
                                                g7744))))
                                    (letrec ((g7749
                                              ((lambda (j7229 k7230 f7231)
                                                 (letrec ((g7750
                                                           (lambda ()
                                                             (letrec ((g7751
                                                                       (letrec ((x7753
                                                                                 (letrec ((x7755
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7754
                                                                                           (listof
                                                                                            any/c)))
                                                                                   (any/c
                                                                                    x7755
                                                                                    x7754)))
                                                                                (x7752
                                                                                 (f7231)))
                                                                         (x7753
                                                                          j7229
                                                                          k7230
                                                                          x7752))))
                                                               g7751))))
                                                   g7750))
                                               'module
                                               'importer
                                               member)))
                                      g7749))))
                          g7245))))
              g7243)))
    g7242))
