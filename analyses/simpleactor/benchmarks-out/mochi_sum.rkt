(letrec ((any? (lambda (v) (letrec ((g7234 #t)) g7234)))
         (meta (lambda (v) (letrec ((g7235 v)) g7235)))
         (member
          (lambda (v lst)
            (letrec ((g7236
                      (letrec ((g7237
                                (letrec ((x-e7238 lst))
                                  (match
                                   x-e7238
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7239 (eq? v v1)))
                                       (if x-cnd7239 #t (member v vs)))))))))
                        g7237)))
              g7236)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7240 (lambda (v) (letrec ((g7241 v)) g7241)))) g7240)))
         (nonzero?
          (lambda (v)
            (letrec ((g7242 (letrec ((x7243 (= v 0))) (not x7243)))) g7242))))
  (letrec ((g7244
            (letrec ((g7245
                      (letrec ((real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7246
                                            (letrec ((x-cnd7247 (real? g7162)))
                                              (if x-cnd7247
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7246)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7248
                                            (letrec ((x-cnd7249
                                                      (boolean? g7165)))
                                              (if x-cnd7249
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7248)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7250
                                            (letrec ((x-cnd7251
                                                      (number? g7168)))
                                              (if x-cnd7251
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7250)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7252
                                            (letrec ((x-cnd7253
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7253
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7252)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7254
                                            (letrec ((x-cnd7255
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7255
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7254)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7256
                                            (letrec ((x-cnd7257 (pair? g7177)))
                                              (if x-cnd7257
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7256)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7258
                                            (letrec ((x-cnd7259 (pair? g7180)))
                                              (if x-cnd7259
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7258)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7260
                                            (letrec ((x-cnd7261
                                                      (integer? g7183)))
                                              (if x-cnd7261
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7260)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7262
                                            (lambda (k j v)
                                              (letrec ((g7263
                                                        (letrec ((x-cnd7264
                                                                  (c1 k j v)))
                                                          (if x-cnd7264
                                                            (c2 k j v)
                                                            #f))))
                                                g7263))))
                                    g7262)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7265
                                            (lambda (k j v)
                                              (letrec ((g7266
                                                        (letrec ((x-cnd7267
                                                                  (null? v)))
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
                               (any? (lambda (v) (letrec ((g7273 #t)) g7273)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7274
                                            (letrec ((x7275 (= v 0)))
                                              (not x7275))))
                                    g7274)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7276
                                            (letrec ((x-cnd7277
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7277
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7276)))
                               (meta (lambda (v) (letrec ((g7278 v)) g7278)))
                               (orig-+ +)
                               (+
                                ((lambda (j7189 k7190 f7191)
                                   (lambda (g7187 g7188)
                                     (number?/c
                                      j7189
                                      k7190
                                      (f7191
                                       (number?/c j7189 k7190 g7187)
                                       (number?/c j7189 k7190 g7188)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-+ a b))))
                               (orig-- -)
                               (-
                                ((lambda (j7194 k7195 f7196)
                                   (lambda (g7192 g7193)
                                     (number?/c
                                      j7194
                                      k7195
                                      (f7196
                                       (number?/c j7194 k7195 g7192)
                                       (number?/c j7194 k7195 g7193)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-- a b))))
                               (orig-* *)
                               (*
                                ((lambda (j7199 k7200 f7201)
                                   (lambda (g7197 g7198)
                                     (number?/c
                                      j7199
                                      k7200
                                      (f7201
                                       (number?/c j7199 k7200 g7197)
                                       (number?/c j7199 k7200 g7198)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-* a b))))
                               (orig-/ /)
                               (/
                                ((lambda (j7204 k7205 f7206)
                                   (lambda (g7202 g7203)
                                     (number?/c
                                      j7204
                                      k7205
                                      (f7206
                                       (number?/c j7204 k7205 g7202)
                                       (number?/c j7204 k7205 g7203)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-/ a b))))
                               (orig-car car)
                               (car
                                ((lambda (j7208 k7209 f7210)
                                   (lambda (g7207)
                                     (any/c
                                      j7208
                                      k7209
                                      (f7210 (pair?/c j7208 k7209 g7207)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-car p))))
                               (orig-cdr cdr)
                               (cdr
                                ((lambda (j7212 k7213 f7214)
                                   (lambda (g7211)
                                     (any/c
                                      j7212
                                      k7213
                                      (f7214 (pair?/c j7212 k7213 g7211)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-cdr p))))
                               (orig-cons cons)
                               (cons
                                ((lambda (j7217 k7218 f7219)
                                   (lambda (g7215 g7216)
                                     (pair?/c
                                      j7217
                                      k7218
                                      (f7219
                                       (any/c j7217 k7218 g7215)
                                       (any/c j7217 k7218 g7216)))))
                                 'server
                                 'client
                                 (lambda (a b) (cons a b))))
                               (orig-vector-ref vector-ref)
                               (vector-ref
                                ((lambda (j7221 k7222 f7223)
                                   (lambda (g7220)
                                     (integer?/c
                                      j7221
                                      k7222
                                      (f7223 (vector?/c j7221 k7222 g7220)))))
                                 'server
                                 'client
                                 (lambda (v i) (orig-vector-ref v i))))
                               (orig-vector-set vector-set!)
                               (vector-set!
                                ((lambda (j7226 k7227 f7228)
                                   (lambda (g7224 g7225)
                                     (any/c
                                      j7226
                                      k7227
                                      (f7228
                                       (vector?/c j7226 k7227 g7224)
                                       (integer?/c j7226 k7227 g7225)))))
                                 'server
                                 'client
                                 (lambda (vec i v)
                                   (orig-vector-set! vec i v))))
                               (assert
                                (lambda (cnd) (letrec ((g7279 #t)) g7279)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7280
                                            (letrec ((x7281
                                                      (letrec ((x7282 (cdr x)))
                                                        (cdr x7282))))
                                              (cdr x7281))))
                                    g7280)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7283
                                            (letrec ((x7286 (procedure? f)))
                                              (assert x7286)))
                                           (g7284
                                            (letrec ((x7287 (list? l)))
                                              (assert x7287)))
                                           (g7285
                                            (letrec ((x-cnd7288 (null? l)))
                                              (if x-cnd7288
                                                '()
                                                (letrec ((x7291
                                                          (letrec ((x7292
                                                                    (car l)))
                                                            (f x7292)))
                                                         (x7289
                                                          (letrec ((x7290
                                                                    (cdr l)))
                                                            (map f x7290))))
                                                  (cons x7291 x7289))))))
                                    g7285)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7293
                                            (letrec ((x7294 (car x)))
                                              (cdr x7294))))
                                    g7293)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7295
                                            (letrec ((x7296
                                                      (letrec ((x7297
                                                                (letrec ((x7298
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7298))))
                                                        (cdr x7297))))
                                              (car x7296))))
                                    g7295)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7299
                                            (letrec ((x7300
                                                      (letrec ((x7301
                                                                (letrec ((x7302
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7302))))
                                                        (car x7301))))
                                              (cdr x7300))))
                                    g7299)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7303
                                            (letrec ((x7306
                                                      (string? filename)))
                                              (assert x7306)))
                                           (g7304
                                            (letrec ((x7307 (procedure? proc)))
                                              (assert x7307)))
                                           (g7305
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7308
                                                        (close-output-port
                                                         output-port))
                                                       (g7309 res))
                                                g7309))))
                                    g7305)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7310
                                            (letrec ((x7311
                                                      (letrec ((x7312 (cdr x)))
                                                        (cdr x7312))))
                                              (car x7311))))
                                    g7310)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7313
                                            (letrec ((x7314
                                                      (letrec ((x7315
                                                                (letrec ((x7316
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7316))))
                                                        (car x7315))))
                                              (cdr x7314))))
                                    g7313)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7317
                                            (letrec ((x7319 (list? l)))
                                              (assert x7319)))
                                           (g7318
                                            (letrec ((x-cnd7320 (null? l)))
                                              (if x-cnd7320
                                                #f
                                                (letrec ((x-cnd7321
                                                          (letrec ((x7322
                                                                    (caar l)))
                                                            (eq? x7322 k))))
                                                  (if x-cnd7321
                                                    (car l)
                                                    (letrec ((x7323 (cdr l)))
                                                      (assq k x7323))))))))
                                    g7318)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7324
                                            (letrec ((x7325 (modulo x 2)))
                                              (= 0 x7325))))
                                    g7324)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7326
                                            (letrec ((x7328 (list? l)))
                                              (assert x7328)))
                                           (g7327
                                            (letrec ((x-cnd7329 (null? l)))
                                              (if x-cnd7329
                                                ""
                                                (letrec ((x7332
                                                          (letrec ((x7333
                                                                    (car l)))
                                                            (char->string
                                                             x7333)))
                                                         (x7330
                                                          (letrec ((x7331
                                                                    (cdr l)))
                                                            (list->string
                                                             x7331))))
                                                  (string-append
                                                   x7332
                                                   x7330))))))
                                    g7327)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7334
                                            (letrec ((x7337 (char? c1)))
                                              (assert x7337)))
                                           (g7335
                                            (letrec ((x7338 (char? c2)))
                                              (assert x7338)))
                                           (g7336
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7339
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7339))))
                                    g7336)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7340
                                            (letrec ((x7341
                                                      (letrec ((x7342
                                                                (letrec ((x7343
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7343))))
                                                        (cdr x7342))))
                                              (cdr x7341))))
                                    g7340)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7344
                                            (letrec ((x7347 (list? l)))
                                              (assert x7347)))
                                           (g7345
                                            (letrec ((x7348 (numer?)))
                                              (assert x7348)))
                                           (g7346
                                            (letrec ((x-cnd7349 (zero? k)))
                                              (if x-cnd7349
                                                x
                                                (letrec ((x7351 (cdr x))
                                                         (x7350 (- k 1)))
                                                  (list-tail x7351 x7350))))))
                                    g7346)))
                               (halt (lambda () (letrec ((g7352 '())) g7352)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7353
                                            (letrec ((x-cnd7354
                                                      (letrec ((x7355 #\a))
                                                        (char-ci>=? c x7355))))
                                              (if x-cnd7354
                                                (letrec ((x7356 #\z))
                                                  (char-ci<=? c x7356))
                                                #f))))
                                    g7353)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7357
                                            (letrec ((x7359 (number? x)))
                                              (assert x7359)))
                                           (g7358
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7360
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7361
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7361)))))
                                                g7360))))
                                    g7358)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7362
                                            (letrec ((val7146
                                                      (letrec ((x7363
                                                                (char->integer
                                                                 c)))
                                                        (= x7363 9))))
                                              (letrec ((g7364
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7365
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7365
                                                                       10))))
                                                            (letrec ((g7366
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7367
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7367
                                                                           32)))))
                                                              g7366)))))
                                                g7364))))
                                    g7362)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7368
                                            (letrec ((x7369
                                                      (letrec ((x7370 (car x)))
                                                        (cdr x7370))))
                                              (cdr x7369))))
                                    g7368)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7371
                                            (letrec ((x7373 (number? x)))
                                              (assert x7373)))
                                           (g7372 (> x 0)))
                                    g7372)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7374 #f)) g7374)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7375
                                            (letrec ((x7376 (cdr x)))
                                              (cdr x7376))))
                                    g7375)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7377
                                            (letrec ((x7379 (number? x)))
                                              (assert x7379)))
                                           (g7378
                                            (letrec ((x-cnd7380 (< x 0)))
                                              (if x-cnd7380
                                                (ceiling x)
                                                (floor x)))))
                                    g7378)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7381
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7382
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7384
                                                                              (null?
                                                                               a))
                                                                             (x7383
                                                                              (null?
                                                                               b)))
                                                                      (and x7384
                                                                           x7383))))
                                                            (letrec ((g7385
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7388
                                                                                            (string?
                                                                                             a))
                                                                                           (x7387
                                                                                            (string?
                                                                                             b))
                                                                                           (x7386
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7388
                                                                                         x7387
                                                                                         x7386))))
                                                                          (letrec ((g7389
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7397
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7396
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7393
                                                                                                          (letrec ((x7395
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7394
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7395
                                                                                                             x7394)))
                                                                                                         (x7390
                                                                                                          (letrec ((x7392
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7391
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7392
                                                                                                             x7391))))
                                                                                                  (and x7397
                                                                                                       x7396
                                                                                                       x7393
                                                                                                       x7390))))
                                                                                        (letrec ((g7398
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7417
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7416
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7399
                                                                                                              (letrec ((x7413
                                                                                                                        (letrec ((x7414
                                                                                                                                  (letrec ((x7415
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7415))))
                                                                                                                          (x7414)))
                                                                                                                       (x7400
                                                                                                                        (letrec ((x7411
                                                                                                                                  (letrec ((x7412
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7412
                                                                                                                                     n)))
                                                                                                                                 (x7401
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7402
                                                                                                                                                        (letrec ((x7409
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7403
                                                                                                                                                                  (letrec ((x7406
                                                                                                                                                                            (letrec ((x7408
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7407
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7408
                                                                                                                                                                               x7407)))
                                                                                                                                                                           (x7404
                                                                                                                                                                            (letrec ((x7405
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7405))))
                                                                                                                                                                    (and x7406
                                                                                                                                                                         x7404))))
                                                                                                                                                          (or x7409
                                                                                                                                                              x7403))))
                                                                                                                                                g7402))))
                                                                                                                                    (letrec ((g7410
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7410))))
                                                                                                                          (and x7411
                                                                                                                               x7401))))
                                                                                                                (let x7413 x7400))))
                                                                                                      (and x7417
                                                                                                           x7416
                                                                                                           x7399)))))
                                                                                          g7398)))))
                                                                            g7389)))))
                                                              g7385)))))
                                                g7382))))
                                    g7381)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7418
                                            (letrec ((x7419
                                                      (letrec ((x7420
                                                                (letrec ((x7421
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7421))))
                                                        (car x7420))))
                                              (cdr x7419))))
                                    g7418)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7422
                                            (letrec ((x7423
                                                      (letrec ((x7424
                                                                (letrec ((x7425
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7425))))
                                                        (car x7424))))
                                              (car x7423))))
                                    g7422)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7426 (eq? x y))) g7426)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7427
                                            (letrec ((x7429 (number? x)))
                                              (assert x7429)))
                                           (g7428
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7430
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7431
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7431)))))
                                                g7430))))
                                    g7428)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7432
                                            (letrec ((x7435
                                                      (string? filename)))
                                              (assert x7435)))
                                           (g7433
                                            (letrec ((x7436 (procedure? proc)))
                                              (assert x7436)))
                                           (g7434
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7437
                                                        (close-input-port
                                                         input-port))
                                                       (g7438 res))
                                                g7438))))
                                    g7434)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7439 (cons x '()))) g7439)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7440
                                            (letrec ((x7443 (char? c1)))
                                              (assert x7443)))
                                           (g7441
                                            (letrec ((x7444 (char? c2)))
                                              (assert x7444)))
                                           (g7442
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7445
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7445))))
                                    g7442)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7446
                                            (letrec ((x7447
                                                      (letrec ((x7448 (car x)))
                                                        (car x7448))))
                                              (cdr x7447))))
                                    g7446)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7449
                                            (letrec ((x7450
                                                      (letrec ((x7451
                                                                (letrec ((x7452
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7452))))
                                                        (car x7451))))
                                              (cdr x7450))))
                                    g7449)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7453
                                            (letrec ((x7454
                                                      (letrec ((x7455 (car x)))
                                                        (cdr x7455))))
                                              (car x7454))))
                                    g7453)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7456
                                            (letrec ((x7457
                                                      (letrec ((x7458 (cdr x)))
                                                        (car x7458))))
                                              (car x7457))))
                                    g7456)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7459
                                            (letrec ((x7462 (char? c1)))
                                              (assert x7462)))
                                           (g7460
                                            (letrec ((x7463 (char? c2)))
                                              (assert x7463)))
                                           (g7461
                                            (letrec ((x7464
                                                      (char-ci<=? c1 c2)))
                                              (not x7464))))
                                    g7461)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7465
                                            (letrec ((x7466
                                                      (letrec ((x7467
                                                                (letrec ((x7468
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7468))))
                                                        (car x7467))))
                                              (car x7466))))
                                    g7465)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7469
                                            (letrec ((x7471 (number? x)))
                                              (assert x7471)))
                                           (g7470 (< x 0)))
                                    g7470)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7472 (memq e l))) g7472)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7473
                                            (letrec ((x7474
                                                      (letrec ((x7475 (car x)))
                                                        (car x7475))))
                                              (car x7474))))
                                    g7473)))
                               (debug
                                (lambda (e) (letrec ((g7476 '())) g7476)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7477
                                            (letrec ((x7479 (list? l)))
                                              (assert x7479)))
                                           (g7478
                                            (letrec ((x-cnd7480 (null? l)))
                                              (if x-cnd7480
                                                '()
                                                (letrec ((x7483
                                                          (letrec ((x7484
                                                                    (cdr l)))
                                                            (reverse x7484)))
                                                         (x7481
                                                          (letrec ((x7482
                                                                    (car l)))
                                                            (list x7482))))
                                                  (append x7483 x7481))))))
                                    g7478)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7485
                                            (letrec ((x7486
                                                      (letrec ((x7487
                                                                (letrec ((x7488
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7488))))
                                                        (car x7487))))
                                              (car x7486))))
                                    g7485)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7489
                                            (letrec ((x7490
                                                      (letrec ((x7491
                                                                (letrec ((x7492
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7492))))
                                                        (cdr x7491))))
                                              (cdr x7490))))
                                    g7489)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7493
                                            (letrec ((x7495 (number? x)))
                                              (assert x7495)))
                                           (g7494
                                            (letrec ((x7496 (modulo x 2)))
                                              (= 1 x7496))))
                                    g7494)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7497
                                            (letrec ((x7498
                                                      (letrec ((x7499
                                                                (letrec ((x7500
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7500))))
                                                        (car x7499))))
                                              (car x7498))))
                                    g7497)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7501
                                            (letrec ((x7504 (procedure? proc)))
                                              (assert x7504)))
                                           (g7502
                                            (letrec ((x7505 (list? args)))
                                              (assert x7505)))
                                           (g7503
                                            (if cnd
                                              (letrec ((g7506 (proc))) g7506)
                                              (if cnd
                                                (letrec ((g7507
                                                          (letrec ((x7508
                                                                    (car
                                                                     args)))
                                                            (proc x7508))))
                                                  g7507)
                                                (if cnd
                                                  (letrec ((g7509
                                                            (letrec ((x7511
                                                                      (car
                                                                       args))
                                                                     (x7510
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7511
                                                               x7510))))
                                                    g7509)
                                                  (if cnd
                                                    (letrec ((g7512
                                                              (letrec ((x7515
                                                                        (car
                                                                         args))
                                                                       (x7514
                                                                        (cadr
                                                                         args))
                                                                       (x7513
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7515
                                                                 x7514
                                                                 x7513))))
                                                      g7512)
                                                    (if cnd
                                                      (letrec ((g7516
                                                                (letrec ((x7520
                                                                          (car
                                                                           args))
                                                                         (x7519
                                                                          (cadr
                                                                           args))
                                                                         (x7518
                                                                          (caddr
                                                                           args))
                                                                         (x7517
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7520
                                                                   x7519
                                                                   x7518
                                                                   x7517))))
                                                        g7516)
                                                      (if cnd
                                                        (letrec ((g7521
                                                                  (letrec ((x7527
                                                                            (car
                                                                             args))
                                                                           (x7526
                                                                            (cadr
                                                                             args))
                                                                           (x7525
                                                                            (caddr
                                                                             args))
                                                                           (x7524
                                                                            (cadddr
                                                                             args))
                                                                           (x7522
                                                                            (letrec ((x7523
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7523))))
                                                                    (proc
                                                                     x7527
                                                                     x7526
                                                                     x7525
                                                                     x7524
                                                                     x7522))))
                                                          g7521)
                                                        (if cnd
                                                          (letrec ((g7528
                                                                    (letrec ((x7536
                                                                              (car
                                                                               args))
                                                                             (x7535
                                                                              (cadr
                                                                               args))
                                                                             (x7534
                                                                              (caddr
                                                                               args))
                                                                             (x7533
                                                                              (cadddr
                                                                               args))
                                                                             (x7531
                                                                              (letrec ((x7532
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7532)))
                                                                             (x7529
                                                                              (letrec ((x7530
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7530))))
                                                                      (proc
                                                                       x7536
                                                                       x7535
                                                                       x7534
                                                                       x7533
                                                                       x7531
                                                                       x7529))))
                                                            g7528)
                                                          (if cnd
                                                            (letrec ((g7537
                                                                      (letrec ((x7547
                                                                                (car
                                                                                 args))
                                                                               (x7546
                                                                                (cadr
                                                                                 args))
                                                                               (x7545
                                                                                (caddr
                                                                                 args))
                                                                               (x7544
                                                                                (cadddr
                                                                                 args))
                                                                               (x7542
                                                                                (letrec ((x7543
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7543)))
                                                                               (x7540
                                                                                (letrec ((x7541
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7541)))
                                                                               (x7538
                                                                                (letrec ((x7539
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7539))))
                                                                        (proc
                                                                         x7547
                                                                         x7546
                                                                         x7545
                                                                         x7544
                                                                         x7542
                                                                         x7540
                                                                         x7538))))
                                                              g7537)
                                                            (letrec ((g7548
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7548)))))))))))
                                    g7503)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7549
                                            (letrec ((x7551 (list? l)))
                                              (assert x7551)))
                                           (g7550
                                            (letrec ((x-cnd7552 (null? l)))
                                              (if x-cnd7552
                                                #f
                                                (letrec ((x-cnd7553
                                                          (letrec ((x7554
                                                                    (car l)))
                                                            (equal? x7554 e))))
                                                  (if x-cnd7553
                                                    l
                                                    (letrec ((x7555 (cdr l)))
                                                      (member e x7555))))))))
                                    g7550)))
                               (call-with-current-continuation call/cc)
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7556
                                            (letrec ((x7557
                                                      (letrec ((x7558
                                                                (letrec ((x7559
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7559))))
                                                        (cdr x7558))))
                                              (cdr x7557))))
                                    g7556)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g7560
                                            (letrec ((x7561
                                                      (letrec ((x7562
                                                                (letrec ((x7563
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7563))))
                                                        (cdr x7562))))
                                              (car x7561))))
                                    g7560)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7564 (random 42))) g7564)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7565
                                            (letrec ((x7567 (number? x)))
                                              (assert x7567)))
                                           (g7566 (= x 0)))
                                    g7566)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7568
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7569
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7569))))
                                    g7568)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7570
                                            (letrec ((x7571 (cdr x)))
                                              (car x7571))))
                                    g7570)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7572
                                            (letrec ((val7156
                                                      (letrec ((x7575
                                                                (pair? l))
                                                               (x7573
                                                                (letrec ((x7574
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7574))))
                                                        (and x7575 x7573))))
                                              (letrec ((g7576
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7576))))
                                    g7572)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7577
                                            (letrec ((x7578
                                                      (letrec ((x7579
                                                                (letrec ((x7580
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7580))))
                                                        (cdr x7579))))
                                              (cdr x7578))))
                                    g7577)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7581
                                            (letrec ((x-cnd7582
                                                      (letrec ((x7583 #\0))
                                                        (char<=? x7583 c))))
                                              (if x-cnd7582
                                                (letrec ((x7584 #\9))
                                                  (char<=? c x7584))
                                                #f))))
                                    g7581)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7585
                                            (letrec ((x7587 (list? l)))
                                              (assert x7587)))
                                           (g7586
                                            (letrec ((x-cnd7588 (null? l)))
                                              (if x-cnd7588
                                                #f
                                                (letrec ((x-cnd7589
                                                          (letrec ((x7590
                                                                    (caar l)))
                                                            (eqv? x7590 k))))
                                                  (if x-cnd7589
                                                    (car l)
                                                    (letrec ((x7591 (cdr l)))
                                                      (assq k x7591))))))))
                                    g7586)))
                               (not
                                (lambda (x)
                                  (letrec ((g7592 (if x #f #t))) g7592)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7593 (append l1 l2))) g7593)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7594
                                            (letrec ((x7596 (list? l)))
                                              (assert x7596)))
                                           (g7595
                                            (letrec ((x-cnd7597 (null? l)))
                                              (if x-cnd7597
                                                #f
                                                (letrec ((x-cnd7598
                                                          (letrec ((x7599
                                                                    (car l)))
                                                            (eq? x7599 e))))
                                                  (if x-cnd7598
                                                    l
                                                    (letrec ((x7600 (cdr l)))
                                                      (memq e x7600))))))))
                                    g7595)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7601
                                            (letrec ((x7602
                                                      (letrec ((x7603
                                                                (letrec ((x7604
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7604))))
                                                        (cdr x7603))))
                                              (car x7602))))
                                    g7601)))
                               (length
                                (lambda (l)
                                  (letrec ((g7605
                                            (letrec ((x7607 (list? l)))
                                              (assert x7607)))
                                           (g7606
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7608
                                                                  (letrec ((x-cnd7609
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7609
                                                                      0
                                                                      (letrec ((x7610
                                                                                (letrec ((x7611
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7611))))
                                                                        (+
                                                                         1
                                                                         x7610))))))
                                                          g7608))))
                                              (letrec ((g7612 (rec l)))
                                                g7612))))
                                    g7606)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7613
                                            (letrec ((x7616 (char? c1)))
                                              (assert x7616)))
                                           (g7614
                                            (letrec ((x7617 (char? c2)))
                                              (assert x7617)))
                                           (g7615
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7618
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7618))))
                                    g7615)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7619
                                            (letrec ((x7620 (string<=? s1 s2)))
                                              (not x7620))))
                                    g7619)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7621
                                            (letrec ((x7622
                                                      (letrec ((x7623 (cdr x)))
                                                        (car x7623))))
                                              (cdr x7622))))
                                    g7621)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7624
                                            (letrec ((x7626 (list? l)))
                                              (assert x7626)))
                                           (g7625
                                            (letrec ((x-cnd7627 (null? l)))
                                              (if x-cnd7627
                                                #f
                                                (letrec ((x-cnd7628
                                                          (letrec ((x7629
                                                                    (caar l)))
                                                            (equal? x7629 k))))
                                                  (if x-cnd7628
                                                    (car l)
                                                    (letrec ((x7630 (cdr l)))
                                                      (assoc k x7630))))))))
                                    g7625)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7631
                                            (letrec ((x7632 (car x)))
                                              (car x7632))))
                                    g7631)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7633
                                            (letrec ((x7636 (char? c1)))
                                              (assert x7636)))
                                           (g7634
                                            (letrec ((x7637 (char? c2)))
                                              (assert x7637)))
                                           (g7635
                                            (letrec ((x7638 (char<=? c1 c2)))
                                              (not x7638))))
                                    g7635)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7639
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7640
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7640))))
                                    g7639)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7641
                                            (letrec ((x7644 (procedure? f)))
                                              (assert x7644)))
                                           (g7642
                                            (letrec ((x7645 (list? l)))
                                              (assert x7645)))
                                           (g7643
                                            (letrec ((x-cnd7646 (null? l)))
                                              (if x-cnd7646
                                                #t
                                                (letrec ((x-cnd7647 (pair? l)))
                                                  (if x-cnd7647
                                                    (letrec ((g7648
                                                              (letrec ((x7650
                                                                        (car
                                                                         l)))
                                                                (f x7650)))
                                                             (g7649
                                                              (letrec ((x7651
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7651))))
                                                      g7649)
                                                    '()))))))
                                    g7643)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7652
                                            (letrec ((x7654 (number? x)))
                                              (assert x7654)))
                                           (g7653
                                            (letrec ((x-cnd7655 (< x 0)))
                                              (if x-cnd7655 (- 0 x) x))))
                                    g7653)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7656
                                            (letrec ((x7659 (char? c1)))
                                              (assert x7659)))
                                           (g7657
                                            (letrec ((x7660 (char? c2)))
                                              (assert x7660)))
                                           (g7658
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7661
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7661))))
                                    g7658)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7662
                                            (letrec ((x7663
                                                      (letrec ((x7664
                                                                (letrec ((x7665
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7665))))
                                                        (cdr x7664))))
                                              (car x7663))))
                                    g7662)))
                               (newline
                                (lambda () (letrec ((g7666 #f)) g7666)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7667
                                            (letrec ((x7669
                                                      (letrec ((x7670 (* m n)))
                                                        (abs x7670)))
                                                     (x7668 (gcd m n)))
                                              (/ x7669 x7668))))
                                    g7667)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7671
                                            (letrec ((x7673 (number? x)))
                                              (assert x7673)))
                                           (g7672
                                            (letrec ((x7674 (<= x y)))
                                              (not x7674))))
                                    g7672)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7675
                                            (letrec ((x7679 (list? l)))
                                              (assert x7679)))
                                           (g7676
                                            (letrec ((x7680 (number? index)))
                                              (assert x7680)))
                                           (g7677
                                            (letrec ((x7681
                                                      (letrec ((x7682
                                                                (length l)))
                                                        (< index x7682))))
                                              (assert x7681)))
                                           (g7678
                                            (letrec ((x-cnd7683 (= index 0)))
                                              (if x-cnd7683
                                                (car l)
                                                (letrec ((x7685 (cdr l))
                                                         (x7684 (- index 1)))
                                                  (list-ref x7685 x7684))))))
                                    g7678)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7686
                                            (letrec ((x-cnd7687 (= b 0)))
                                              (if x-cnd7687
                                                a
                                                (letrec ((x7688 (modulo a b)))
                                                  (gcd b x7688))))))
                                    g7686)))
                               (real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7689
                                            (letrec ((x-cnd7690 (real? g7162)))
                                              (if x-cnd7690
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7689)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7691
                                            (letrec ((x-cnd7692
                                                      (boolean? g7165)))
                                              (if x-cnd7692
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7691)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7693
                                            (letrec ((x-cnd7694
                                                      (number? g7168)))
                                              (if x-cnd7694
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7693)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7695
                                            (letrec ((x-cnd7696
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7696
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7695)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7697
                                            (letrec ((x-cnd7698
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7698
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7697)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7699
                                            (letrec ((x-cnd7700 (pair? g7177)))
                                              (if x-cnd7700
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7699)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7701
                                            (letrec ((x-cnd7702 (pair? g7180)))
                                              (if x-cnd7702
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7701)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7703
                                            (letrec ((x-cnd7704
                                                      (integer? g7183)))
                                              (if x-cnd7704
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7703)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7705
                                            (lambda (k j v)
                                              (letrec ((g7706
                                                        (letrec ((x-cnd7707
                                                                  (c1 k j v)))
                                                          (if x-cnd7707
                                                            (c2 k j v)
                                                            #f))))
                                                g7706))))
                                    g7705)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7708
                                            (lambda (k j v)
                                              (letrec ((g7709
                                                        (letrec ((x-cnd7710
                                                                  (null? v)))
                                                          (if x-cnd7710
                                                            '()
                                                            (letrec ((x7714
                                                                      (letrec ((x7715
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7715)))
                                                                     (x7711
                                                                      (letrec ((x7713
                                                                                (list-of
                                                                                 contract))
                                                                               (x7712
                                                                                (cdr
                                                                                 v)))
                                                                        (x7713
                                                                         k
                                                                         j
                                                                         x7712))))
                                                              (cons
                                                               x7714
                                                               x7711))))))
                                                g7709))))
                                    g7708)))
                               (any? (lambda (v) (letrec ((g7716 #t)) g7716)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7717
                                            (letrec ((x7718 (= v 0)))
                                              (not x7718))))
                                    g7717)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7719
                                            (letrec ((x-cnd7720
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7720
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7719)))
                               (meta (lambda (v) (letrec ((g7721 v)) g7721)))
                               (orig-+ +)
                               (+
                                ((lambda (j7189 k7190 f7191)
                                   (lambda (g7187 g7188)
                                     (number?/c
                                      j7189
                                      k7190
                                      (f7191
                                       (number?/c j7189 k7190 g7187)
                                       (number?/c j7189 k7190 g7188)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-+ a b))))
                               (orig-- -)
                               (-
                                ((lambda (j7194 k7195 f7196)
                                   (lambda (g7192 g7193)
                                     (number?/c
                                      j7194
                                      k7195
                                      (f7196
                                       (number?/c j7194 k7195 g7192)
                                       (number?/c j7194 k7195 g7193)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-- a b))))
                               (orig-* *)
                               (*
                                ((lambda (j7199 k7200 f7201)
                                   (lambda (g7197 g7198)
                                     (number?/c
                                      j7199
                                      k7200
                                      (f7201
                                       (number?/c j7199 k7200 g7197)
                                       (number?/c j7199 k7200 g7198)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-* a b))))
                               (orig-/ /)
                               (/
                                ((lambda (j7204 k7205 f7206)
                                   (lambda (g7202 g7203)
                                     (number?/c
                                      j7204
                                      k7205
                                      (f7206
                                       (number?/c j7204 k7205 g7202)
                                       (number?/c j7204 k7205 g7203)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-/ a b))))
                               (orig-car car)
                               (car
                                ((lambda (j7208 k7209 f7210)
                                   (lambda (g7207)
                                     (any/c
                                      j7208
                                      k7209
                                      (f7210 (pair?/c j7208 k7209 g7207)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-car p))))
                               (orig-cdr cdr)
                               (cdr
                                ((lambda (j7212 k7213 f7214)
                                   (lambda (g7211)
                                     (any/c
                                      j7212
                                      k7213
                                      (f7214 (pair?/c j7212 k7213 g7211)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-cdr p))))
                               (orig-cons cons)
                               (cons
                                ((lambda (j7217 k7218 f7219)
                                   (lambda (g7215 g7216)
                                     (pair?/c
                                      j7217
                                      k7218
                                      (f7219
                                       (any/c j7217 k7218 g7215)
                                       (any/c j7217 k7218 g7216)))))
                                 'server
                                 'client
                                 (lambda (a b) (cons a b))))
                               (orig-vector-ref vector-ref)
                               (vector-ref
                                ((lambda (j7221 k7222 f7223)
                                   (lambda (g7220)
                                     (integer?/c
                                      j7221
                                      k7222
                                      (f7223 (vector?/c j7221 k7222 g7220)))))
                                 'server
                                 'client
                                 (lambda (v i) (orig-vector-ref v i))))
                               (orig-vector-set vector-set!)
                               (vector-set!
                                ((lambda (j7226 k7227 f7228)
                                   (lambda (g7224 g7225)
                                     (any/c
                                      j7226
                                      k7227
                                      (f7228
                                       (vector?/c j7226 k7227 g7224)
                                       (integer?/c j7226 k7227 g7225)))))
                                 'server
                                 'client
                                 (lambda (vec i v)
                                   (orig-vector-set! vec i v))))
                               (assert
                                (lambda (cnd) (letrec ((g7722 #t)) g7722)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7723
                                            (letrec ((x7724
                                                      (letrec ((x7725 (cdr x)))
                                                        (cdr x7725))))
                                              (cdr x7724))))
                                    g7723)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7726
                                            (letrec ((x7729 (procedure? f)))
                                              (assert x7729)))
                                           (g7727
                                            (letrec ((x7730 (list? l)))
                                              (assert x7730)))
                                           (g7728
                                            (letrec ((x-cnd7731 (null? l)))
                                              (if x-cnd7731
                                                '()
                                                (letrec ((x7734
                                                          (letrec ((x7735
                                                                    (car l)))
                                                            (f x7735)))
                                                         (x7732
                                                          (letrec ((x7733
                                                                    (cdr l)))
                                                            (map f x7733))))
                                                  (cons x7734 x7732))))))
                                    g7728)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7736
                                            (letrec ((x7737 (car x)))
                                              (cdr x7737))))
                                    g7736)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7738
                                            (letrec ((x7739
                                                      (letrec ((x7740
                                                                (letrec ((x7741
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7741))))
                                                        (cdr x7740))))
                                              (car x7739))))
                                    g7738)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7742
                                            (letrec ((x7743
                                                      (letrec ((x7744
                                                                (letrec ((x7745
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7745))))
                                                        (car x7744))))
                                              (cdr x7743))))
                                    g7742)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7746
                                            (letrec ((x7749
                                                      (string? filename)))
                                              (assert x7749)))
                                           (g7747
                                            (letrec ((x7750 (procedure? proc)))
                                              (assert x7750)))
                                           (g7748
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7751
                                                        (close-output-port
                                                         output-port))
                                                       (g7752 res))
                                                g7752))))
                                    g7748)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7753
                                            (letrec ((x7754
                                                      (letrec ((x7755 (cdr x)))
                                                        (cdr x7755))))
                                              (car x7754))))
                                    g7753)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7756
                                            (letrec ((x7757
                                                      (letrec ((x7758
                                                                (letrec ((x7759
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7759))))
                                                        (car x7758))))
                                              (cdr x7757))))
                                    g7756)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7760
                                            (letrec ((x7762 (list? l)))
                                              (assert x7762)))
                                           (g7761
                                            (letrec ((x-cnd7763 (null? l)))
                                              (if x-cnd7763
                                                #f
                                                (letrec ((x-cnd7764
                                                          (letrec ((x7765
                                                                    (caar l)))
                                                            (eq? x7765 k))))
                                                  (if x-cnd7764
                                                    (car l)
                                                    (letrec ((x7766 (cdr l)))
                                                      (assq k x7766))))))))
                                    g7761)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7767
                                            (letrec ((x7768 (modulo x 2)))
                                              (= 0 x7768))))
                                    g7767)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7769
                                            (letrec ((x7771 (list? l)))
                                              (assert x7771)))
                                           (g7770
                                            (letrec ((x-cnd7772 (null? l)))
                                              (if x-cnd7772
                                                ""
                                                (letrec ((x7775
                                                          (letrec ((x7776
                                                                    (car l)))
                                                            (char->string
                                                             x7776)))
                                                         (x7773
                                                          (letrec ((x7774
                                                                    (cdr l)))
                                                            (list->string
                                                             x7774))))
                                                  (string-append
                                                   x7775
                                                   x7773))))))
                                    g7770)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7777
                                            (letrec ((x7780 (char? c1)))
                                              (assert x7780)))
                                           (g7778
                                            (letrec ((x7781 (char? c2)))
                                              (assert x7781)))
                                           (g7779
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7782
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7782))))
                                    g7779)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7783
                                            (letrec ((x7784
                                                      (letrec ((x7785
                                                                (letrec ((x7786
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7786))))
                                                        (cdr x7785))))
                                              (cdr x7784))))
                                    g7783)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7787
                                            (letrec ((x7790 (list? l)))
                                              (assert x7790)))
                                           (g7788
                                            (letrec ((x7791 (numer?)))
                                              (assert x7791)))
                                           (g7789
                                            (letrec ((x-cnd7792 (zero? k)))
                                              (if x-cnd7792
                                                x
                                                (letrec ((x7794 (cdr x))
                                                         (x7793 (- k 1)))
                                                  (list-tail x7794 x7793))))))
                                    g7789)))
                               (halt (lambda () (letrec ((g7795 '())) g7795)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7796
                                            (letrec ((x-cnd7797
                                                      (letrec ((x7798 #\a))
                                                        (char-ci>=? c x7798))))
                                              (if x-cnd7797
                                                (letrec ((x7799 #\z))
                                                  (char-ci<=? c x7799))
                                                #f))))
                                    g7796)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7800
                                            (letrec ((x7802 (number? x)))
                                              (assert x7802)))
                                           (g7801
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7803
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7804
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7804)))))
                                                g7803))))
                                    g7801)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7805
                                            (letrec ((val7146
                                                      (letrec ((x7806
                                                                (char->integer
                                                                 c)))
                                                        (= x7806 9))))
                                              (letrec ((g7807
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7808
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7808
                                                                       10))))
                                                            (letrec ((g7809
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7810
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7810
                                                                           32)))))
                                                              g7809)))))
                                                g7807))))
                                    g7805)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7811
                                            (letrec ((x7812
                                                      (letrec ((x7813 (car x)))
                                                        (cdr x7813))))
                                              (cdr x7812))))
                                    g7811)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7814
                                            (letrec ((x7816 (number? x)))
                                              (assert x7816)))
                                           (g7815 (> x 0)))
                                    g7815)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7817 #f)) g7817)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7818
                                            (letrec ((x7819 (cdr x)))
                                              (cdr x7819))))
                                    g7818)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7820
                                            (letrec ((x7822 (number? x)))
                                              (assert x7822)))
                                           (g7821
                                            (letrec ((x-cnd7823 (< x 0)))
                                              (if x-cnd7823
                                                (ceiling x)
                                                (floor x)))))
                                    g7821)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7824
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7825
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7827
                                                                              (null?
                                                                               a))
                                                                             (x7826
                                                                              (null?
                                                                               b)))
                                                                      (and x7827
                                                                           x7826))))
                                                            (letrec ((g7828
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7831
                                                                                            (string?
                                                                                             a))
                                                                                           (x7830
                                                                                            (string?
                                                                                             b))
                                                                                           (x7829
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7831
                                                                                         x7830
                                                                                         x7829))))
                                                                          (letrec ((g7832
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7840
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7839
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7836
                                                                                                          (letrec ((x7838
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7837
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7838
                                                                                                             x7837)))
                                                                                                         (x7833
                                                                                                          (letrec ((x7835
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7834
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7835
                                                                                                             x7834))))
                                                                                                  (and x7840
                                                                                                       x7839
                                                                                                       x7836
                                                                                                       x7833))))
                                                                                        (letrec ((g7841
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7860
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7859
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7842
                                                                                                              (letrec ((x7856
                                                                                                                        (letrec ((x7857
                                                                                                                                  (letrec ((x7858
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7858))))
                                                                                                                          (x7857)))
                                                                                                                       (x7843
                                                                                                                        (letrec ((x7854
                                                                                                                                  (letrec ((x7855
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7855
                                                                                                                                     n)))
                                                                                                                                 (x7844
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7845
                                                                                                                                                        (letrec ((x7852
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7846
                                                                                                                                                                  (letrec ((x7849
                                                                                                                                                                            (letrec ((x7851
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7850
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7851
                                                                                                                                                                               x7850)))
                                                                                                                                                                           (x7847
                                                                                                                                                                            (letrec ((x7848
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7848))))
                                                                                                                                                                    (and x7849
                                                                                                                                                                         x7847))))
                                                                                                                                                          (or x7852
                                                                                                                                                              x7846))))
                                                                                                                                                g7845))))
                                                                                                                                    (letrec ((g7853
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7853))))
                                                                                                                          (and x7854
                                                                                                                               x7844))))
                                                                                                                (let x7856 x7843))))
                                                                                                      (and x7860
                                                                                                           x7859
                                                                                                           x7842)))))
                                                                                          g7841)))))
                                                                            g7832)))))
                                                              g7828)))))
                                                g7825))))
                                    g7824)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7861
                                            (letrec ((x7862
                                                      (letrec ((x7863
                                                                (letrec ((x7864
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7864))))
                                                        (car x7863))))
                                              (cdr x7862))))
                                    g7861)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7865
                                            (letrec ((x7866
                                                      (letrec ((x7867
                                                                (letrec ((x7868
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7868))))
                                                        (car x7867))))
                                              (car x7866))))
                                    g7865)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7869 (eq? x y))) g7869)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7870
                                            (letrec ((x7872 (number? x)))
                                              (assert x7872)))
                                           (g7871
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7873
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7874
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7874)))))
                                                g7873))))
                                    g7871)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7875
                                            (letrec ((x7878
                                                      (string? filename)))
                                              (assert x7878)))
                                           (g7876
                                            (letrec ((x7879 (procedure? proc)))
                                              (assert x7879)))
                                           (g7877
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7880
                                                        (close-input-port
                                                         input-port))
                                                       (g7881 res))
                                                g7881))))
                                    g7877)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7882 (cons x '()))) g7882)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7883
                                            (letrec ((x7886 (char? c1)))
                                              (assert x7886)))
                                           (g7884
                                            (letrec ((x7887 (char? c2)))
                                              (assert x7887)))
                                           (g7885
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7888
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7888))))
                                    g7885)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7889
                                            (letrec ((x7890
                                                      (letrec ((x7891 (car x)))
                                                        (car x7891))))
                                              (cdr x7890))))
                                    g7889)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7892
                                            (letrec ((x7893
                                                      (letrec ((x7894
                                                                (letrec ((x7895
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7895))))
                                                        (car x7894))))
                                              (cdr x7893))))
                                    g7892)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7896
                                            (letrec ((x7897
                                                      (letrec ((x7898 (car x)))
                                                        (cdr x7898))))
                                              (car x7897))))
                                    g7896)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7899
                                            (letrec ((x7900
                                                      (letrec ((x7901 (cdr x)))
                                                        (car x7901))))
                                              (car x7900))))
                                    g7899)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7902
                                            (letrec ((x7905 (char? c1)))
                                              (assert x7905)))
                                           (g7903
                                            (letrec ((x7906 (char? c2)))
                                              (assert x7906)))
                                           (g7904
                                            (letrec ((x7907
                                                      (char-ci<=? c1 c2)))
                                              (not x7907))))
                                    g7904)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7908
                                            (letrec ((x7909
                                                      (letrec ((x7910
                                                                (letrec ((x7911
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7911))))
                                                        (car x7910))))
                                              (car x7909))))
                                    g7908)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7912
                                            (letrec ((x7914 (number? x)))
                                              (assert x7914)))
                                           (g7913 (< x 0)))
                                    g7913)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7915 (memq e l))) g7915)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7916
                                            (letrec ((x7917
                                                      (letrec ((x7918 (car x)))
                                                        (car x7918))))
                                              (car x7917))))
                                    g7916)))
                               (debug
                                (lambda (e) (letrec ((g7919 '())) g7919)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7920
                                            (letrec ((x7922 (list? l)))
                                              (assert x7922)))
                                           (g7921
                                            (letrec ((x-cnd7923 (null? l)))
                                              (if x-cnd7923
                                                '()
                                                (letrec ((x7926
                                                          (letrec ((x7927
                                                                    (cdr l)))
                                                            (reverse x7927)))
                                                         (x7924
                                                          (letrec ((x7925
                                                                    (car l)))
                                                            (list x7925))))
                                                  (append x7926 x7924))))))
                                    g7921)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7928
                                            (letrec ((x7929
                                                      (letrec ((x7930
                                                                (letrec ((x7931
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7931))))
                                                        (car x7930))))
                                              (car x7929))))
                                    g7928)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7932
                                            (letrec ((x7933
                                                      (letrec ((x7934
                                                                (letrec ((x7935
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7935))))
                                                        (cdr x7934))))
                                              (cdr x7933))))
                                    g7932)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7936
                                            (letrec ((x7938 (number? x)))
                                              (assert x7938)))
                                           (g7937
                                            (letrec ((x7939 (modulo x 2)))
                                              (= 1 x7939))))
                                    g7937)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7940
                                            (letrec ((x7941
                                                      (letrec ((x7942
                                                                (letrec ((x7943
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7943))))
                                                        (car x7942))))
                                              (car x7941))))
                                    g7940)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7944
                                            (letrec ((x7947 (procedure? proc)))
                                              (assert x7947)))
                                           (g7945
                                            (letrec ((x7948 (list? args)))
                                              (assert x7948)))
                                           (g7946
                                            (if cnd
                                              (letrec ((g7949 (proc))) g7949)
                                              (if cnd
                                                (letrec ((g7950
                                                          (letrec ((x7951
                                                                    (car
                                                                     args)))
                                                            (proc x7951))))
                                                  g7950)
                                                (if cnd
                                                  (letrec ((g7952
                                                            (letrec ((x7954
                                                                      (car
                                                                       args))
                                                                     (x7953
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7954
                                                               x7953))))
                                                    g7952)
                                                  (if cnd
                                                    (letrec ((g7955
                                                              (letrec ((x7958
                                                                        (car
                                                                         args))
                                                                       (x7957
                                                                        (cadr
                                                                         args))
                                                                       (x7956
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7958
                                                                 x7957
                                                                 x7956))))
                                                      g7955)
                                                    (if cnd
                                                      (letrec ((g7959
                                                                (letrec ((x7963
                                                                          (car
                                                                           args))
                                                                         (x7962
                                                                          (cadr
                                                                           args))
                                                                         (x7961
                                                                          (caddr
                                                                           args))
                                                                         (x7960
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7963
                                                                   x7962
                                                                   x7961
                                                                   x7960))))
                                                        g7959)
                                                      (if cnd
                                                        (letrec ((g7964
                                                                  (letrec ((x7970
                                                                            (car
                                                                             args))
                                                                           (x7969
                                                                            (cadr
                                                                             args))
                                                                           (x7968
                                                                            (caddr
                                                                             args))
                                                                           (x7967
                                                                            (cadddr
                                                                             args))
                                                                           (x7965
                                                                            (letrec ((x7966
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7966))))
                                                                    (proc
                                                                     x7970
                                                                     x7969
                                                                     x7968
                                                                     x7967
                                                                     x7965))))
                                                          g7964)
                                                        (if cnd
                                                          (letrec ((g7971
                                                                    (letrec ((x7979
                                                                              (car
                                                                               args))
                                                                             (x7978
                                                                              (cadr
                                                                               args))
                                                                             (x7977
                                                                              (caddr
                                                                               args))
                                                                             (x7976
                                                                              (cadddr
                                                                               args))
                                                                             (x7974
                                                                              (letrec ((x7975
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7975)))
                                                                             (x7972
                                                                              (letrec ((x7973
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7973))))
                                                                      (proc
                                                                       x7979
                                                                       x7978
                                                                       x7977
                                                                       x7976
                                                                       x7974
                                                                       x7972))))
                                                            g7971)
                                                          (if cnd
                                                            (letrec ((g7980
                                                                      (letrec ((x7990
                                                                                (car
                                                                                 args))
                                                                               (x7989
                                                                                (cadr
                                                                                 args))
                                                                               (x7988
                                                                                (caddr
                                                                                 args))
                                                                               (x7987
                                                                                (cadddr
                                                                                 args))
                                                                               (x7985
                                                                                (letrec ((x7986
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7986)))
                                                                               (x7983
                                                                                (letrec ((x7984
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7984)))
                                                                               (x7981
                                                                                (letrec ((x7982
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7982))))
                                                                        (proc
                                                                         x7990
                                                                         x7989
                                                                         x7988
                                                                         x7987
                                                                         x7985
                                                                         x7983
                                                                         x7981))))
                                                              g7980)
                                                            (letrec ((g7991
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7991)))))))))))
                                    g7946)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7992
                                            (letrec ((x7994 (list? l)))
                                              (assert x7994)))
                                           (g7993
                                            (letrec ((x-cnd7995 (null? l)))
                                              (if x-cnd7995
                                                #f
                                                (letrec ((x-cnd7996
                                                          (letrec ((x7997
                                                                    (car l)))
                                                            (equal? x7997 e))))
                                                  (if x-cnd7996
                                                    l
                                                    (letrec ((x7998 (cdr l)))
                                                      (member e x7998))))))))
                                    g7993)))
                               (call-with-current-continuation call/cc)
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7999
                                            (letrec ((x8000
                                                      (letrec ((x8001
                                                                (letrec ((x8002
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8002))))
                                                        (cdr x8001))))
                                              (cdr x8000))))
                                    g7999)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g8003
                                            (letrec ((x8004
                                                      (letrec ((x8005
                                                                (letrec ((x8006
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8006))))
                                                        (cdr x8005))))
                                              (car x8004))))
                                    g8003)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8007 (random 42))) g8007)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8008
                                            (letrec ((x8010 (number? x)))
                                              (assert x8010)))
                                           (g8009 (= x 0)))
                                    g8009)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8011
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8012
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8012))))
                                    g8011)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8013
                                            (letrec ((x8014 (cdr x)))
                                              (car x8014))))
                                    g8013)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8015
                                            (letrec ((val7156
                                                      (letrec ((x8018
                                                                (pair? l))
                                                               (x8016
                                                                (letrec ((x8017
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8017))))
                                                        (and x8018 x8016))))
                                              (letrec ((g8019
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8019))))
                                    g8015)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8020
                                            (letrec ((x8021
                                                      (letrec ((x8022
                                                                (letrec ((x8023
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8023))))
                                                        (cdr x8022))))
                                              (cdr x8021))))
                                    g8020)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8024
                                            (letrec ((x-cnd8025
                                                      (letrec ((x8026 #\0))
                                                        (char<=? x8026 c))))
                                              (if x-cnd8025
                                                (letrec ((x8027 #\9))
                                                  (char<=? c x8027))
                                                #f))))
                                    g8024)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8028
                                            (letrec ((x8030 (list? l)))
                                              (assert x8030)))
                                           (g8029
                                            (letrec ((x-cnd8031 (null? l)))
                                              (if x-cnd8031
                                                #f
                                                (letrec ((x-cnd8032
                                                          (letrec ((x8033
                                                                    (caar l)))
                                                            (eqv? x8033 k))))
                                                  (if x-cnd8032
                                                    (car l)
                                                    (letrec ((x8034 (cdr l)))
                                                      (assq k x8034))))))))
                                    g8029)))
                               (not
                                (lambda (x)
                                  (letrec ((g8035 (if x #f #t))) g8035)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8036 (append l1 l2))) g8036)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8037
                                            (letrec ((x8039 (list? l)))
                                              (assert x8039)))
                                           (g8038
                                            (letrec ((x-cnd8040 (null? l)))
                                              (if x-cnd8040
                                                #f
                                                (letrec ((x-cnd8041
                                                          (letrec ((x8042
                                                                    (car l)))
                                                            (eq? x8042 e))))
                                                  (if x-cnd8041
                                                    l
                                                    (letrec ((x8043 (cdr l)))
                                                      (memq e x8043))))))))
                                    g8038)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8044
                                            (letrec ((x8045
                                                      (letrec ((x8046
                                                                (letrec ((x8047
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8047))))
                                                        (cdr x8046))))
                                              (car x8045))))
                                    g8044)))
                               (length
                                (lambda (l)
                                  (letrec ((g8048
                                            (letrec ((x8050 (list? l)))
                                              (assert x8050)))
                                           (g8049
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8051
                                                                  (letrec ((x-cnd8052
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8052
                                                                      0
                                                                      (letrec ((x8053
                                                                                (letrec ((x8054
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8054))))
                                                                        (+
                                                                         1
                                                                         x8053))))))
                                                          g8051))))
                                              (letrec ((g8055 (rec l)))
                                                g8055))))
                                    g8049)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8056
                                            (letrec ((x8059 (char? c1)))
                                              (assert x8059)))
                                           (g8057
                                            (letrec ((x8060 (char? c2)))
                                              (assert x8060)))
                                           (g8058
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8061
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8061))))
                                    g8058)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8062
                                            (letrec ((x8063 (string<=? s1 s2)))
                                              (not x8063))))
                                    g8062)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8064
                                            (letrec ((x8065
                                                      (letrec ((x8066 (cdr x)))
                                                        (car x8066))))
                                              (cdr x8065))))
                                    g8064)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8067
                                            (letrec ((x8069 (list? l)))
                                              (assert x8069)))
                                           (g8068
                                            (letrec ((x-cnd8070 (null? l)))
                                              (if x-cnd8070
                                                #f
                                                (letrec ((x-cnd8071
                                                          (letrec ((x8072
                                                                    (caar l)))
                                                            (equal? x8072 k))))
                                                  (if x-cnd8071
                                                    (car l)
                                                    (letrec ((x8073 (cdr l)))
                                                      (assoc k x8073))))))))
                                    g8068)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8074
                                            (letrec ((x8075 (car x)))
                                              (car x8075))))
                                    g8074)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8076
                                            (letrec ((x8079 (char? c1)))
                                              (assert x8079)))
                                           (g8077
                                            (letrec ((x8080 (char? c2)))
                                              (assert x8080)))
                                           (g8078
                                            (letrec ((x8081 (char<=? c1 c2)))
                                              (not x8081))))
                                    g8078)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8082
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8083
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8083))))
                                    g8082)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8084
                                            (letrec ((x8087 (procedure? f)))
                                              (assert x8087)))
                                           (g8085
                                            (letrec ((x8088 (list? l)))
                                              (assert x8088)))
                                           (g8086
                                            (letrec ((x-cnd8089 (null? l)))
                                              (if x-cnd8089
                                                #t
                                                (letrec ((x-cnd8090 (pair? l)))
                                                  (if x-cnd8090
                                                    (letrec ((g8091
                                                              (letrec ((x8093
                                                                        (car
                                                                         l)))
                                                                (f x8093)))
                                                             (g8092
                                                              (letrec ((x8094
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8094))))
                                                      g8092)
                                                    '()))))))
                                    g8086)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8095
                                            (letrec ((x8097 (number? x)))
                                              (assert x8097)))
                                           (g8096
                                            (letrec ((x-cnd8098 (< x 0)))
                                              (if x-cnd8098 (- 0 x) x))))
                                    g8096)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8099
                                            (letrec ((x8102 (char? c1)))
                                              (assert x8102)))
                                           (g8100
                                            (letrec ((x8103 (char? c2)))
                                              (assert x8103)))
                                           (g8101
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8104
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8104))))
                                    g8101)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8105
                                            (letrec ((x8106
                                                      (letrec ((x8107
                                                                (letrec ((x8108
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8108))))
                                                        (cdr x8107))))
                                              (car x8106))))
                                    g8105)))
                               (newline
                                (lambda () (letrec ((g8109 #f)) g8109)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8110
                                            (letrec ((x8112
                                                      (letrec ((x8113 (* m n)))
                                                        (abs x8113)))
                                                     (x8111 (gcd m n)))
                                              (/ x8112 x8111))))
                                    g8110)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8114
                                            (letrec ((x8116 (number? x)))
                                              (assert x8116)))
                                           (g8115
                                            (letrec ((x8117 (<= x y)))
                                              (not x8117))))
                                    g8115)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8118
                                            (letrec ((x8122 (list? l)))
                                              (assert x8122)))
                                           (g8119
                                            (letrec ((x8123 (number? index)))
                                              (assert x8123)))
                                           (g8120
                                            (letrec ((x8124
                                                      (letrec ((x8125
                                                                (length l)))
                                                        (< index x8125))))
                                              (assert x8124)))
                                           (g8121
                                            (letrec ((x-cnd8126 (= index 0)))
                                              (if x-cnd8126
                                                (car l)
                                                (letrec ((x8128 (cdr l))
                                                         (x8127 (- index 1)))
                                                  (list-ref x8128 x8127))))))
                                    g8121)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8129
                                            (letrec ((x-cnd8130 (= b 0)))
                                              (if x-cnd8130
                                                a
                                                (letrec ((x8131 (modulo a b)))
                                                  (gcd b x8131))))))
                                    g8129))))
                        (letrec ((g8132
                                  (letrec ((g8133
                                            (letrec ((sum
                                                      (lambda (n)
                                                        (letrec ((g8134
                                                                  (letrec ((x-cnd8135
                                                                            (<=
                                                                             n
                                                                             0)))
                                                                    (if x-cnd8135
                                                                      0
                                                                      (letrec ((x8136
                                                                                (letrec ((x8137
                                                                                          (-
                                                                                           n
                                                                                           1)))
                                                                                  (sum
                                                                                   x8137))))
                                                                        (+
                                                                         n
                                                                         x8136))))))
                                                          g8134))))
                                              (letrec ((g8138
                                                        (letrec ((g8139
                                                                  (letrec ((g8140
                                                                            ((lambda (j7230
                                                                                      k7231
                                                                                      f7232)
                                                                               (lambda (g7229)
                                                                                 (letrec ((x7233
                                                                                           (integer?/c
                                                                                            j7230
                                                                                            k7231
                                                                                            g7229)))
                                                                                   (((lambda (n)
                                                                                       (and/c
                                                                                        integer?/c
                                                                                        (>=/c
                                                                                         n)))
                                                                                     x7233)
                                                                                    j7230
                                                                                    k7231
                                                                                    (f7232
                                                                                     x7233)))))
                                                                             'module
                                                                             'importer
                                                                             sum)))
                                                                    g8140)))
                                                          g8139)))
                                                g8138))))
                                    g8133)))
                          g8132))))
              g7245)))
    g7244))
