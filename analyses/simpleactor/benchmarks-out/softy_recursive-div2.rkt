(letrec ((any? (lambda (v) (letrec ((g7236 #t)) g7236)))
         (meta (lambda (v) (letrec ((g7237 v)) g7237)))
         (member
          (lambda (v lst)
            (letrec ((g7238
                      (letrec ((g7239
                                (letrec ((x-e7240 lst))
                                  (match
                                   x-e7240
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7241 (eq? v v1)))
                                       (if x-cnd7241 #t (member v vs)))))))))
                        g7239)))
              g7238)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7242 (lambda (v) (letrec ((g7243 v)) g7243)))) g7242)))
         (nonzero?
          (lambda (v)
            (letrec ((g7244 (letrec ((x7245 (= v 0))) (not x7245)))) g7244))))
  (letrec ((g7246
            (letrec ((g7247
                      (letrec ((real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7248
                                            (letrec ((x-cnd7249 (real? g7162)))
                                              (if x-cnd7249
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7248)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7250
                                            (letrec ((x-cnd7251
                                                      (boolean? g7165)))
                                              (if x-cnd7251
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7250)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7252
                                            (letrec ((x-cnd7253
                                                      (number? g7168)))
                                              (if x-cnd7253
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7252)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7254
                                            (letrec ((x-cnd7255
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7255
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7254)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7256
                                            (letrec ((x-cnd7257
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7257
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7256)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7258
                                            (letrec ((x-cnd7259 (pair? g7177)))
                                              (if x-cnd7259
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7258)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7260
                                            (letrec ((x-cnd7261 (pair? g7180)))
                                              (if x-cnd7261
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7260)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7262
                                            (letrec ((x-cnd7263
                                                      (integer? g7183)))
                                              (if x-cnd7263
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7262)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7264
                                            (lambda (k j v)
                                              (letrec ((g7265
                                                        (letrec ((x-cnd7266
                                                                  (c1 k j v)))
                                                          (if x-cnd7266
                                                            (c2 k j v)
                                                            #f))))
                                                g7265))))
                                    g7264)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7267
                                            (lambda (k j v)
                                              (letrec ((g7268
                                                        (letrec ((x-cnd7269
                                                                  (null? v)))
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
                               (any? (lambda (v) (letrec ((g7275 #t)) g7275)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7276
                                            (letrec ((x7277 (= v 0)))
                                              (not x7277))))
                                    g7276)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7278
                                            (letrec ((x-cnd7279
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7279
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7278)))
                               (meta (lambda (v) (letrec ((g7280 v)) g7280)))
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
                                (lambda (cnd) (letrec ((g7281 #t)) g7281)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7282
                                            (letrec ((x7283
                                                      (letrec ((x7284 (cdr x)))
                                                        (cdr x7284))))
                                              (cdr x7283))))
                                    g7282)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7285
                                            (letrec ((x7288 (procedure? f)))
                                              (assert x7288)))
                                           (g7286
                                            (letrec ((x7289 (list? l)))
                                              (assert x7289)))
                                           (g7287
                                            (letrec ((x-cnd7290 (null? l)))
                                              (if x-cnd7290
                                                '()
                                                (letrec ((x7293
                                                          (letrec ((x7294
                                                                    (car l)))
                                                            (f x7294)))
                                                         (x7291
                                                          (letrec ((x7292
                                                                    (cdr l)))
                                                            (map f x7292))))
                                                  (cons x7293 x7291))))))
                                    g7287)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7295
                                            (letrec ((x7296 (car x)))
                                              (cdr x7296))))
                                    g7295)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7297
                                            (letrec ((x7298
                                                      (letrec ((x7299
                                                                (letrec ((x7300
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7300))))
                                                        (cdr x7299))))
                                              (car x7298))))
                                    g7297)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7301
                                            (letrec ((x7302
                                                      (letrec ((x7303
                                                                (letrec ((x7304
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7304))))
                                                        (car x7303))))
                                              (cdr x7302))))
                                    g7301)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7305
                                            (letrec ((x7308
                                                      (string? filename)))
                                              (assert x7308)))
                                           (g7306
                                            (letrec ((x7309 (procedure? proc)))
                                              (assert x7309)))
                                           (g7307
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7310
                                                        (close-output-port
                                                         output-port))
                                                       (g7311 res))
                                                g7311))))
                                    g7307)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7312
                                            (letrec ((x7313
                                                      (letrec ((x7314 (cdr x)))
                                                        (cdr x7314))))
                                              (car x7313))))
                                    g7312)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7315
                                            (letrec ((x7316
                                                      (letrec ((x7317
                                                                (letrec ((x7318
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7318))))
                                                        (car x7317))))
                                              (cdr x7316))))
                                    g7315)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7319
                                            (letrec ((x7321 (list? l)))
                                              (assert x7321)))
                                           (g7320
                                            (letrec ((x-cnd7322 (null? l)))
                                              (if x-cnd7322
                                                #f
                                                (letrec ((x-cnd7323
                                                          (letrec ((x7324
                                                                    (caar l)))
                                                            (eq? x7324 k))))
                                                  (if x-cnd7323
                                                    (car l)
                                                    (letrec ((x7325 (cdr l)))
                                                      (assq k x7325))))))))
                                    g7320)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7326
                                            (letrec ((x7327 (modulo x 2)))
                                              (= 0 x7327))))
                                    g7326)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7328
                                            (letrec ((x7330 (list? l)))
                                              (assert x7330)))
                                           (g7329
                                            (letrec ((x-cnd7331 (null? l)))
                                              (if x-cnd7331
                                                ""
                                                (letrec ((x7334
                                                          (letrec ((x7335
                                                                    (car l)))
                                                            (char->string
                                                             x7335)))
                                                         (x7332
                                                          (letrec ((x7333
                                                                    (cdr l)))
                                                            (list->string
                                                             x7333))))
                                                  (string-append
                                                   x7334
                                                   x7332))))))
                                    g7329)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7336
                                            (letrec ((x7339 (char? c1)))
                                              (assert x7339)))
                                           (g7337
                                            (letrec ((x7340 (char? c2)))
                                              (assert x7340)))
                                           (g7338
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7341
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7341))))
                                    g7338)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7342
                                            (letrec ((x7343
                                                      (letrec ((x7344
                                                                (letrec ((x7345
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7345))))
                                                        (cdr x7344))))
                                              (cdr x7343))))
                                    g7342)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7346
                                            (letrec ((x7349 (list? l)))
                                              (assert x7349)))
                                           (g7347
                                            (letrec ((x7350 (numer?)))
                                              (assert x7350)))
                                           (g7348
                                            (letrec ((x-cnd7351 (zero? k)))
                                              (if x-cnd7351
                                                x
                                                (letrec ((x7353 (cdr x))
                                                         (x7352 (- k 1)))
                                                  (list-tail x7353 x7352))))))
                                    g7348)))
                               (halt (lambda () (letrec ((g7354 '())) g7354)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7355
                                            (letrec ((x-cnd7356
                                                      (letrec ((x7357 #\a))
                                                        (char-ci>=? c x7357))))
                                              (if x-cnd7356
                                                (letrec ((x7358 #\z))
                                                  (char-ci<=? c x7358))
                                                #f))))
                                    g7355)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7359
                                            (letrec ((x7361 (number? x)))
                                              (assert x7361)))
                                           (g7360
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7362
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7363
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7363)))))
                                                g7362))))
                                    g7360)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7364
                                            (letrec ((val7146
                                                      (letrec ((x7365
                                                                (char->integer
                                                                 c)))
                                                        (= x7365 9))))
                                              (letrec ((g7366
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7367
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7367
                                                                       10))))
                                                            (letrec ((g7368
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7369
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7369
                                                                           32)))))
                                                              g7368)))))
                                                g7366))))
                                    g7364)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7370
                                            (letrec ((x7371
                                                      (letrec ((x7372 (car x)))
                                                        (cdr x7372))))
                                              (cdr x7371))))
                                    g7370)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7373
                                            (letrec ((x7375 (number? x)))
                                              (assert x7375)))
                                           (g7374 (> x 0)))
                                    g7374)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7376 #f)) g7376)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7377
                                            (letrec ((x7378 (cdr x)))
                                              (cdr x7378))))
                                    g7377)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7379
                                            (letrec ((x7381 (number? x)))
                                              (assert x7381)))
                                           (g7380
                                            (letrec ((x-cnd7382 (< x 0)))
                                              (if x-cnd7382
                                                (ceiling x)
                                                (floor x)))))
                                    g7380)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7383
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7384
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7386
                                                                              (null?
                                                                               a))
                                                                             (x7385
                                                                              (null?
                                                                               b)))
                                                                      (and x7386
                                                                           x7385))))
                                                            (letrec ((g7387
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7390
                                                                                            (string?
                                                                                             a))
                                                                                           (x7389
                                                                                            (string?
                                                                                             b))
                                                                                           (x7388
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7390
                                                                                         x7389
                                                                                         x7388))))
                                                                          (letrec ((g7391
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7399
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7398
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7395
                                                                                                          (letrec ((x7397
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7396
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7397
                                                                                                             x7396)))
                                                                                                         (x7392
                                                                                                          (letrec ((x7394
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7393
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7394
                                                                                                             x7393))))
                                                                                                  (and x7399
                                                                                                       x7398
                                                                                                       x7395
                                                                                                       x7392))))
                                                                                        (letrec ((g7400
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7419
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7418
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7401
                                                                                                              (letrec ((x7415
                                                                                                                        (letrec ((x7416
                                                                                                                                  (letrec ((x7417
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7417))))
                                                                                                                          (x7416)))
                                                                                                                       (x7402
                                                                                                                        (letrec ((x7413
                                                                                                                                  (letrec ((x7414
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7414
                                                                                                                                     n)))
                                                                                                                                 (x7403
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7404
                                                                                                                                                        (letrec ((x7411
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7405
                                                                                                                                                                  (letrec ((x7408
                                                                                                                                                                            (letrec ((x7410
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7409
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7410
                                                                                                                                                                               x7409)))
                                                                                                                                                                           (x7406
                                                                                                                                                                            (letrec ((x7407
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7407))))
                                                                                                                                                                    (and x7408
                                                                                                                                                                         x7406))))
                                                                                                                                                          (or x7411
                                                                                                                                                              x7405))))
                                                                                                                                                g7404))))
                                                                                                                                    (letrec ((g7412
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7412))))
                                                                                                                          (and x7413
                                                                                                                               x7403))))
                                                                                                                (let x7415 x7402))))
                                                                                                      (and x7419
                                                                                                           x7418
                                                                                                           x7401)))))
                                                                                          g7400)))))
                                                                            g7391)))))
                                                              g7387)))))
                                                g7384))))
                                    g7383)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7420
                                            (letrec ((x7421
                                                      (letrec ((x7422
                                                                (letrec ((x7423
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7423))))
                                                        (car x7422))))
                                              (cdr x7421))))
                                    g7420)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7424
                                            (letrec ((x7425
                                                      (letrec ((x7426
                                                                (letrec ((x7427
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7427))))
                                                        (car x7426))))
                                              (car x7425))))
                                    g7424)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7428 (eq? x y))) g7428)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7429
                                            (letrec ((x7431 (number? x)))
                                              (assert x7431)))
                                           (g7430
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7432
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7433
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7433)))))
                                                g7432))))
                                    g7430)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7434
                                            (letrec ((x7437
                                                      (string? filename)))
                                              (assert x7437)))
                                           (g7435
                                            (letrec ((x7438 (procedure? proc)))
                                              (assert x7438)))
                                           (g7436
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7439
                                                        (close-input-port
                                                         input-port))
                                                       (g7440 res))
                                                g7440))))
                                    g7436)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7441 (cons x '()))) g7441)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7442
                                            (letrec ((x7445 (char? c1)))
                                              (assert x7445)))
                                           (g7443
                                            (letrec ((x7446 (char? c2)))
                                              (assert x7446)))
                                           (g7444
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7447
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7447))))
                                    g7444)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7448
                                            (letrec ((x7449
                                                      (letrec ((x7450 (car x)))
                                                        (car x7450))))
                                              (cdr x7449))))
                                    g7448)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7451
                                            (letrec ((x7452
                                                      (letrec ((x7453
                                                                (letrec ((x7454
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7454))))
                                                        (car x7453))))
                                              (cdr x7452))))
                                    g7451)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7455
                                            (letrec ((x7456
                                                      (letrec ((x7457 (car x)))
                                                        (cdr x7457))))
                                              (car x7456))))
                                    g7455)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7458
                                            (letrec ((x7459
                                                      (letrec ((x7460 (cdr x)))
                                                        (car x7460))))
                                              (car x7459))))
                                    g7458)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7461
                                            (letrec ((x7464 (char? c1)))
                                              (assert x7464)))
                                           (g7462
                                            (letrec ((x7465 (char? c2)))
                                              (assert x7465)))
                                           (g7463
                                            (letrec ((x7466
                                                      (char-ci<=? c1 c2)))
                                              (not x7466))))
                                    g7463)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7467
                                            (letrec ((x7468
                                                      (letrec ((x7469
                                                                (letrec ((x7470
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7470))))
                                                        (car x7469))))
                                              (car x7468))))
                                    g7467)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7471
                                            (letrec ((x7473 (number? x)))
                                              (assert x7473)))
                                           (g7472 (< x 0)))
                                    g7472)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7474 (memq e l))) g7474)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7475
                                            (letrec ((x7476
                                                      (letrec ((x7477 (car x)))
                                                        (car x7477))))
                                              (car x7476))))
                                    g7475)))
                               (debug
                                (lambda (e) (letrec ((g7478 '())) g7478)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7479
                                            (letrec ((x7481 (list? l)))
                                              (assert x7481)))
                                           (g7480
                                            (letrec ((x-cnd7482 (null? l)))
                                              (if x-cnd7482
                                                '()
                                                (letrec ((x7485
                                                          (letrec ((x7486
                                                                    (cdr l)))
                                                            (reverse x7486)))
                                                         (x7483
                                                          (letrec ((x7484
                                                                    (car l)))
                                                            (list x7484))))
                                                  (append x7485 x7483))))))
                                    g7480)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7487
                                            (letrec ((x7488
                                                      (letrec ((x7489
                                                                (letrec ((x7490
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7490))))
                                                        (car x7489))))
                                              (car x7488))))
                                    g7487)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7491
                                            (letrec ((x7492
                                                      (letrec ((x7493
                                                                (letrec ((x7494
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7494))))
                                                        (cdr x7493))))
                                              (cdr x7492))))
                                    g7491)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7495
                                            (letrec ((x7497 (number? x)))
                                              (assert x7497)))
                                           (g7496
                                            (letrec ((x7498 (modulo x 2)))
                                              (= 1 x7498))))
                                    g7496)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7499
                                            (letrec ((x7500
                                                      (letrec ((x7501
                                                                (letrec ((x7502
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7502))))
                                                        (car x7501))))
                                              (car x7500))))
                                    g7499)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7503
                                            (letrec ((x7506 (procedure? proc)))
                                              (assert x7506)))
                                           (g7504
                                            (letrec ((x7507 (list? args)))
                                              (assert x7507)))
                                           (g7505
                                            (if cnd
                                              (letrec ((g7508 (proc))) g7508)
                                              (if cnd
                                                (letrec ((g7509
                                                          (letrec ((x7510
                                                                    (car
                                                                     args)))
                                                            (proc x7510))))
                                                  g7509)
                                                (if cnd
                                                  (letrec ((g7511
                                                            (letrec ((x7513
                                                                      (car
                                                                       args))
                                                                     (x7512
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7513
                                                               x7512))))
                                                    g7511)
                                                  (if cnd
                                                    (letrec ((g7514
                                                              (letrec ((x7517
                                                                        (car
                                                                         args))
                                                                       (x7516
                                                                        (cadr
                                                                         args))
                                                                       (x7515
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7517
                                                                 x7516
                                                                 x7515))))
                                                      g7514)
                                                    (if cnd
                                                      (letrec ((g7518
                                                                (letrec ((x7522
                                                                          (car
                                                                           args))
                                                                         (x7521
                                                                          (cadr
                                                                           args))
                                                                         (x7520
                                                                          (caddr
                                                                           args))
                                                                         (x7519
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7522
                                                                   x7521
                                                                   x7520
                                                                   x7519))))
                                                        g7518)
                                                      (if cnd
                                                        (letrec ((g7523
                                                                  (letrec ((x7529
                                                                            (car
                                                                             args))
                                                                           (x7528
                                                                            (cadr
                                                                             args))
                                                                           (x7527
                                                                            (caddr
                                                                             args))
                                                                           (x7526
                                                                            (cadddr
                                                                             args))
                                                                           (x7524
                                                                            (letrec ((x7525
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7525))))
                                                                    (proc
                                                                     x7529
                                                                     x7528
                                                                     x7527
                                                                     x7526
                                                                     x7524))))
                                                          g7523)
                                                        (if cnd
                                                          (letrec ((g7530
                                                                    (letrec ((x7538
                                                                              (car
                                                                               args))
                                                                             (x7537
                                                                              (cadr
                                                                               args))
                                                                             (x7536
                                                                              (caddr
                                                                               args))
                                                                             (x7535
                                                                              (cadddr
                                                                               args))
                                                                             (x7533
                                                                              (letrec ((x7534
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7534)))
                                                                             (x7531
                                                                              (letrec ((x7532
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7532))))
                                                                      (proc
                                                                       x7538
                                                                       x7537
                                                                       x7536
                                                                       x7535
                                                                       x7533
                                                                       x7531))))
                                                            g7530)
                                                          (if cnd
                                                            (letrec ((g7539
                                                                      (letrec ((x7549
                                                                                (car
                                                                                 args))
                                                                               (x7548
                                                                                (cadr
                                                                                 args))
                                                                               (x7547
                                                                                (caddr
                                                                                 args))
                                                                               (x7546
                                                                                (cadddr
                                                                                 args))
                                                                               (x7544
                                                                                (letrec ((x7545
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7545)))
                                                                               (x7542
                                                                                (letrec ((x7543
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7543)))
                                                                               (x7540
                                                                                (letrec ((x7541
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7541))))
                                                                        (proc
                                                                         x7549
                                                                         x7548
                                                                         x7547
                                                                         x7546
                                                                         x7544
                                                                         x7542
                                                                         x7540))))
                                                              g7539)
                                                            (letrec ((g7550
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7550)))))))))))
                                    g7505)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7551
                                            (letrec ((x7553 (list? l)))
                                              (assert x7553)))
                                           (g7552
                                            (letrec ((x-cnd7554 (null? l)))
                                              (if x-cnd7554
                                                #f
                                                (letrec ((x-cnd7555
                                                          (letrec ((x7556
                                                                    (car l)))
                                                            (equal? x7556 e))))
                                                  (if x-cnd7555
                                                    l
                                                    (letrec ((x7557 (cdr l)))
                                                      (member e x7557))))))))
                                    g7552)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7558
                                            (letrec ((x7559
                                                      (letrec ((x7560
                                                                (letrec ((x7561
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7561))))
                                                        (cdr x7560))))
                                              (cdr x7559))))
                                    g7558)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g7562
                                            (letrec ((x7563
                                                      (letrec ((x7564
                                                                (letrec ((x7565
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7565))))
                                                        (cdr x7564))))
                                              (car x7563))))
                                    g7562)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7566 (random 42))) g7566)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7567
                                            (letrec ((x7569 (number? x)))
                                              (assert x7569)))
                                           (g7568 (= x 0)))
                                    g7568)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7570
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7571
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7571))))
                                    g7570)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7572
                                            (letrec ((x7573 (cdr x)))
                                              (car x7573))))
                                    g7572)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7574
                                            (letrec ((val7156
                                                      (letrec ((x7577
                                                                (pair? l))
                                                               (x7575
                                                                (letrec ((x7576
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7576))))
                                                        (and x7577 x7575))))
                                              (letrec ((g7578
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7578))))
                                    g7574)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7579
                                            (letrec ((x7580
                                                      (letrec ((x7581
                                                                (letrec ((x7582
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7582))))
                                                        (cdr x7581))))
                                              (cdr x7580))))
                                    g7579)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7583
                                            (letrec ((x-cnd7584
                                                      (letrec ((x7585 #\0))
                                                        (char<=? x7585 c))))
                                              (if x-cnd7584
                                                (letrec ((x7586 #\9))
                                                  (char<=? c x7586))
                                                #f))))
                                    g7583)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7587
                                            (letrec ((x7589 (list? l)))
                                              (assert x7589)))
                                           (g7588
                                            (letrec ((x-cnd7590 (null? l)))
                                              (if x-cnd7590
                                                #f
                                                (letrec ((x-cnd7591
                                                          (letrec ((x7592
                                                                    (caar l)))
                                                            (eqv? x7592 k))))
                                                  (if x-cnd7591
                                                    (car l)
                                                    (letrec ((x7593 (cdr l)))
                                                      (assq k x7593))))))))
                                    g7588)))
                               (not
                                (lambda (x)
                                  (letrec ((g7594 (if x #f #t))) g7594)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7595 (append l1 l2))) g7595)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7596
                                            (letrec ((x7598 (list? l)))
                                              (assert x7598)))
                                           (g7597
                                            (letrec ((x-cnd7599 (null? l)))
                                              (if x-cnd7599
                                                #f
                                                (letrec ((x-cnd7600
                                                          (letrec ((x7601
                                                                    (car l)))
                                                            (eq? x7601 e))))
                                                  (if x-cnd7600
                                                    l
                                                    (letrec ((x7602 (cdr l)))
                                                      (memq e x7602))))))))
                                    g7597)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7603
                                            (letrec ((x7604
                                                      (letrec ((x7605
                                                                (letrec ((x7606
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7606))))
                                                        (cdr x7605))))
                                              (car x7604))))
                                    g7603)))
                               (length
                                (lambda (l)
                                  (letrec ((g7607
                                            (letrec ((x7609 (list? l)))
                                              (assert x7609)))
                                           (g7608
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7610
                                                                  (letrec ((x-cnd7611
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7611
                                                                      0
                                                                      (letrec ((x7612
                                                                                (letrec ((x7613
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7613))))
                                                                        (+
                                                                         1
                                                                         x7612))))))
                                                          g7610))))
                                              (letrec ((g7614 (rec l)))
                                                g7614))))
                                    g7608)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7615
                                            (letrec ((x7618 (char? c1)))
                                              (assert x7618)))
                                           (g7616
                                            (letrec ((x7619 (char? c2)))
                                              (assert x7619)))
                                           (g7617
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7620
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7620))))
                                    g7617)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7621
                                            (letrec ((x7622 (string<=? s1 s2)))
                                              (not x7622))))
                                    g7621)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7623
                                            (letrec ((x7624
                                                      (letrec ((x7625 (cdr x)))
                                                        (car x7625))))
                                              (cdr x7624))))
                                    g7623)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7626
                                            (letrec ((x7628 (list? l)))
                                              (assert x7628)))
                                           (g7627
                                            (letrec ((x-cnd7629 (null? l)))
                                              (if x-cnd7629
                                                #f
                                                (letrec ((x-cnd7630
                                                          (letrec ((x7631
                                                                    (caar l)))
                                                            (equal? x7631 k))))
                                                  (if x-cnd7630
                                                    (car l)
                                                    (letrec ((x7632 (cdr l)))
                                                      (assoc k x7632))))))))
                                    g7627)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7633
                                            (letrec ((x7634 (car x)))
                                              (car x7634))))
                                    g7633)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7635
                                            (letrec ((x7638 (char? c1)))
                                              (assert x7638)))
                                           (g7636
                                            (letrec ((x7639 (char? c2)))
                                              (assert x7639)))
                                           (g7637
                                            (letrec ((x7640 (char<=? c1 c2)))
                                              (not x7640))))
                                    g7637)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7641
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7642
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7642))))
                                    g7641)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7643
                                            (letrec ((x7646 (procedure? f)))
                                              (assert x7646)))
                                           (g7644
                                            (letrec ((x7647 (list? l)))
                                              (assert x7647)))
                                           (g7645
                                            (letrec ((x-cnd7648 (null? l)))
                                              (if x-cnd7648
                                                #t
                                                (letrec ((x-cnd7649 (pair? l)))
                                                  (if x-cnd7649
                                                    (letrec ((g7650
                                                              (letrec ((x7652
                                                                        (car
                                                                         l)))
                                                                (f x7652)))
                                                             (g7651
                                                              (letrec ((x7653
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7653))))
                                                      g7651)
                                                    '()))))))
                                    g7645)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7654
                                            (letrec ((x7656 (number? x)))
                                              (assert x7656)))
                                           (g7655
                                            (letrec ((x-cnd7657 (< x 0)))
                                              (if x-cnd7657 (- 0 x) x))))
                                    g7655)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7658
                                            (letrec ((x7661 (char? c1)))
                                              (assert x7661)))
                                           (g7659
                                            (letrec ((x7662 (char? c2)))
                                              (assert x7662)))
                                           (g7660
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7663
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7663))))
                                    g7660)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7664
                                            (letrec ((x7665
                                                      (letrec ((x7666
                                                                (letrec ((x7667
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7667))))
                                                        (cdr x7666))))
                                              (car x7665))))
                                    g7664)))
                               (newline
                                (lambda () (letrec ((g7668 #f)) g7668)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7669
                                            (letrec ((x7671
                                                      (letrec ((x7672 (* m n)))
                                                        (abs x7672)))
                                                     (x7670 (gcd m n)))
                                              (/ x7671 x7670))))
                                    g7669)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7673
                                            (letrec ((x7675 (number? x)))
                                              (assert x7675)))
                                           (g7674
                                            (letrec ((x7676 (<= x y)))
                                              (not x7676))))
                                    g7674)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7677
                                            (letrec ((x7681 (list? l)))
                                              (assert x7681)))
                                           (g7678
                                            (letrec ((x7682 (number? index)))
                                              (assert x7682)))
                                           (g7679
                                            (letrec ((x7683
                                                      (letrec ((x7684
                                                                (length l)))
                                                        (< index x7684))))
                                              (assert x7683)))
                                           (g7680
                                            (letrec ((x-cnd7685 (= index 0)))
                                              (if x-cnd7685
                                                (car l)
                                                (letrec ((x7687 (cdr l))
                                                         (x7686 (- index 1)))
                                                  (list-ref x7687 x7686))))))
                                    g7680)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7688
                                            (letrec ((x-cnd7689 (= b 0)))
                                              (if x-cnd7689
                                                a
                                                (letrec ((x7690 (modulo a b)))
                                                  (gcd b x7690))))))
                                    g7688)))
                               (real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7691
                                            (letrec ((x-cnd7692 (real? g7162)))
                                              (if x-cnd7692
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7691)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7693
                                            (letrec ((x-cnd7694
                                                      (boolean? g7165)))
                                              (if x-cnd7694
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7693)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7695
                                            (letrec ((x-cnd7696
                                                      (number? g7168)))
                                              (if x-cnd7696
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7695)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7697
                                            (letrec ((x-cnd7698
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7698
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7697)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7699
                                            (letrec ((x-cnd7700
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7700
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7699)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7701
                                            (letrec ((x-cnd7702 (pair? g7177)))
                                              (if x-cnd7702
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7701)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7703
                                            (letrec ((x-cnd7704 (pair? g7180)))
                                              (if x-cnd7704
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7703)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7705
                                            (letrec ((x-cnd7706
                                                      (integer? g7183)))
                                              (if x-cnd7706
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7705)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7707
                                            (lambda (k j v)
                                              (letrec ((g7708
                                                        (letrec ((x-cnd7709
                                                                  (c1 k j v)))
                                                          (if x-cnd7709
                                                            (c2 k j v)
                                                            #f))))
                                                g7708))))
                                    g7707)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7710
                                            (lambda (k j v)
                                              (letrec ((g7711
                                                        (letrec ((x-cnd7712
                                                                  (null? v)))
                                                          (if x-cnd7712
                                                            '()
                                                            (letrec ((x7716
                                                                      (letrec ((x7717
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7717)))
                                                                     (x7713
                                                                      (letrec ((x7715
                                                                                (list-of
                                                                                 contract))
                                                                               (x7714
                                                                                (cdr
                                                                                 v)))
                                                                        (x7715
                                                                         k
                                                                         j
                                                                         x7714))))
                                                              (cons
                                                               x7716
                                                               x7713))))))
                                                g7711))))
                                    g7710)))
                               (any? (lambda (v) (letrec ((g7718 #t)) g7718)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7719
                                            (letrec ((x7720 (= v 0)))
                                              (not x7720))))
                                    g7719)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7721
                                            (letrec ((x-cnd7722
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7722
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7721)))
                               (meta (lambda (v) (letrec ((g7723 v)) g7723)))
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
                                (lambda (cnd) (letrec ((g7724 #t)) g7724)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7725
                                            (letrec ((x7726
                                                      (letrec ((x7727 (cdr x)))
                                                        (cdr x7727))))
                                              (cdr x7726))))
                                    g7725)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7728
                                            (letrec ((x7731 (procedure? f)))
                                              (assert x7731)))
                                           (g7729
                                            (letrec ((x7732 (list? l)))
                                              (assert x7732)))
                                           (g7730
                                            (letrec ((x-cnd7733 (null? l)))
                                              (if x-cnd7733
                                                '()
                                                (letrec ((x7736
                                                          (letrec ((x7737
                                                                    (car l)))
                                                            (f x7737)))
                                                         (x7734
                                                          (letrec ((x7735
                                                                    (cdr l)))
                                                            (map f x7735))))
                                                  (cons x7736 x7734))))))
                                    g7730)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7738
                                            (letrec ((x7739 (car x)))
                                              (cdr x7739))))
                                    g7738)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7740
                                            (letrec ((x7741
                                                      (letrec ((x7742
                                                                (letrec ((x7743
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7743))))
                                                        (cdr x7742))))
                                              (car x7741))))
                                    g7740)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7744
                                            (letrec ((x7745
                                                      (letrec ((x7746
                                                                (letrec ((x7747
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7747))))
                                                        (car x7746))))
                                              (cdr x7745))))
                                    g7744)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7748
                                            (letrec ((x7751
                                                      (string? filename)))
                                              (assert x7751)))
                                           (g7749
                                            (letrec ((x7752 (procedure? proc)))
                                              (assert x7752)))
                                           (g7750
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7753
                                                        (close-output-port
                                                         output-port))
                                                       (g7754 res))
                                                g7754))))
                                    g7750)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7755
                                            (letrec ((x7756
                                                      (letrec ((x7757 (cdr x)))
                                                        (cdr x7757))))
                                              (car x7756))))
                                    g7755)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7758
                                            (letrec ((x7759
                                                      (letrec ((x7760
                                                                (letrec ((x7761
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7761))))
                                                        (car x7760))))
                                              (cdr x7759))))
                                    g7758)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7762
                                            (letrec ((x7764 (list? l)))
                                              (assert x7764)))
                                           (g7763
                                            (letrec ((x-cnd7765 (null? l)))
                                              (if x-cnd7765
                                                #f
                                                (letrec ((x-cnd7766
                                                          (letrec ((x7767
                                                                    (caar l)))
                                                            (eq? x7767 k))))
                                                  (if x-cnd7766
                                                    (car l)
                                                    (letrec ((x7768 (cdr l)))
                                                      (assq k x7768))))))))
                                    g7763)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7769
                                            (letrec ((x7770 (modulo x 2)))
                                              (= 0 x7770))))
                                    g7769)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7771
                                            (letrec ((x7773 (list? l)))
                                              (assert x7773)))
                                           (g7772
                                            (letrec ((x-cnd7774 (null? l)))
                                              (if x-cnd7774
                                                ""
                                                (letrec ((x7777
                                                          (letrec ((x7778
                                                                    (car l)))
                                                            (char->string
                                                             x7778)))
                                                         (x7775
                                                          (letrec ((x7776
                                                                    (cdr l)))
                                                            (list->string
                                                             x7776))))
                                                  (string-append
                                                   x7777
                                                   x7775))))))
                                    g7772)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7779
                                            (letrec ((x7782 (char? c1)))
                                              (assert x7782)))
                                           (g7780
                                            (letrec ((x7783 (char? c2)))
                                              (assert x7783)))
                                           (g7781
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7784
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7784))))
                                    g7781)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7785
                                            (letrec ((x7786
                                                      (letrec ((x7787
                                                                (letrec ((x7788
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7788))))
                                                        (cdr x7787))))
                                              (cdr x7786))))
                                    g7785)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7789
                                            (letrec ((x7792 (list? l)))
                                              (assert x7792)))
                                           (g7790
                                            (letrec ((x7793 (numer?)))
                                              (assert x7793)))
                                           (g7791
                                            (letrec ((x-cnd7794 (zero? k)))
                                              (if x-cnd7794
                                                x
                                                (letrec ((x7796 (cdr x))
                                                         (x7795 (- k 1)))
                                                  (list-tail x7796 x7795))))))
                                    g7791)))
                               (halt (lambda () (letrec ((g7797 '())) g7797)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7798
                                            (letrec ((x-cnd7799
                                                      (letrec ((x7800 #\a))
                                                        (char-ci>=? c x7800))))
                                              (if x-cnd7799
                                                (letrec ((x7801 #\z))
                                                  (char-ci<=? c x7801))
                                                #f))))
                                    g7798)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7802
                                            (letrec ((x7804 (number? x)))
                                              (assert x7804)))
                                           (g7803
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7805
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7806
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7806)))))
                                                g7805))))
                                    g7803)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7807
                                            (letrec ((val7146
                                                      (letrec ((x7808
                                                                (char->integer
                                                                 c)))
                                                        (= x7808 9))))
                                              (letrec ((g7809
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7810
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7810
                                                                       10))))
                                                            (letrec ((g7811
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7812
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7812
                                                                           32)))))
                                                              g7811)))))
                                                g7809))))
                                    g7807)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7813
                                            (letrec ((x7814
                                                      (letrec ((x7815 (car x)))
                                                        (cdr x7815))))
                                              (cdr x7814))))
                                    g7813)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7816
                                            (letrec ((x7818 (number? x)))
                                              (assert x7818)))
                                           (g7817 (> x 0)))
                                    g7817)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7819 #f)) g7819)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7820
                                            (letrec ((x7821 (cdr x)))
                                              (cdr x7821))))
                                    g7820)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7822
                                            (letrec ((x7824 (number? x)))
                                              (assert x7824)))
                                           (g7823
                                            (letrec ((x-cnd7825 (< x 0)))
                                              (if x-cnd7825
                                                (ceiling x)
                                                (floor x)))))
                                    g7823)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7826
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7827
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7829
                                                                              (null?
                                                                               a))
                                                                             (x7828
                                                                              (null?
                                                                               b)))
                                                                      (and x7829
                                                                           x7828))))
                                                            (letrec ((g7830
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7833
                                                                                            (string?
                                                                                             a))
                                                                                           (x7832
                                                                                            (string?
                                                                                             b))
                                                                                           (x7831
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7833
                                                                                         x7832
                                                                                         x7831))))
                                                                          (letrec ((g7834
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7842
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7841
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7838
                                                                                                          (letrec ((x7840
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7839
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7840
                                                                                                             x7839)))
                                                                                                         (x7835
                                                                                                          (letrec ((x7837
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7836
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7837
                                                                                                             x7836))))
                                                                                                  (and x7842
                                                                                                       x7841
                                                                                                       x7838
                                                                                                       x7835))))
                                                                                        (letrec ((g7843
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7862
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7861
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7844
                                                                                                              (letrec ((x7858
                                                                                                                        (letrec ((x7859
                                                                                                                                  (letrec ((x7860
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7860))))
                                                                                                                          (x7859)))
                                                                                                                       (x7845
                                                                                                                        (letrec ((x7856
                                                                                                                                  (letrec ((x7857
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7857
                                                                                                                                     n)))
                                                                                                                                 (x7846
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7847
                                                                                                                                                        (letrec ((x7854
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7848
                                                                                                                                                                  (letrec ((x7851
                                                                                                                                                                            (letrec ((x7853
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7852
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7853
                                                                                                                                                                               x7852)))
                                                                                                                                                                           (x7849
                                                                                                                                                                            (letrec ((x7850
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7850))))
                                                                                                                                                                    (and x7851
                                                                                                                                                                         x7849))))
                                                                                                                                                          (or x7854
                                                                                                                                                              x7848))))
                                                                                                                                                g7847))))
                                                                                                                                    (letrec ((g7855
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7855))))
                                                                                                                          (and x7856
                                                                                                                               x7846))))
                                                                                                                (let x7858 x7845))))
                                                                                                      (and x7862
                                                                                                           x7861
                                                                                                           x7844)))))
                                                                                          g7843)))))
                                                                            g7834)))))
                                                              g7830)))))
                                                g7827))))
                                    g7826)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7863
                                            (letrec ((x7864
                                                      (letrec ((x7865
                                                                (letrec ((x7866
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7866))))
                                                        (car x7865))))
                                              (cdr x7864))))
                                    g7863)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7867
                                            (letrec ((x7868
                                                      (letrec ((x7869
                                                                (letrec ((x7870
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7870))))
                                                        (car x7869))))
                                              (car x7868))))
                                    g7867)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7871 (eq? x y))) g7871)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7872
                                            (letrec ((x7874 (number? x)))
                                              (assert x7874)))
                                           (g7873
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7875
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7876
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7876)))))
                                                g7875))))
                                    g7873)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7877
                                            (letrec ((x7880
                                                      (string? filename)))
                                              (assert x7880)))
                                           (g7878
                                            (letrec ((x7881 (procedure? proc)))
                                              (assert x7881)))
                                           (g7879
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7882
                                                        (close-input-port
                                                         input-port))
                                                       (g7883 res))
                                                g7883))))
                                    g7879)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7884 (cons x '()))) g7884)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7885
                                            (letrec ((x7888 (char? c1)))
                                              (assert x7888)))
                                           (g7886
                                            (letrec ((x7889 (char? c2)))
                                              (assert x7889)))
                                           (g7887
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7890
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7890))))
                                    g7887)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7891
                                            (letrec ((x7892
                                                      (letrec ((x7893 (car x)))
                                                        (car x7893))))
                                              (cdr x7892))))
                                    g7891)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7894
                                            (letrec ((x7895
                                                      (letrec ((x7896
                                                                (letrec ((x7897
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7897))))
                                                        (car x7896))))
                                              (cdr x7895))))
                                    g7894)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7898
                                            (letrec ((x7899
                                                      (letrec ((x7900 (car x)))
                                                        (cdr x7900))))
                                              (car x7899))))
                                    g7898)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7901
                                            (letrec ((x7902
                                                      (letrec ((x7903 (cdr x)))
                                                        (car x7903))))
                                              (car x7902))))
                                    g7901)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7904
                                            (letrec ((x7907 (char? c1)))
                                              (assert x7907)))
                                           (g7905
                                            (letrec ((x7908 (char? c2)))
                                              (assert x7908)))
                                           (g7906
                                            (letrec ((x7909
                                                      (char-ci<=? c1 c2)))
                                              (not x7909))))
                                    g7906)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7910
                                            (letrec ((x7911
                                                      (letrec ((x7912
                                                                (letrec ((x7913
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7913))))
                                                        (car x7912))))
                                              (car x7911))))
                                    g7910)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7914
                                            (letrec ((x7916 (number? x)))
                                              (assert x7916)))
                                           (g7915 (< x 0)))
                                    g7915)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7917 (memq e l))) g7917)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7918
                                            (letrec ((x7919
                                                      (letrec ((x7920 (car x)))
                                                        (car x7920))))
                                              (car x7919))))
                                    g7918)))
                               (debug
                                (lambda (e) (letrec ((g7921 '())) g7921)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7922
                                            (letrec ((x7924 (list? l)))
                                              (assert x7924)))
                                           (g7923
                                            (letrec ((x-cnd7925 (null? l)))
                                              (if x-cnd7925
                                                '()
                                                (letrec ((x7928
                                                          (letrec ((x7929
                                                                    (cdr l)))
                                                            (reverse x7929)))
                                                         (x7926
                                                          (letrec ((x7927
                                                                    (car l)))
                                                            (list x7927))))
                                                  (append x7928 x7926))))))
                                    g7923)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7930
                                            (letrec ((x7931
                                                      (letrec ((x7932
                                                                (letrec ((x7933
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7933))))
                                                        (car x7932))))
                                              (car x7931))))
                                    g7930)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7934
                                            (letrec ((x7935
                                                      (letrec ((x7936
                                                                (letrec ((x7937
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7937))))
                                                        (cdr x7936))))
                                              (cdr x7935))))
                                    g7934)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7938
                                            (letrec ((x7940 (number? x)))
                                              (assert x7940)))
                                           (g7939
                                            (letrec ((x7941 (modulo x 2)))
                                              (= 1 x7941))))
                                    g7939)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7942
                                            (letrec ((x7943
                                                      (letrec ((x7944
                                                                (letrec ((x7945
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7945))))
                                                        (car x7944))))
                                              (car x7943))))
                                    g7942)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7946
                                            (letrec ((x7949 (procedure? proc)))
                                              (assert x7949)))
                                           (g7947
                                            (letrec ((x7950 (list? args)))
                                              (assert x7950)))
                                           (g7948
                                            (if cnd
                                              (letrec ((g7951 (proc))) g7951)
                                              (if cnd
                                                (letrec ((g7952
                                                          (letrec ((x7953
                                                                    (car
                                                                     args)))
                                                            (proc x7953))))
                                                  g7952)
                                                (if cnd
                                                  (letrec ((g7954
                                                            (letrec ((x7956
                                                                      (car
                                                                       args))
                                                                     (x7955
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7956
                                                               x7955))))
                                                    g7954)
                                                  (if cnd
                                                    (letrec ((g7957
                                                              (letrec ((x7960
                                                                        (car
                                                                         args))
                                                                       (x7959
                                                                        (cadr
                                                                         args))
                                                                       (x7958
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7960
                                                                 x7959
                                                                 x7958))))
                                                      g7957)
                                                    (if cnd
                                                      (letrec ((g7961
                                                                (letrec ((x7965
                                                                          (car
                                                                           args))
                                                                         (x7964
                                                                          (cadr
                                                                           args))
                                                                         (x7963
                                                                          (caddr
                                                                           args))
                                                                         (x7962
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7965
                                                                   x7964
                                                                   x7963
                                                                   x7962))))
                                                        g7961)
                                                      (if cnd
                                                        (letrec ((g7966
                                                                  (letrec ((x7972
                                                                            (car
                                                                             args))
                                                                           (x7971
                                                                            (cadr
                                                                             args))
                                                                           (x7970
                                                                            (caddr
                                                                             args))
                                                                           (x7969
                                                                            (cadddr
                                                                             args))
                                                                           (x7967
                                                                            (letrec ((x7968
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7968))))
                                                                    (proc
                                                                     x7972
                                                                     x7971
                                                                     x7970
                                                                     x7969
                                                                     x7967))))
                                                          g7966)
                                                        (if cnd
                                                          (letrec ((g7973
                                                                    (letrec ((x7981
                                                                              (car
                                                                               args))
                                                                             (x7980
                                                                              (cadr
                                                                               args))
                                                                             (x7979
                                                                              (caddr
                                                                               args))
                                                                             (x7978
                                                                              (cadddr
                                                                               args))
                                                                             (x7976
                                                                              (letrec ((x7977
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7977)))
                                                                             (x7974
                                                                              (letrec ((x7975
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7975))))
                                                                      (proc
                                                                       x7981
                                                                       x7980
                                                                       x7979
                                                                       x7978
                                                                       x7976
                                                                       x7974))))
                                                            g7973)
                                                          (if cnd
                                                            (letrec ((g7982
                                                                      (letrec ((x7992
                                                                                (car
                                                                                 args))
                                                                               (x7991
                                                                                (cadr
                                                                                 args))
                                                                               (x7990
                                                                                (caddr
                                                                                 args))
                                                                               (x7989
                                                                                (cadddr
                                                                                 args))
                                                                               (x7987
                                                                                (letrec ((x7988
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7988)))
                                                                               (x7985
                                                                                (letrec ((x7986
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7986)))
                                                                               (x7983
                                                                                (letrec ((x7984
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7984))))
                                                                        (proc
                                                                         x7992
                                                                         x7991
                                                                         x7990
                                                                         x7989
                                                                         x7987
                                                                         x7985
                                                                         x7983))))
                                                              g7982)
                                                            (letrec ((g7993
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7993)))))))))))
                                    g7948)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7994
                                            (letrec ((x7996 (list? l)))
                                              (assert x7996)))
                                           (g7995
                                            (letrec ((x-cnd7997 (null? l)))
                                              (if x-cnd7997
                                                #f
                                                (letrec ((x-cnd7998
                                                          (letrec ((x7999
                                                                    (car l)))
                                                            (equal? x7999 e))))
                                                  (if x-cnd7998
                                                    l
                                                    (letrec ((x8000 (cdr l)))
                                                      (member e x8000))))))))
                                    g7995)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g8001
                                            (letrec ((x8002
                                                      (letrec ((x8003
                                                                (letrec ((x8004
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8004))))
                                                        (cdr x8003))))
                                              (cdr x8002))))
                                    g8001)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g8005
                                            (letrec ((x8006
                                                      (letrec ((x8007
                                                                (letrec ((x8008
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8008))))
                                                        (cdr x8007))))
                                              (car x8006))))
                                    g8005)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8009 (random 42))) g8009)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8010
                                            (letrec ((x8012 (number? x)))
                                              (assert x8012)))
                                           (g8011 (= x 0)))
                                    g8011)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8013
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8014
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8014))))
                                    g8013)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8015
                                            (letrec ((x8016 (cdr x)))
                                              (car x8016))))
                                    g8015)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8017
                                            (letrec ((val7156
                                                      (letrec ((x8020
                                                                (pair? l))
                                                               (x8018
                                                                (letrec ((x8019
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8019))))
                                                        (and x8020 x8018))))
                                              (letrec ((g8021
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8021))))
                                    g8017)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8022
                                            (letrec ((x8023
                                                      (letrec ((x8024
                                                                (letrec ((x8025
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8025))))
                                                        (cdr x8024))))
                                              (cdr x8023))))
                                    g8022)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8026
                                            (letrec ((x-cnd8027
                                                      (letrec ((x8028 #\0))
                                                        (char<=? x8028 c))))
                                              (if x-cnd8027
                                                (letrec ((x8029 #\9))
                                                  (char<=? c x8029))
                                                #f))))
                                    g8026)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8030
                                            (letrec ((x8032 (list? l)))
                                              (assert x8032)))
                                           (g8031
                                            (letrec ((x-cnd8033 (null? l)))
                                              (if x-cnd8033
                                                #f
                                                (letrec ((x-cnd8034
                                                          (letrec ((x8035
                                                                    (caar l)))
                                                            (eqv? x8035 k))))
                                                  (if x-cnd8034
                                                    (car l)
                                                    (letrec ((x8036 (cdr l)))
                                                      (assq k x8036))))))))
                                    g8031)))
                               (not
                                (lambda (x)
                                  (letrec ((g8037 (if x #f #t))) g8037)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8038 (append l1 l2))) g8038)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8039
                                            (letrec ((x8041 (list? l)))
                                              (assert x8041)))
                                           (g8040
                                            (letrec ((x-cnd8042 (null? l)))
                                              (if x-cnd8042
                                                #f
                                                (letrec ((x-cnd8043
                                                          (letrec ((x8044
                                                                    (car l)))
                                                            (eq? x8044 e))))
                                                  (if x-cnd8043
                                                    l
                                                    (letrec ((x8045 (cdr l)))
                                                      (memq e x8045))))))))
                                    g8040)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8046
                                            (letrec ((x8047
                                                      (letrec ((x8048
                                                                (letrec ((x8049
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8049))))
                                                        (cdr x8048))))
                                              (car x8047))))
                                    g8046)))
                               (length
                                (lambda (l)
                                  (letrec ((g8050
                                            (letrec ((x8052 (list? l)))
                                              (assert x8052)))
                                           (g8051
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8053
                                                                  (letrec ((x-cnd8054
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8054
                                                                      0
                                                                      (letrec ((x8055
                                                                                (letrec ((x8056
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8056))))
                                                                        (+
                                                                         1
                                                                         x8055))))))
                                                          g8053))))
                                              (letrec ((g8057 (rec l)))
                                                g8057))))
                                    g8051)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8058
                                            (letrec ((x8061 (char? c1)))
                                              (assert x8061)))
                                           (g8059
                                            (letrec ((x8062 (char? c2)))
                                              (assert x8062)))
                                           (g8060
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8063
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8063))))
                                    g8060)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8064
                                            (letrec ((x8065 (string<=? s1 s2)))
                                              (not x8065))))
                                    g8064)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8066
                                            (letrec ((x8067
                                                      (letrec ((x8068 (cdr x)))
                                                        (car x8068))))
                                              (cdr x8067))))
                                    g8066)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8069
                                            (letrec ((x8071 (list? l)))
                                              (assert x8071)))
                                           (g8070
                                            (letrec ((x-cnd8072 (null? l)))
                                              (if x-cnd8072
                                                #f
                                                (letrec ((x-cnd8073
                                                          (letrec ((x8074
                                                                    (caar l)))
                                                            (equal? x8074 k))))
                                                  (if x-cnd8073
                                                    (car l)
                                                    (letrec ((x8075 (cdr l)))
                                                      (assoc k x8075))))))))
                                    g8070)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8076
                                            (letrec ((x8077 (car x)))
                                              (car x8077))))
                                    g8076)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8078
                                            (letrec ((x8081 (char? c1)))
                                              (assert x8081)))
                                           (g8079
                                            (letrec ((x8082 (char? c2)))
                                              (assert x8082)))
                                           (g8080
                                            (letrec ((x8083 (char<=? c1 c2)))
                                              (not x8083))))
                                    g8080)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8084
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8085
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8085))))
                                    g8084)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8086
                                            (letrec ((x8089 (procedure? f)))
                                              (assert x8089)))
                                           (g8087
                                            (letrec ((x8090 (list? l)))
                                              (assert x8090)))
                                           (g8088
                                            (letrec ((x-cnd8091 (null? l)))
                                              (if x-cnd8091
                                                #t
                                                (letrec ((x-cnd8092 (pair? l)))
                                                  (if x-cnd8092
                                                    (letrec ((g8093
                                                              (letrec ((x8095
                                                                        (car
                                                                         l)))
                                                                (f x8095)))
                                                             (g8094
                                                              (letrec ((x8096
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8096))))
                                                      g8094)
                                                    '()))))))
                                    g8088)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8097
                                            (letrec ((x8099 (number? x)))
                                              (assert x8099)))
                                           (g8098
                                            (letrec ((x-cnd8100 (< x 0)))
                                              (if x-cnd8100 (- 0 x) x))))
                                    g8098)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8101
                                            (letrec ((x8104 (char? c1)))
                                              (assert x8104)))
                                           (g8102
                                            (letrec ((x8105 (char? c2)))
                                              (assert x8105)))
                                           (g8103
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8106
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8106))))
                                    g8103)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8107
                                            (letrec ((x8108
                                                      (letrec ((x8109
                                                                (letrec ((x8110
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8110))))
                                                        (cdr x8109))))
                                              (car x8108))))
                                    g8107)))
                               (newline
                                (lambda () (letrec ((g8111 #f)) g8111)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8112
                                            (letrec ((x8114
                                                      (letrec ((x8115 (* m n)))
                                                        (abs x8115)))
                                                     (x8113 (gcd m n)))
                                              (/ x8114 x8113))))
                                    g8112)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8116
                                            (letrec ((x8118 (number? x)))
                                              (assert x8118)))
                                           (g8117
                                            (letrec ((x8119 (<= x y)))
                                              (not x8119))))
                                    g8117)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8120
                                            (letrec ((x8124 (list? l)))
                                              (assert x8124)))
                                           (g8121
                                            (letrec ((x8125 (number? index)))
                                              (assert x8125)))
                                           (g8122
                                            (letrec ((x8126
                                                      (letrec ((x8127
                                                                (length l)))
                                                        (< index x8127))))
                                              (assert x8126)))
                                           (g8123
                                            (letrec ((x-cnd8128 (= index 0)))
                                              (if x-cnd8128
                                                (car l)
                                                (letrec ((x8130 (cdr l))
                                                         (x8129 (- index 1)))
                                                  (list-ref x8130 x8129))))))
                                    g8123)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8131
                                            (letrec ((x-cnd8132 (= b 0)))
                                              (if x-cnd8132
                                                a
                                                (letrec ((x8133 (modulo a b)))
                                                  (gcd b x8133))))))
                                    g8131))))
                        (letrec ((g8134
                                  (letrec ((g8135
                                            (letrec ((recursive-div2
                                                      (lambda (l)
                                                        (letrec ((g8136
                                                                  (letrec ((x-cnd8137
                                                                            (empty?
                                                                             l)))
                                                                    (if x-cnd8137
                                                                      empty
                                                                      (letrec ((x8141
                                                                                (car
                                                                                 l))
                                                                               (x8138
                                                                                (letrec ((x8139
                                                                                          (letrec ((x8140
                                                                                                    (cdr
                                                                                                     l)))
                                                                                            (cdr
                                                                                             x8140))))
                                                                                  (recursive-div2
                                                                                   x8139))))
                                                                        (cons
                                                                         x8141
                                                                         x8138))))))
                                                          g8136)))
                                                     (even-list/c
                                                      (lambda (g7229
                                                               g7230
                                                               g7231)
                                                        (letrec ((g8142
                                                                  (letrec ((x-cnd8143
                                                                            ((lambda ()
                                                                               (or/c
                                                                                null?
                                                                                (cons/c
                                                                                 any/c
                                                                                 (cons/c
                                                                                  any/c
                                                                                  even-list/c))))
                                                                             g7231)))
                                                                    (if x-cnd8143
                                                                      g7231
                                                                      (blame
                                                                       g7229
                                                                       '(lambda ()
                                                                          (or/c
                                                                           null?
                                                                           (cons/c
                                                                            any/c
                                                                            (cons/c
                                                                             any/c
                                                                             even-list/c)))))))))
                                                          g8142))))
                                              (letrec ((g8144
                                                        (letrec ((g8145
                                                                  (letrec ((g8146
                                                                            (letrec ((x8148
                                                                                      ((lambda (j7233
                                                                                                k7234
                                                                                                f7235)
                                                                                         (lambda (g7232)
                                                                                           ((listof
                                                                                             any/c)
                                                                                            j7233
                                                                                            k7234
                                                                                            (f7235
                                                                                             ((even-list/c)
                                                                                              j7233
                                                                                              k7234
                                                                                              g7232)))))
                                                                                       'module
                                                                                       'importer
                                                                                       recursive-div2))
                                                                                     (x8147
                                                                                      (input)))
                                                                              (x8148
                                                                               x8147))))
                                                                    g8146)))
                                                          g8145)))
                                                g8144))))
                                    g8135)))
                          g8134))))
              g7247)))
    g7246))
