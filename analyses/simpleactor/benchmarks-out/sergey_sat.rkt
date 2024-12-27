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
                      (letrec ((real/c
                                (lambda (g7161 g7162 g7163)
                                  (letrec ((g7242
                                            (letrec ((x-cnd7243 (real? g7163)))
                                              (if x-cnd7243
                                                g7163
                                                (blame g7161 'real?)))))
                                    g7242)))
                               (boolean?/c
                                (lambda (g7164 g7165 g7166)
                                  (letrec ((g7244
                                            (letrec ((x-cnd7245
                                                      (boolean? g7166)))
                                              (if x-cnd7245
                                                g7166
                                                (blame g7164 'boolean?)))))
                                    g7244)))
                               (number?/c
                                (lambda (g7167 g7168 g7169)
                                  (letrec ((g7246
                                            (letrec ((x-cnd7247
                                                      (number? g7169)))
                                              (if x-cnd7247
                                                g7169
                                                (blame g7167 'number?)))))
                                    g7246)))
                               (any/c
                                (lambda (g7170 g7171 g7172)
                                  (letrec ((g7248
                                            (letrec ((x-cnd7249
                                                      ((lambda (v) #t) g7172)))
                                              (if x-cnd7249
                                                g7172
                                                (blame
                                                 g7170
                                                 '(lambda (v) #t))))))
                                    g7248)))
                               (any?/c
                                (lambda (g7173 g7174 g7175)
                                  (letrec ((g7250
                                            (letrec ((x-cnd7251
                                                      ((lambda (v) #t) g7175)))
                                              (if x-cnd7251
                                                g7175
                                                (blame
                                                 g7173
                                                 '(lambda (v) #t))))))
                                    g7250)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7176 g7177 g7178)
                                  (letrec ((g7252
                                            (letrec ((x-cnd7253 (pair? g7178)))
                                              (if x-cnd7253
                                                g7178
                                                (blame g7176 'pair?)))))
                                    g7252)))
                               (pair?/c
                                (lambda (g7179 g7180 g7181)
                                  (letrec ((g7254
                                            (letrec ((x-cnd7255 (pair? g7181)))
                                              (if x-cnd7255
                                                g7181
                                                (blame g7179 'pair?)))))
                                    g7254)))
                               (integer?
                                (lambda (g7182 g7183 g7184)
                                  (letrec ((g7256
                                            (letrec ((x-cnd7257
                                                      (integer? g7184)))
                                              (if x-cnd7257
                                                g7184
                                                (blame g7182 'integer?)))))
                                    g7256)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7258
                                            (lambda (k j v)
                                              (letrec ((g7259
                                                        (letrec ((x-cnd7260
                                                                  (c1 k j v)))
                                                          (if x-cnd7260
                                                            (c2 k j v)
                                                            #f))))
                                                g7259))))
                                    g7258)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7261
                                            (lambda (k j v)
                                              (letrec ((g7262
                                                        (letrec ((x-cnd7263
                                                                  (null? v)))
                                                          (if x-cnd7263
                                                            '()
                                                            (letrec ((x7267
                                                                      (letrec ((x7268
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7268)))
                                                                     (x7264
                                                                      (letrec ((x7266
                                                                                (list-of
                                                                                 contract))
                                                                               (x7265
                                                                                (cdr
                                                                                 v)))
                                                                        (x7266
                                                                         k
                                                                         j
                                                                         x7265))))
                                                              (cons
                                                               x7267
                                                               x7264))))))
                                                g7262))))
                                    g7261)))
                               (any? (lambda (v) (letrec ((g7269 #t)) g7269)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7270
                                            (letrec ((x7271 (= v 0)))
                                              (not x7271))))
                                    g7270)))
                               (nonzero?/c
                                (lambda (g7185 g7186 g7187)
                                  (letrec ((g7272
                                            (letrec ((x-cnd7273
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7187)))
                                              (if x-cnd7273
                                                g7187
                                                (blame
                                                 g7185
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7272)))
                               (meta (lambda (v) (letrec ((g7274 v)) g7274)))
                               (orig-+ +)
                               (+
                                ((lambda (j7190 k7191 f7192)
                                   (lambda (g7188 g7189)
                                     (number?/c
                                      j7190
                                      k7191
                                      (f7192
                                       (number?/c j7190 k7191 g7188)
                                       (number?/c j7190 k7191 g7189)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-+ a b))))
                               (orig-- -)
                               (-
                                ((lambda (j7195 k7196 f7197)
                                   (lambda (g7193 g7194)
                                     (number?/c
                                      j7195
                                      k7196
                                      (f7197
                                       (number?/c j7195 k7196 g7193)
                                       (number?/c j7195 k7196 g7194)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-- a b))))
                               (orig-* *)
                               (*
                                ((lambda (j7200 k7201 f7202)
                                   (lambda (g7198 g7199)
                                     (number?/c
                                      j7200
                                      k7201
                                      (f7202
                                       (number?/c j7200 k7201 g7198)
                                       (number?/c j7200 k7201 g7199)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-* a b))))
                               (orig-/ /)
                               (/
                                ((lambda (j7205 k7206 f7207)
                                   (lambda (g7203 g7204)
                                     (number?/c
                                      j7205
                                      k7206
                                      (f7207
                                       (number?/c j7205 k7206 g7203)
                                       (number?/c j7205 k7206 g7204)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-/ a b))))
                               (orig-car car)
                               (car
                                ((lambda (j7209 k7210 f7211)
                                   (lambda (g7208)
                                     (any/c
                                      j7209
                                      k7210
                                      (f7211 (pair?/c j7209 k7210 g7208)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-car p))))
                               (orig-cdr cdr)
                               (cdr
                                ((lambda (j7213 k7214 f7215)
                                   (lambda (g7212)
                                     (any/c
                                      j7213
                                      k7214
                                      (f7215 (pair?/c j7213 k7214 g7212)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-cdr p))))
                               (orig-cons cons)
                               (cons
                                ((lambda (j7218 k7219 f7220)
                                   (lambda (g7216 g7217)
                                     (pair?/c
                                      j7218
                                      k7219
                                      (f7220
                                       (any/c j7218 k7219 g7216)
                                       (any/c j7218 k7219 g7217)))))
                                 'server
                                 'client
                                 (lambda (a b) (cons a b))))
                               (orig-vector-ref vector-ref)
                               (vector-ref
                                ((lambda (j7222 k7223 f7224)
                                   (lambda (g7221)
                                     (integer?/c
                                      j7222
                                      k7223
                                      (f7224 (vector?/c j7222 k7223 g7221)))))
                                 'server
                                 'client
                                 (lambda (v i) (orig-vector-ref v i))))
                               (orig-vector-set vector-set!)
                               (vector-set!
                                ((lambda (j7227 k7228 f7229)
                                   (lambda (g7225 g7226)
                                     (any/c
                                      j7227
                                      k7228
                                      (f7229
                                       (vector?/c j7227 k7228 g7225)
                                       (integer?/c j7227 k7228 g7226)))))
                                 'server
                                 'client
                                 (lambda (vec i v)
                                   (orig-vector-set! vec i v))))
                               (assert
                                (lambda (cnd) (letrec ((g7275 #t)) g7275)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7276
                                            (letrec ((x7277
                                                      (letrec ((x7278 (cdr x)))
                                                        (cdr x7278))))
                                              (cdr x7277))))
                                    g7276)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7279
                                            (letrec ((x7282 (procedure? f)))
                                              (assert x7282)))
                                           (g7280
                                            (letrec ((x7283 (list? l)))
                                              (assert x7283)))
                                           (g7281
                                            (letrec ((x-cnd7284 (null? l)))
                                              (if x-cnd7284
                                                '()
                                                (letrec ((x7287
                                                          (letrec ((x7288
                                                                    (car l)))
                                                            (f x7288)))
                                                         (x7285
                                                          (letrec ((x7286
                                                                    (cdr l)))
                                                            (map f x7286))))
                                                  (cons x7287 x7285))))))
                                    g7281)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7289
                                            (letrec ((x7290 (car x)))
                                              (cdr x7290))))
                                    g7289)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7291
                                            (letrec ((x7292
                                                      (letrec ((x7293
                                                                (letrec ((x7294
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7294))))
                                                        (cdr x7293))))
                                              (car x7292))))
                                    g7291)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7295
                                            (letrec ((x7296
                                                      (letrec ((x7297
                                                                (letrec ((x7298
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7298))))
                                                        (car x7297))))
                                              (cdr x7296))))
                                    g7295)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7299
                                            (letrec ((x7302
                                                      (string? filename)))
                                              (assert x7302)))
                                           (g7300
                                            (letrec ((x7303 (procedure? proc)))
                                              (assert x7303)))
                                           (g7301
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7304
                                                        (close-output-port
                                                         output-port))
                                                       (g7305 res))
                                                g7305))))
                                    g7301)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7306
                                            (letrec ((x7307
                                                      (letrec ((x7308 (cdr x)))
                                                        (cdr x7308))))
                                              (car x7307))))
                                    g7306)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7309
                                            (letrec ((x7310
                                                      (letrec ((x7311
                                                                (letrec ((x7312
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7312))))
                                                        (car x7311))))
                                              (cdr x7310))))
                                    g7309)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7313
                                            (letrec ((x7315 (list? l)))
                                              (assert x7315)))
                                           (g7314
                                            (letrec ((x-cnd7316 (null? l)))
                                              (if x-cnd7316
                                                #f
                                                (letrec ((x-cnd7317
                                                          (letrec ((x7318
                                                                    (caar l)))
                                                            (eq? x7318 k))))
                                                  (if x-cnd7317
                                                    (car l)
                                                    (letrec ((x7319 (cdr l)))
                                                      (assq k x7319))))))))
                                    g7314)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7320
                                            (letrec ((x7321 (modulo x 2)))
                                              (= 0 x7321))))
                                    g7320)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7322
                                            (letrec ((x7324 (list? l)))
                                              (assert x7324)))
                                           (g7323
                                            (letrec ((x-cnd7325 (null? l)))
                                              (if x-cnd7325
                                                ""
                                                (letrec ((x7328
                                                          (letrec ((x7329
                                                                    (car l)))
                                                            (char->string
                                                             x7329)))
                                                         (x7326
                                                          (letrec ((x7327
                                                                    (cdr l)))
                                                            (list->string
                                                             x7327))))
                                                  (string-append
                                                   x7328
                                                   x7326))))))
                                    g7323)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7330
                                            (letrec ((x7333 (char? c1)))
                                              (assert x7333)))
                                           (g7331
                                            (letrec ((x7334 (char? c2)))
                                              (assert x7334)))
                                           (g7332
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7335
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7335))))
                                    g7332)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7336
                                            (letrec ((x7337
                                                      (letrec ((x7338
                                                                (letrec ((x7339
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7339))))
                                                        (cdr x7338))))
                                              (cdr x7337))))
                                    g7336)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7340
                                            (letrec ((x7343 (list? l)))
                                              (assert x7343)))
                                           (g7341
                                            (letrec ((x7344 (numer?)))
                                              (assert x7344)))
                                           (g7342
                                            (letrec ((x-cnd7345 (zero? k)))
                                              (if x-cnd7345
                                                x
                                                (letrec ((x7347 (cdr x))
                                                         (x7346 (- k 1)))
                                                  (list-tail x7347 x7346))))))
                                    g7342)))
                               (halt (lambda () (letrec ((g7348 '())) g7348)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7349
                                            (letrec ((x-cnd7350
                                                      (letrec ((x7351 #\a))
                                                        (char-ci>=? c x7351))))
                                              (if x-cnd7350
                                                (letrec ((x7352 #\z))
                                                  (char-ci<=? c x7352))
                                                #f))))
                                    g7349)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7353
                                            (letrec ((x7355 (number? x)))
                                              (assert x7355)))
                                           (g7354
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7356
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7357
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7357)))))
                                                g7356))))
                                    g7354)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7358
                                            (letrec ((val7146
                                                      (letrec ((x7359
                                                                (char->integer
                                                                 c)))
                                                        (= x7359 9))))
                                              (letrec ((g7360
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7361
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7361
                                                                       10))))
                                                            (letrec ((g7362
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7363
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7363
                                                                           32)))))
                                                              g7362)))))
                                                g7360))))
                                    g7358)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7364
                                            (letrec ((x7365
                                                      (letrec ((x7366 (car x)))
                                                        (cdr x7366))))
                                              (cdr x7365))))
                                    g7364)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7367
                                            (letrec ((x7369 (number? x)))
                                              (assert x7369)))
                                           (g7368 (> x 0)))
                                    g7368)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7370 #f)) g7370)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7371
                                            (letrec ((x7372 (cdr x)))
                                              (cdr x7372))))
                                    g7371)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7373
                                            (letrec ((x7375 (number? x)))
                                              (assert x7375)))
                                           (g7374
                                            (letrec ((x-cnd7376 (< x 0)))
                                              (if x-cnd7376
                                                (ceiling x)
                                                (floor x)))))
                                    g7374)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7377
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7378
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7380
                                                                              (null?
                                                                               a))
                                                                             (x7379
                                                                              (null?
                                                                               b)))
                                                                      (and x7380
                                                                           x7379))))
                                                            (letrec ((g7381
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7384
                                                                                            (string?
                                                                                             a))
                                                                                           (x7383
                                                                                            (string?
                                                                                             b))
                                                                                           (x7382
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7384
                                                                                         x7383
                                                                                         x7382))))
                                                                          (letrec ((g7385
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7393
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7392
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7389
                                                                                                          (letrec ((x7391
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7390
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7391
                                                                                                             x7390)))
                                                                                                         (x7386
                                                                                                          (letrec ((x7388
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7387
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7388
                                                                                                             x7387))))
                                                                                                  (and x7393
                                                                                                       x7392
                                                                                                       x7389
                                                                                                       x7386))))
                                                                                        (letrec ((g7394
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7413
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7412
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7395
                                                                                                              (letrec ((x7409
                                                                                                                        (letrec ((x7410
                                                                                                                                  (letrec ((x7411
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7411))))
                                                                                                                          (x7410)))
                                                                                                                       (x7396
                                                                                                                        (letrec ((x7407
                                                                                                                                  (letrec ((x7408
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7408
                                                                                                                                     n)))
                                                                                                                                 (x7397
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7398
                                                                                                                                                        (letrec ((x7405
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7399
                                                                                                                                                                  (letrec ((x7402
                                                                                                                                                                            (letrec ((x7404
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7403
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7404
                                                                                                                                                                               x7403)))
                                                                                                                                                                           (x7400
                                                                                                                                                                            (letrec ((x7401
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7401))))
                                                                                                                                                                    (and x7402
                                                                                                                                                                         x7400))))
                                                                                                                                                          (or x7405
                                                                                                                                                              x7399))))
                                                                                                                                                g7398))))
                                                                                                                                    (letrec ((g7406
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7406))))
                                                                                                                          (and x7407
                                                                                                                               x7397))))
                                                                                                                (let x7409 x7396))))
                                                                                                      (and x7413
                                                                                                           x7412
                                                                                                           x7395)))))
                                                                                          g7394)))))
                                                                            g7385)))))
                                                              g7381)))))
                                                g7378))))
                                    g7377)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7414
                                            (letrec ((x7415
                                                      (letrec ((x7416
                                                                (letrec ((x7417
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7417))))
                                                        (car x7416))))
                                              (cdr x7415))))
                                    g7414)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7418
                                            (letrec ((x7419
                                                      (letrec ((x7420
                                                                (letrec ((x7421
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7421))))
                                                        (car x7420))))
                                              (car x7419))))
                                    g7418)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7422 (eq? x y))) g7422)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7423
                                            (letrec ((x7425 (number? x)))
                                              (assert x7425)))
                                           (g7424
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7426
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7427
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7427)))))
                                                g7426))))
                                    g7424)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7428
                                            (letrec ((x7431
                                                      (string? filename)))
                                              (assert x7431)))
                                           (g7429
                                            (letrec ((x7432 (procedure? proc)))
                                              (assert x7432)))
                                           (g7430
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7433
                                                        (close-input-port
                                                         input-port))
                                                       (g7434 res))
                                                g7434))))
                                    g7430)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7435 (cons x '()))) g7435)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7436
                                            (letrec ((x7439 (char? c1)))
                                              (assert x7439)))
                                           (g7437
                                            (letrec ((x7440 (char? c2)))
                                              (assert x7440)))
                                           (g7438
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7441
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7441))))
                                    g7438)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7442
                                            (letrec ((x7443
                                                      (letrec ((x7444 (car x)))
                                                        (car x7444))))
                                              (cdr x7443))))
                                    g7442)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7445
                                            (letrec ((x7446
                                                      (letrec ((x7447
                                                                (letrec ((x7448
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7448))))
                                                        (car x7447))))
                                              (cdr x7446))))
                                    g7445)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7449
                                            (letrec ((x7450
                                                      (letrec ((x7451 (car x)))
                                                        (cdr x7451))))
                                              (car x7450))))
                                    g7449)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7452
                                            (letrec ((x7453
                                                      (letrec ((x7454 (cdr x)))
                                                        (car x7454))))
                                              (car x7453))))
                                    g7452)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7455
                                            (letrec ((x7458 (char? c1)))
                                              (assert x7458)))
                                           (g7456
                                            (letrec ((x7459 (char? c2)))
                                              (assert x7459)))
                                           (g7457
                                            (letrec ((x7460
                                                      (char-ci<=? c1 c2)))
                                              (not x7460))))
                                    g7457)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7461
                                            (letrec ((x7462
                                                      (letrec ((x7463
                                                                (letrec ((x7464
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7464))))
                                                        (car x7463))))
                                              (car x7462))))
                                    g7461)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7465
                                            (letrec ((x7467 (number? x)))
                                              (assert x7467)))
                                           (g7466 (< x 0)))
                                    g7466)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7468 (memq e l))) g7468)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7469
                                            (letrec ((x7470
                                                      (letrec ((x7471 (car x)))
                                                        (car x7471))))
                                              (car x7470))))
                                    g7469)))
                               (debug
                                (lambda (e) (letrec ((g7472 '())) g7472)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7473
                                            (letrec ((x7475 (list? l)))
                                              (assert x7475)))
                                           (g7474
                                            (letrec ((x-cnd7476 (null? l)))
                                              (if x-cnd7476
                                                '()
                                                (letrec ((x7479
                                                          (letrec ((x7480
                                                                    (cdr l)))
                                                            (reverse x7480)))
                                                         (x7477
                                                          (letrec ((x7478
                                                                    (car l)))
                                                            (list x7478))))
                                                  (append x7479 x7477))))))
                                    g7474)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7481
                                            (letrec ((x7482
                                                      (letrec ((x7483
                                                                (letrec ((x7484
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7484))))
                                                        (car x7483))))
                                              (car x7482))))
                                    g7481)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7485
                                            (letrec ((x7486
                                                      (letrec ((x7487
                                                                (letrec ((x7488
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7488))))
                                                        (cdr x7487))))
                                              (cdr x7486))))
                                    g7485)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7489
                                            (letrec ((x7491 (number? x)))
                                              (assert x7491)))
                                           (g7490
                                            (letrec ((x7492 (modulo x 2)))
                                              (= 1 x7492))))
                                    g7490)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7493
                                            (letrec ((x7494
                                                      (letrec ((x7495
                                                                (letrec ((x7496
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7496))))
                                                        (car x7495))))
                                              (car x7494))))
                                    g7493)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7497
                                            (letrec ((x7500 (procedure? proc)))
                                              (assert x7500)))
                                           (g7498
                                            (letrec ((x7501 (list? args)))
                                              (assert x7501)))
                                           (g7499
                                            (if cnd
                                              (letrec ((g7502 (proc))) g7502)
                                              (if cnd
                                                (letrec ((g7503
                                                          (letrec ((x7504
                                                                    (car
                                                                     args)))
                                                            (proc x7504))))
                                                  g7503)
                                                (if cnd
                                                  (letrec ((g7505
                                                            (letrec ((x7507
                                                                      (car
                                                                       args))
                                                                     (x7506
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7507
                                                               x7506))))
                                                    g7505)
                                                  (if cnd
                                                    (letrec ((g7508
                                                              (letrec ((x7511
                                                                        (car
                                                                         args))
                                                                       (x7510
                                                                        (cadr
                                                                         args))
                                                                       (x7509
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7511
                                                                 x7510
                                                                 x7509))))
                                                      g7508)
                                                    (if cnd
                                                      (letrec ((g7512
                                                                (letrec ((x7516
                                                                          (car
                                                                           args))
                                                                         (x7515
                                                                          (cadr
                                                                           args))
                                                                         (x7514
                                                                          (caddr
                                                                           args))
                                                                         (x7513
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7516
                                                                   x7515
                                                                   x7514
                                                                   x7513))))
                                                        g7512)
                                                      (if cnd
                                                        (letrec ((g7517
                                                                  (letrec ((x7523
                                                                            (car
                                                                             args))
                                                                           (x7522
                                                                            (cadr
                                                                             args))
                                                                           (x7521
                                                                            (caddr
                                                                             args))
                                                                           (x7520
                                                                            (cadddr
                                                                             args))
                                                                           (x7518
                                                                            (letrec ((x7519
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7519))))
                                                                    (proc
                                                                     x7523
                                                                     x7522
                                                                     x7521
                                                                     x7520
                                                                     x7518))))
                                                          g7517)
                                                        (if cnd
                                                          (letrec ((g7524
                                                                    (letrec ((x7532
                                                                              (car
                                                                               args))
                                                                             (x7531
                                                                              (cadr
                                                                               args))
                                                                             (x7530
                                                                              (caddr
                                                                               args))
                                                                             (x7529
                                                                              (cadddr
                                                                               args))
                                                                             (x7527
                                                                              (letrec ((x7528
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7528)))
                                                                             (x7525
                                                                              (letrec ((x7526
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7526))))
                                                                      (proc
                                                                       x7532
                                                                       x7531
                                                                       x7530
                                                                       x7529
                                                                       x7527
                                                                       x7525))))
                                                            g7524)
                                                          (if cnd
                                                            (letrec ((g7533
                                                                      (letrec ((x7543
                                                                                (car
                                                                                 args))
                                                                               (x7542
                                                                                (cadr
                                                                                 args))
                                                                               (x7541
                                                                                (caddr
                                                                                 args))
                                                                               (x7540
                                                                                (cadddr
                                                                                 args))
                                                                               (x7538
                                                                                (letrec ((x7539
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7539)))
                                                                               (x7536
                                                                                (letrec ((x7537
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7537)))
                                                                               (x7534
                                                                                (letrec ((x7535
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7535))))
                                                                        (proc
                                                                         x7543
                                                                         x7542
                                                                         x7541
                                                                         x7540
                                                                         x7538
                                                                         x7536
                                                                         x7534))))
                                                              g7533)
                                                            (letrec ((g7544
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7544)))))))))))
                                    g7499)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7545
                                            (letrec ((x7547 (list? l)))
                                              (assert x7547)))
                                           (g7546
                                            (letrec ((x-cnd7548 (null? l)))
                                              (if x-cnd7548
                                                #f
                                                (letrec ((x-cnd7549
                                                          (letrec ((x7550
                                                                    (car l)))
                                                            (equal? x7550 e))))
                                                  (if x-cnd7549
                                                    l
                                                    (letrec ((x7551 (cdr l)))
                                                      (member e x7551))))))))
                                    g7546)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7552
                                            (letrec ((x7553
                                                      (letrec ((x7554
                                                                (letrec ((x7555
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7555))))
                                                        (cdr x7554))))
                                              (cdr x7553))))
                                    g7552)))
                               (cadddr
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
                                              (car x7557))))
                                    g7556)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7560 (random 42))) g7560)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7561
                                            (letrec ((x7563 (number? x)))
                                              (assert x7563)))
                                           (g7562 (= x 0)))
                                    g7562)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7564
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7565
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7565))))
                                    g7564)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7566
                                            (letrec ((x7567 (cdr x)))
                                              (car x7567))))
                                    g7566)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7568
                                            (letrec ((val7156
                                                      (letrec ((x7571
                                                                (pair? l))
                                                               (x7569
                                                                (letrec ((x7570
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7570))))
                                                        (and x7571 x7569))))
                                              (letrec ((g7572
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7572))))
                                    g7568)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7573
                                            (letrec ((x7574
                                                      (letrec ((x7575
                                                                (letrec ((x7576
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7576))))
                                                        (cdr x7575))))
                                              (cdr x7574))))
                                    g7573)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7577
                                            (letrec ((x-cnd7578
                                                      (letrec ((x7579 #\0))
                                                        (char<=? x7579 c))))
                                              (if x-cnd7578
                                                (letrec ((x7580 #\9))
                                                  (char<=? c x7580))
                                                #f))))
                                    g7577)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7581
                                            (letrec ((x7583 (list? l)))
                                              (assert x7583)))
                                           (g7582
                                            (letrec ((x-cnd7584 (null? l)))
                                              (if x-cnd7584
                                                #f
                                                (letrec ((x-cnd7585
                                                          (letrec ((x7586
                                                                    (caar l)))
                                                            (eqv? x7586 k))))
                                                  (if x-cnd7585
                                                    (car l)
                                                    (letrec ((x7587 (cdr l)))
                                                      (assq k x7587))))))))
                                    g7582)))
                               (not
                                (lambda (x)
                                  (letrec ((g7588 (if x #f #t))) g7588)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7589 (append l1 l2))) g7589)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7590
                                            (letrec ((x7592 (list? l)))
                                              (assert x7592)))
                                           (g7591
                                            (letrec ((x-cnd7593 (null? l)))
                                              (if x-cnd7593
                                                #f
                                                (letrec ((x-cnd7594
                                                          (letrec ((x7595
                                                                    (car l)))
                                                            (eq? x7595 e))))
                                                  (if x-cnd7594
                                                    l
                                                    (letrec ((x7596 (cdr l)))
                                                      (memq e x7596))))))))
                                    g7591)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7597
                                            (letrec ((x7598
                                                      (letrec ((x7599
                                                                (letrec ((x7600
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7600))))
                                                        (cdr x7599))))
                                              (car x7598))))
                                    g7597)))
                               (length
                                (lambda (l)
                                  (letrec ((g7601
                                            (letrec ((x7603 (list? l)))
                                              (assert x7603)))
                                           (g7602
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7604
                                                                  (letrec ((x-cnd7605
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7605
                                                                      0
                                                                      (letrec ((x7606
                                                                                (letrec ((x7607
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7607))))
                                                                        (+
                                                                         1
                                                                         x7606))))))
                                                          g7604))))
                                              (letrec ((g7608 (rec l)))
                                                g7608))))
                                    g7602)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7609
                                            (letrec ((x7612 (char? c1)))
                                              (assert x7612)))
                                           (g7610
                                            (letrec ((x7613 (char? c2)))
                                              (assert x7613)))
                                           (g7611
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7614
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7614))))
                                    g7611)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7615
                                            (letrec ((x7616 (string<=? s1 s2)))
                                              (not x7616))))
                                    g7615)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7617
                                            (letrec ((x7618
                                                      (letrec ((x7619 (cdr x)))
                                                        (car x7619))))
                                              (cdr x7618))))
                                    g7617)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7620
                                            (letrec ((x7622 (list? l)))
                                              (assert x7622)))
                                           (g7621
                                            (letrec ((x-cnd7623 (null? l)))
                                              (if x-cnd7623
                                                #f
                                                (letrec ((x-cnd7624
                                                          (letrec ((x7625
                                                                    (caar l)))
                                                            (equal? x7625 k))))
                                                  (if x-cnd7624
                                                    (car l)
                                                    (letrec ((x7626 (cdr l)))
                                                      (assoc k x7626))))))))
                                    g7621)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7627
                                            (letrec ((x7628 (car x)))
                                              (car x7628))))
                                    g7627)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7629
                                            (letrec ((x7632 (char? c1)))
                                              (assert x7632)))
                                           (g7630
                                            (letrec ((x7633 (char? c2)))
                                              (assert x7633)))
                                           (g7631
                                            (letrec ((x7634 (char<=? c1 c2)))
                                              (not x7634))))
                                    g7631)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7635
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7636
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7636))))
                                    g7635)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7637
                                            (letrec ((x7640 (procedure? f)))
                                              (assert x7640)))
                                           (g7638
                                            (letrec ((x7641 (list? l)))
                                              (assert x7641)))
                                           (g7639
                                            (letrec ((x-cnd7642 (null? l)))
                                              (if x-cnd7642
                                                #t
                                                (letrec ((x-cnd7643 (pair? l)))
                                                  (if x-cnd7643
                                                    (letrec ((g7644
                                                              (letrec ((x7646
                                                                        (car
                                                                         l)))
                                                                (f x7646)))
                                                             (g7645
                                                              (letrec ((x7647
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7647))))
                                                      g7645)
                                                    '()))))))
                                    g7639)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7648
                                            (letrec ((x7650 (number? x)))
                                              (assert x7650)))
                                           (g7649
                                            (letrec ((x-cnd7651 (< x 0)))
                                              (if x-cnd7651 (- 0 x) x))))
                                    g7649)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7652
                                            (letrec ((x7655 (char? c1)))
                                              (assert x7655)))
                                           (g7653
                                            (letrec ((x7656 (char? c2)))
                                              (assert x7656)))
                                           (g7654
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7657
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7657))))
                                    g7654)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7658
                                            (letrec ((x7659
                                                      (letrec ((x7660
                                                                (letrec ((x7661
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7661))))
                                                        (cdr x7660))))
                                              (car x7659))))
                                    g7658)))
                               (newline
                                (lambda () (letrec ((g7662 #f)) g7662)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7663
                                            (letrec ((x7665
                                                      (letrec ((x7666 (* m n)))
                                                        (abs x7666)))
                                                     (x7664 (gcd m n)))
                                              (/ x7665 x7664))))
                                    g7663)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7667
                                            (letrec ((x7669 (number? x)))
                                              (assert x7669)))
                                           (g7668
                                            (letrec ((x7670 (<= x y)))
                                              (not x7670))))
                                    g7668)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7671
                                            (letrec ((x7675 (list? l)))
                                              (assert x7675)))
                                           (g7672
                                            (letrec ((x7676 (number? index)))
                                              (assert x7676)))
                                           (g7673
                                            (letrec ((x7677
                                                      (letrec ((x7678
                                                                (length l)))
                                                        (< index x7678))))
                                              (assert x7677)))
                                           (g7674
                                            (letrec ((x-cnd7679 (= index 0)))
                                              (if x-cnd7679
                                                (car l)
                                                (letrec ((x7681 (cdr l))
                                                         (x7680 (- index 1)))
                                                  (list-ref x7681 x7680))))))
                                    g7674)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7682
                                            (letrec ((x-cnd7683 (= b 0)))
                                              (if x-cnd7683
                                                a
                                                (letrec ((x7684 (modulo a b)))
                                                  (gcd b x7684))))))
                                    g7682)))
                               (real/c
                                (lambda (g7161 g7162 g7163)
                                  (letrec ((g7685
                                            (letrec ((x-cnd7686 (real? g7163)))
                                              (if x-cnd7686
                                                g7163
                                                (blame g7161 'real?)))))
                                    g7685)))
                               (boolean?/c
                                (lambda (g7164 g7165 g7166)
                                  (letrec ((g7687
                                            (letrec ((x-cnd7688
                                                      (boolean? g7166)))
                                              (if x-cnd7688
                                                g7166
                                                (blame g7164 'boolean?)))))
                                    g7687)))
                               (number?/c
                                (lambda (g7167 g7168 g7169)
                                  (letrec ((g7689
                                            (letrec ((x-cnd7690
                                                      (number? g7169)))
                                              (if x-cnd7690
                                                g7169
                                                (blame g7167 'number?)))))
                                    g7689)))
                               (any/c
                                (lambda (g7170 g7171 g7172)
                                  (letrec ((g7691
                                            (letrec ((x-cnd7692
                                                      ((lambda (v) #t) g7172)))
                                              (if x-cnd7692
                                                g7172
                                                (blame
                                                 g7170
                                                 '(lambda (v) #t))))))
                                    g7691)))
                               (any?/c
                                (lambda (g7173 g7174 g7175)
                                  (letrec ((g7693
                                            (letrec ((x-cnd7694
                                                      ((lambda (v) #t) g7175)))
                                              (if x-cnd7694
                                                g7175
                                                (blame
                                                 g7173
                                                 '(lambda (v) #t))))))
                                    g7693)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7176 g7177 g7178)
                                  (letrec ((g7695
                                            (letrec ((x-cnd7696 (pair? g7178)))
                                              (if x-cnd7696
                                                g7178
                                                (blame g7176 'pair?)))))
                                    g7695)))
                               (pair?/c
                                (lambda (g7179 g7180 g7181)
                                  (letrec ((g7697
                                            (letrec ((x-cnd7698 (pair? g7181)))
                                              (if x-cnd7698
                                                g7181
                                                (blame g7179 'pair?)))))
                                    g7697)))
                               (integer?
                                (lambda (g7182 g7183 g7184)
                                  (letrec ((g7699
                                            (letrec ((x-cnd7700
                                                      (integer? g7184)))
                                              (if x-cnd7700
                                                g7184
                                                (blame g7182 'integer?)))))
                                    g7699)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7701
                                            (lambda (k j v)
                                              (letrec ((g7702
                                                        (letrec ((x-cnd7703
                                                                  (c1 k j v)))
                                                          (if x-cnd7703
                                                            (c2 k j v)
                                                            #f))))
                                                g7702))))
                                    g7701)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7704
                                            (lambda (k j v)
                                              (letrec ((g7705
                                                        (letrec ((x-cnd7706
                                                                  (null? v)))
                                                          (if x-cnd7706
                                                            '()
                                                            (letrec ((x7710
                                                                      (letrec ((x7711
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7711)))
                                                                     (x7707
                                                                      (letrec ((x7709
                                                                                (list-of
                                                                                 contract))
                                                                               (x7708
                                                                                (cdr
                                                                                 v)))
                                                                        (x7709
                                                                         k
                                                                         j
                                                                         x7708))))
                                                              (cons
                                                               x7710
                                                               x7707))))))
                                                g7705))))
                                    g7704)))
                               (any? (lambda (v) (letrec ((g7712 #t)) g7712)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7713
                                            (letrec ((x7714 (= v 0)))
                                              (not x7714))))
                                    g7713)))
                               (nonzero?/c
                                (lambda (g7185 g7186 g7187)
                                  (letrec ((g7715
                                            (letrec ((x-cnd7716
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7187)))
                                              (if x-cnd7716
                                                g7187
                                                (blame
                                                 g7185
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7715)))
                               (meta (lambda (v) (letrec ((g7717 v)) g7717)))
                               (orig-+ +)
                               (+
                                ((lambda (j7190 k7191 f7192)
                                   (lambda (g7188 g7189)
                                     (number?/c
                                      j7190
                                      k7191
                                      (f7192
                                       (number?/c j7190 k7191 g7188)
                                       (number?/c j7190 k7191 g7189)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-+ a b))))
                               (orig-- -)
                               (-
                                ((lambda (j7195 k7196 f7197)
                                   (lambda (g7193 g7194)
                                     (number?/c
                                      j7195
                                      k7196
                                      (f7197
                                       (number?/c j7195 k7196 g7193)
                                       (number?/c j7195 k7196 g7194)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-- a b))))
                               (orig-* *)
                               (*
                                ((lambda (j7200 k7201 f7202)
                                   (lambda (g7198 g7199)
                                     (number?/c
                                      j7200
                                      k7201
                                      (f7202
                                       (number?/c j7200 k7201 g7198)
                                       (number?/c j7200 k7201 g7199)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-* a b))))
                               (orig-/ /)
                               (/
                                ((lambda (j7205 k7206 f7207)
                                   (lambda (g7203 g7204)
                                     (number?/c
                                      j7205
                                      k7206
                                      (f7207
                                       (number?/c j7205 k7206 g7203)
                                       (number?/c j7205 k7206 g7204)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-/ a b))))
                               (orig-car car)
                               (car
                                ((lambda (j7209 k7210 f7211)
                                   (lambda (g7208)
                                     (any/c
                                      j7209
                                      k7210
                                      (f7211 (pair?/c j7209 k7210 g7208)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-car p))))
                               (orig-cdr cdr)
                               (cdr
                                ((lambda (j7213 k7214 f7215)
                                   (lambda (g7212)
                                     (any/c
                                      j7213
                                      k7214
                                      (f7215 (pair?/c j7213 k7214 g7212)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-cdr p))))
                               (orig-cons cons)
                               (cons
                                ((lambda (j7218 k7219 f7220)
                                   (lambda (g7216 g7217)
                                     (pair?/c
                                      j7218
                                      k7219
                                      (f7220
                                       (any/c j7218 k7219 g7216)
                                       (any/c j7218 k7219 g7217)))))
                                 'server
                                 'client
                                 (lambda (a b) (cons a b))))
                               (orig-vector-ref vector-ref)
                               (vector-ref
                                ((lambda (j7222 k7223 f7224)
                                   (lambda (g7221)
                                     (integer?/c
                                      j7222
                                      k7223
                                      (f7224 (vector?/c j7222 k7223 g7221)))))
                                 'server
                                 'client
                                 (lambda (v i) (orig-vector-ref v i))))
                               (orig-vector-set vector-set!)
                               (vector-set!
                                ((lambda (j7227 k7228 f7229)
                                   (lambda (g7225 g7226)
                                     (any/c
                                      j7227
                                      k7228
                                      (f7229
                                       (vector?/c j7227 k7228 g7225)
                                       (integer?/c j7227 k7228 g7226)))))
                                 'server
                                 'client
                                 (lambda (vec i v)
                                   (orig-vector-set! vec i v))))
                               (assert
                                (lambda (cnd) (letrec ((g7718 #t)) g7718)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7719
                                            (letrec ((x7720
                                                      (letrec ((x7721 (cdr x)))
                                                        (cdr x7721))))
                                              (cdr x7720))))
                                    g7719)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7722
                                            (letrec ((x7725 (procedure? f)))
                                              (assert x7725)))
                                           (g7723
                                            (letrec ((x7726 (list? l)))
                                              (assert x7726)))
                                           (g7724
                                            (letrec ((x-cnd7727 (null? l)))
                                              (if x-cnd7727
                                                '()
                                                (letrec ((x7730
                                                          (letrec ((x7731
                                                                    (car l)))
                                                            (f x7731)))
                                                         (x7728
                                                          (letrec ((x7729
                                                                    (cdr l)))
                                                            (map f x7729))))
                                                  (cons x7730 x7728))))))
                                    g7724)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7732
                                            (letrec ((x7733 (car x)))
                                              (cdr x7733))))
                                    g7732)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7734
                                            (letrec ((x7735
                                                      (letrec ((x7736
                                                                (letrec ((x7737
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7737))))
                                                        (cdr x7736))))
                                              (car x7735))))
                                    g7734)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7738
                                            (letrec ((x7739
                                                      (letrec ((x7740
                                                                (letrec ((x7741
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7741))))
                                                        (car x7740))))
                                              (cdr x7739))))
                                    g7738)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7742
                                            (letrec ((x7745
                                                      (string? filename)))
                                              (assert x7745)))
                                           (g7743
                                            (letrec ((x7746 (procedure? proc)))
                                              (assert x7746)))
                                           (g7744
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7747
                                                        (close-output-port
                                                         output-port))
                                                       (g7748 res))
                                                g7748))))
                                    g7744)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7749
                                            (letrec ((x7750
                                                      (letrec ((x7751 (cdr x)))
                                                        (cdr x7751))))
                                              (car x7750))))
                                    g7749)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7752
                                            (letrec ((x7753
                                                      (letrec ((x7754
                                                                (letrec ((x7755
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7755))))
                                                        (car x7754))))
                                              (cdr x7753))))
                                    g7752)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7756
                                            (letrec ((x7758 (list? l)))
                                              (assert x7758)))
                                           (g7757
                                            (letrec ((x-cnd7759 (null? l)))
                                              (if x-cnd7759
                                                #f
                                                (letrec ((x-cnd7760
                                                          (letrec ((x7761
                                                                    (caar l)))
                                                            (eq? x7761 k))))
                                                  (if x-cnd7760
                                                    (car l)
                                                    (letrec ((x7762 (cdr l)))
                                                      (assq k x7762))))))))
                                    g7757)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7763
                                            (letrec ((x7764 (modulo x 2)))
                                              (= 0 x7764))))
                                    g7763)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7765
                                            (letrec ((x7767 (list? l)))
                                              (assert x7767)))
                                           (g7766
                                            (letrec ((x-cnd7768 (null? l)))
                                              (if x-cnd7768
                                                ""
                                                (letrec ((x7771
                                                          (letrec ((x7772
                                                                    (car l)))
                                                            (char->string
                                                             x7772)))
                                                         (x7769
                                                          (letrec ((x7770
                                                                    (cdr l)))
                                                            (list->string
                                                             x7770))))
                                                  (string-append
                                                   x7771
                                                   x7769))))))
                                    g7766)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7773
                                            (letrec ((x7776 (char? c1)))
                                              (assert x7776)))
                                           (g7774
                                            (letrec ((x7777 (char? c2)))
                                              (assert x7777)))
                                           (g7775
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7778
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7778))))
                                    g7775)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7779
                                            (letrec ((x7780
                                                      (letrec ((x7781
                                                                (letrec ((x7782
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7782))))
                                                        (cdr x7781))))
                                              (cdr x7780))))
                                    g7779)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7783
                                            (letrec ((x7786 (list? l)))
                                              (assert x7786)))
                                           (g7784
                                            (letrec ((x7787 (numer?)))
                                              (assert x7787)))
                                           (g7785
                                            (letrec ((x-cnd7788 (zero? k)))
                                              (if x-cnd7788
                                                x
                                                (letrec ((x7790 (cdr x))
                                                         (x7789 (- k 1)))
                                                  (list-tail x7790 x7789))))))
                                    g7785)))
                               (halt (lambda () (letrec ((g7791 '())) g7791)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7792
                                            (letrec ((x-cnd7793
                                                      (letrec ((x7794 #\a))
                                                        (char-ci>=? c x7794))))
                                              (if x-cnd7793
                                                (letrec ((x7795 #\z))
                                                  (char-ci<=? c x7795))
                                                #f))))
                                    g7792)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7796
                                            (letrec ((x7798 (number? x)))
                                              (assert x7798)))
                                           (g7797
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7799
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7800
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7800)))))
                                                g7799))))
                                    g7797)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7801
                                            (letrec ((val7146
                                                      (letrec ((x7802
                                                                (char->integer
                                                                 c)))
                                                        (= x7802 9))))
                                              (letrec ((g7803
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7804
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7804
                                                                       10))))
                                                            (letrec ((g7805
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7806
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7806
                                                                           32)))))
                                                              g7805)))))
                                                g7803))))
                                    g7801)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7807
                                            (letrec ((x7808
                                                      (letrec ((x7809 (car x)))
                                                        (cdr x7809))))
                                              (cdr x7808))))
                                    g7807)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7810
                                            (letrec ((x7812 (number? x)))
                                              (assert x7812)))
                                           (g7811 (> x 0)))
                                    g7811)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7813 #f)) g7813)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7814
                                            (letrec ((x7815 (cdr x)))
                                              (cdr x7815))))
                                    g7814)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7816
                                            (letrec ((x7818 (number? x)))
                                              (assert x7818)))
                                           (g7817
                                            (letrec ((x-cnd7819 (< x 0)))
                                              (if x-cnd7819
                                                (ceiling x)
                                                (floor x)))))
                                    g7817)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7820
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7821
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7823
                                                                              (null?
                                                                               a))
                                                                             (x7822
                                                                              (null?
                                                                               b)))
                                                                      (and x7823
                                                                           x7822))))
                                                            (letrec ((g7824
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7827
                                                                                            (string?
                                                                                             a))
                                                                                           (x7826
                                                                                            (string?
                                                                                             b))
                                                                                           (x7825
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7827
                                                                                         x7826
                                                                                         x7825))))
                                                                          (letrec ((g7828
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7836
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7835
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7832
                                                                                                          (letrec ((x7834
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7833
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7834
                                                                                                             x7833)))
                                                                                                         (x7829
                                                                                                          (letrec ((x7831
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7830
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7831
                                                                                                             x7830))))
                                                                                                  (and x7836
                                                                                                       x7835
                                                                                                       x7832
                                                                                                       x7829))))
                                                                                        (letrec ((g7837
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7856
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7855
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7838
                                                                                                              (letrec ((x7852
                                                                                                                        (letrec ((x7853
                                                                                                                                  (letrec ((x7854
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7854))))
                                                                                                                          (x7853)))
                                                                                                                       (x7839
                                                                                                                        (letrec ((x7850
                                                                                                                                  (letrec ((x7851
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7851
                                                                                                                                     n)))
                                                                                                                                 (x7840
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7841
                                                                                                                                                        (letrec ((x7848
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7842
                                                                                                                                                                  (letrec ((x7845
                                                                                                                                                                            (letrec ((x7847
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7846
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7847
                                                                                                                                                                               x7846)))
                                                                                                                                                                           (x7843
                                                                                                                                                                            (letrec ((x7844
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7844))))
                                                                                                                                                                    (and x7845
                                                                                                                                                                         x7843))))
                                                                                                                                                          (or x7848
                                                                                                                                                              x7842))))
                                                                                                                                                g7841))))
                                                                                                                                    (letrec ((g7849
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7849))))
                                                                                                                          (and x7850
                                                                                                                               x7840))))
                                                                                                                (let x7852 x7839))))
                                                                                                      (and x7856
                                                                                                           x7855
                                                                                                           x7838)))))
                                                                                          g7837)))))
                                                                            g7828)))))
                                                              g7824)))))
                                                g7821))))
                                    g7820)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7857
                                            (letrec ((x7858
                                                      (letrec ((x7859
                                                                (letrec ((x7860
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7860))))
                                                        (car x7859))))
                                              (cdr x7858))))
                                    g7857)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7861
                                            (letrec ((x7862
                                                      (letrec ((x7863
                                                                (letrec ((x7864
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7864))))
                                                        (car x7863))))
                                              (car x7862))))
                                    g7861)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7865 (eq? x y))) g7865)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7866
                                            (letrec ((x7868 (number? x)))
                                              (assert x7868)))
                                           (g7867
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7869
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7870
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7870)))))
                                                g7869))))
                                    g7867)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7871
                                            (letrec ((x7874
                                                      (string? filename)))
                                              (assert x7874)))
                                           (g7872
                                            (letrec ((x7875 (procedure? proc)))
                                              (assert x7875)))
                                           (g7873
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7876
                                                        (close-input-port
                                                         input-port))
                                                       (g7877 res))
                                                g7877))))
                                    g7873)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7878 (cons x '()))) g7878)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7879
                                            (letrec ((x7882 (char? c1)))
                                              (assert x7882)))
                                           (g7880
                                            (letrec ((x7883 (char? c2)))
                                              (assert x7883)))
                                           (g7881
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7884
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7884))))
                                    g7881)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7885
                                            (letrec ((x7886
                                                      (letrec ((x7887 (car x)))
                                                        (car x7887))))
                                              (cdr x7886))))
                                    g7885)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7888
                                            (letrec ((x7889
                                                      (letrec ((x7890
                                                                (letrec ((x7891
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7891))))
                                                        (car x7890))))
                                              (cdr x7889))))
                                    g7888)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7892
                                            (letrec ((x7893
                                                      (letrec ((x7894 (car x)))
                                                        (cdr x7894))))
                                              (car x7893))))
                                    g7892)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7895
                                            (letrec ((x7896
                                                      (letrec ((x7897 (cdr x)))
                                                        (car x7897))))
                                              (car x7896))))
                                    g7895)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7898
                                            (letrec ((x7901 (char? c1)))
                                              (assert x7901)))
                                           (g7899
                                            (letrec ((x7902 (char? c2)))
                                              (assert x7902)))
                                           (g7900
                                            (letrec ((x7903
                                                      (char-ci<=? c1 c2)))
                                              (not x7903))))
                                    g7900)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7904
                                            (letrec ((x7905
                                                      (letrec ((x7906
                                                                (letrec ((x7907
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7907))))
                                                        (car x7906))))
                                              (car x7905))))
                                    g7904)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7908
                                            (letrec ((x7910 (number? x)))
                                              (assert x7910)))
                                           (g7909 (< x 0)))
                                    g7909)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7911 (memq e l))) g7911)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7912
                                            (letrec ((x7913
                                                      (letrec ((x7914 (car x)))
                                                        (car x7914))))
                                              (car x7913))))
                                    g7912)))
                               (debug
                                (lambda (e) (letrec ((g7915 '())) g7915)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7916
                                            (letrec ((x7918 (list? l)))
                                              (assert x7918)))
                                           (g7917
                                            (letrec ((x-cnd7919 (null? l)))
                                              (if x-cnd7919
                                                '()
                                                (letrec ((x7922
                                                          (letrec ((x7923
                                                                    (cdr l)))
                                                            (reverse x7923)))
                                                         (x7920
                                                          (letrec ((x7921
                                                                    (car l)))
                                                            (list x7921))))
                                                  (append x7922 x7920))))))
                                    g7917)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7924
                                            (letrec ((x7925
                                                      (letrec ((x7926
                                                                (letrec ((x7927
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7927))))
                                                        (car x7926))))
                                              (car x7925))))
                                    g7924)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7928
                                            (letrec ((x7929
                                                      (letrec ((x7930
                                                                (letrec ((x7931
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7931))))
                                                        (cdr x7930))))
                                              (cdr x7929))))
                                    g7928)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7932
                                            (letrec ((x7934 (number? x)))
                                              (assert x7934)))
                                           (g7933
                                            (letrec ((x7935 (modulo x 2)))
                                              (= 1 x7935))))
                                    g7933)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7936
                                            (letrec ((x7937
                                                      (letrec ((x7938
                                                                (letrec ((x7939
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7939))))
                                                        (car x7938))))
                                              (car x7937))))
                                    g7936)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7940
                                            (letrec ((x7943 (procedure? proc)))
                                              (assert x7943)))
                                           (g7941
                                            (letrec ((x7944 (list? args)))
                                              (assert x7944)))
                                           (g7942
                                            (if cnd
                                              (letrec ((g7945 (proc))) g7945)
                                              (if cnd
                                                (letrec ((g7946
                                                          (letrec ((x7947
                                                                    (car
                                                                     args)))
                                                            (proc x7947))))
                                                  g7946)
                                                (if cnd
                                                  (letrec ((g7948
                                                            (letrec ((x7950
                                                                      (car
                                                                       args))
                                                                     (x7949
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7950
                                                               x7949))))
                                                    g7948)
                                                  (if cnd
                                                    (letrec ((g7951
                                                              (letrec ((x7954
                                                                        (car
                                                                         args))
                                                                       (x7953
                                                                        (cadr
                                                                         args))
                                                                       (x7952
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7954
                                                                 x7953
                                                                 x7952))))
                                                      g7951)
                                                    (if cnd
                                                      (letrec ((g7955
                                                                (letrec ((x7959
                                                                          (car
                                                                           args))
                                                                         (x7958
                                                                          (cadr
                                                                           args))
                                                                         (x7957
                                                                          (caddr
                                                                           args))
                                                                         (x7956
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7959
                                                                   x7958
                                                                   x7957
                                                                   x7956))))
                                                        g7955)
                                                      (if cnd
                                                        (letrec ((g7960
                                                                  (letrec ((x7966
                                                                            (car
                                                                             args))
                                                                           (x7965
                                                                            (cadr
                                                                             args))
                                                                           (x7964
                                                                            (caddr
                                                                             args))
                                                                           (x7963
                                                                            (cadddr
                                                                             args))
                                                                           (x7961
                                                                            (letrec ((x7962
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7962))))
                                                                    (proc
                                                                     x7966
                                                                     x7965
                                                                     x7964
                                                                     x7963
                                                                     x7961))))
                                                          g7960)
                                                        (if cnd
                                                          (letrec ((g7967
                                                                    (letrec ((x7975
                                                                              (car
                                                                               args))
                                                                             (x7974
                                                                              (cadr
                                                                               args))
                                                                             (x7973
                                                                              (caddr
                                                                               args))
                                                                             (x7972
                                                                              (cadddr
                                                                               args))
                                                                             (x7970
                                                                              (letrec ((x7971
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7971)))
                                                                             (x7968
                                                                              (letrec ((x7969
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7969))))
                                                                      (proc
                                                                       x7975
                                                                       x7974
                                                                       x7973
                                                                       x7972
                                                                       x7970
                                                                       x7968))))
                                                            g7967)
                                                          (if cnd
                                                            (letrec ((g7976
                                                                      (letrec ((x7986
                                                                                (car
                                                                                 args))
                                                                               (x7985
                                                                                (cadr
                                                                                 args))
                                                                               (x7984
                                                                                (caddr
                                                                                 args))
                                                                               (x7983
                                                                                (cadddr
                                                                                 args))
                                                                               (x7981
                                                                                (letrec ((x7982
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7982)))
                                                                               (x7979
                                                                                (letrec ((x7980
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7980)))
                                                                               (x7977
                                                                                (letrec ((x7978
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7978))))
                                                                        (proc
                                                                         x7986
                                                                         x7985
                                                                         x7984
                                                                         x7983
                                                                         x7981
                                                                         x7979
                                                                         x7977))))
                                                              g7976)
                                                            (letrec ((g7987
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7987)))))))))))
                                    g7942)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7988
                                            (letrec ((x7990 (list? l)))
                                              (assert x7990)))
                                           (g7989
                                            (letrec ((x-cnd7991 (null? l)))
                                              (if x-cnd7991
                                                #f
                                                (letrec ((x-cnd7992
                                                          (letrec ((x7993
                                                                    (car l)))
                                                            (equal? x7993 e))))
                                                  (if x-cnd7992
                                                    l
                                                    (letrec ((x7994 (cdr l)))
                                                      (member e x7994))))))))
                                    g7989)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7995
                                            (letrec ((x7996
                                                      (letrec ((x7997
                                                                (letrec ((x7998
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7998))))
                                                        (cdr x7997))))
                                              (cdr x7996))))
                                    g7995)))
                               (cadddr
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
                                              (car x8000))))
                                    g7999)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8003 (random 42))) g8003)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8004
                                            (letrec ((x8006 (number? x)))
                                              (assert x8006)))
                                           (g8005 (= x 0)))
                                    g8005)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8007
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8008
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8008))))
                                    g8007)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8009
                                            (letrec ((x8010 (cdr x)))
                                              (car x8010))))
                                    g8009)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8011
                                            (letrec ((val7156
                                                      (letrec ((x8014
                                                                (pair? l))
                                                               (x8012
                                                                (letrec ((x8013
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8013))))
                                                        (and x8014 x8012))))
                                              (letrec ((g8015
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8015))))
                                    g8011)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8016
                                            (letrec ((x8017
                                                      (letrec ((x8018
                                                                (letrec ((x8019
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8019))))
                                                        (cdr x8018))))
                                              (cdr x8017))))
                                    g8016)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8020
                                            (letrec ((x-cnd8021
                                                      (letrec ((x8022 #\0))
                                                        (char<=? x8022 c))))
                                              (if x-cnd8021
                                                (letrec ((x8023 #\9))
                                                  (char<=? c x8023))
                                                #f))))
                                    g8020)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8024
                                            (letrec ((x8026 (list? l)))
                                              (assert x8026)))
                                           (g8025
                                            (letrec ((x-cnd8027 (null? l)))
                                              (if x-cnd8027
                                                #f
                                                (letrec ((x-cnd8028
                                                          (letrec ((x8029
                                                                    (caar l)))
                                                            (eqv? x8029 k))))
                                                  (if x-cnd8028
                                                    (car l)
                                                    (letrec ((x8030 (cdr l)))
                                                      (assq k x8030))))))))
                                    g8025)))
                               (not
                                (lambda (x)
                                  (letrec ((g8031 (if x #f #t))) g8031)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8032 (append l1 l2))) g8032)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8033
                                            (letrec ((x8035 (list? l)))
                                              (assert x8035)))
                                           (g8034
                                            (letrec ((x-cnd8036 (null? l)))
                                              (if x-cnd8036
                                                #f
                                                (letrec ((x-cnd8037
                                                          (letrec ((x8038
                                                                    (car l)))
                                                            (eq? x8038 e))))
                                                  (if x-cnd8037
                                                    l
                                                    (letrec ((x8039 (cdr l)))
                                                      (memq e x8039))))))))
                                    g8034)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8040
                                            (letrec ((x8041
                                                      (letrec ((x8042
                                                                (letrec ((x8043
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8043))))
                                                        (cdr x8042))))
                                              (car x8041))))
                                    g8040)))
                               (length
                                (lambda (l)
                                  (letrec ((g8044
                                            (letrec ((x8046 (list? l)))
                                              (assert x8046)))
                                           (g8045
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8047
                                                                  (letrec ((x-cnd8048
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8048
                                                                      0
                                                                      (letrec ((x8049
                                                                                (letrec ((x8050
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8050))))
                                                                        (+
                                                                         1
                                                                         x8049))))))
                                                          g8047))))
                                              (letrec ((g8051 (rec l)))
                                                g8051))))
                                    g8045)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8052
                                            (letrec ((x8055 (char? c1)))
                                              (assert x8055)))
                                           (g8053
                                            (letrec ((x8056 (char? c2)))
                                              (assert x8056)))
                                           (g8054
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8057
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8057))))
                                    g8054)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8058
                                            (letrec ((x8059 (string<=? s1 s2)))
                                              (not x8059))))
                                    g8058)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8060
                                            (letrec ((x8061
                                                      (letrec ((x8062 (cdr x)))
                                                        (car x8062))))
                                              (cdr x8061))))
                                    g8060)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8063
                                            (letrec ((x8065 (list? l)))
                                              (assert x8065)))
                                           (g8064
                                            (letrec ((x-cnd8066 (null? l)))
                                              (if x-cnd8066
                                                #f
                                                (letrec ((x-cnd8067
                                                          (letrec ((x8068
                                                                    (caar l)))
                                                            (equal? x8068 k))))
                                                  (if x-cnd8067
                                                    (car l)
                                                    (letrec ((x8069 (cdr l)))
                                                      (assoc k x8069))))))))
                                    g8064)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8070
                                            (letrec ((x8071 (car x)))
                                              (car x8071))))
                                    g8070)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8072
                                            (letrec ((x8075 (char? c1)))
                                              (assert x8075)))
                                           (g8073
                                            (letrec ((x8076 (char? c2)))
                                              (assert x8076)))
                                           (g8074
                                            (letrec ((x8077 (char<=? c1 c2)))
                                              (not x8077))))
                                    g8074)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8078
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8079
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8079))))
                                    g8078)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8080
                                            (letrec ((x8083 (procedure? f)))
                                              (assert x8083)))
                                           (g8081
                                            (letrec ((x8084 (list? l)))
                                              (assert x8084)))
                                           (g8082
                                            (letrec ((x-cnd8085 (null? l)))
                                              (if x-cnd8085
                                                #t
                                                (letrec ((x-cnd8086 (pair? l)))
                                                  (if x-cnd8086
                                                    (letrec ((g8087
                                                              (letrec ((x8089
                                                                        (car
                                                                         l)))
                                                                (f x8089)))
                                                             (g8088
                                                              (letrec ((x8090
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8090))))
                                                      g8088)
                                                    '()))))))
                                    g8082)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8091
                                            (letrec ((x8093 (number? x)))
                                              (assert x8093)))
                                           (g8092
                                            (letrec ((x-cnd8094 (< x 0)))
                                              (if x-cnd8094 (- 0 x) x))))
                                    g8092)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8095
                                            (letrec ((x8098 (char? c1)))
                                              (assert x8098)))
                                           (g8096
                                            (letrec ((x8099 (char? c2)))
                                              (assert x8099)))
                                           (g8097
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8100
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8100))))
                                    g8097)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8101
                                            (letrec ((x8102
                                                      (letrec ((x8103
                                                                (letrec ((x8104
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8104))))
                                                        (cdr x8103))))
                                              (car x8102))))
                                    g8101)))
                               (newline
                                (lambda () (letrec ((g8105 #f)) g8105)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8106
                                            (letrec ((x8108
                                                      (letrec ((x8109 (* m n)))
                                                        (abs x8109)))
                                                     (x8107 (gcd m n)))
                                              (/ x8108 x8107))))
                                    g8106)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8110
                                            (letrec ((x8112 (number? x)))
                                              (assert x8112)))
                                           (g8111
                                            (letrec ((x8113 (<= x y)))
                                              (not x8113))))
                                    g8111)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8114
                                            (letrec ((x8118 (list? l)))
                                              (assert x8118)))
                                           (g8115
                                            (letrec ((x8119 (number? index)))
                                              (assert x8119)))
                                           (g8116
                                            (letrec ((x8120
                                                      (letrec ((x8121
                                                                (length l)))
                                                        (< index x8121))))
                                              (assert x8120)))
                                           (g8117
                                            (letrec ((x-cnd8122 (= index 0)))
                                              (if x-cnd8122
                                                (car l)
                                                (letrec ((x8124 (cdr l))
                                                         (x8123 (- index 1)))
                                                  (list-ref x8124 x8123))))))
                                    g8117)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8125
                                            (letrec ((x-cnd8126 (= b 0)))
                                              (if x-cnd8126
                                                a
                                                (letrec ((x8127 (modulo a b)))
                                                  (gcd b x8127))))))
                                    g8125))))
                        (letrec ((g8128
                                  (letrec ((g8129
                                            (letrec ((phi
                                                      (letrec ((x8153 (x1))
                                                               (x8130
                                                                (letrec ((x8152
                                                                          (x2))
                                                                         (x8131
                                                                          (letrec ((x8151
                                                                                    (x3))
                                                                                   (x8132
                                                                                    (letrec ((x8150
                                                                                              (x4))
                                                                                             (x8133
                                                                                              (letrec ((x8149
                                                                                                        (x5))
                                                                                                       (x8134
                                                                                                        (letrec ((x8148
                                                                                                                  (x6))
                                                                                                                 (x8135
                                                                                                                  (letrec ((x8147
                                                                                                                            (x7))
                                                                                                                           (x8136
                                                                                                                            (letrec ((x-cnd8137
                                                                                                                                      (or x1
                                                                                                                                          x2)))
                                                                                                                              (if x-cnd8137
                                                                                                                                (letrec ((x-cnd8138
                                                                                                                                          (letrec ((x8140
                                                                                                                                                    (not
                                                                                                                                                     x2))
                                                                                                                                                   (x8139
                                                                                                                                                    (not
                                                                                                                                                     x3)))
                                                                                                                                            (or x1
                                                                                                                                                x8140
                                                                                                                                                x8139))))
                                                                                                                                  (if x-cnd8138
                                                                                                                                    (letrec ((x-cnd8141
                                                                                                                                              (or x3
                                                                                                                                                  x4)))
                                                                                                                                      (if x-cnd8141
                                                                                                                                        (letrec ((x-cnd8142
                                                                                                                                                  (letrec ((x8143
                                                                                                                                                            (not
                                                                                                                                                             x4)))
                                                                                                                                                    (or x8143
                                                                                                                                                        x1))))
                                                                                                                                          (if x-cnd8142
                                                                                                                                            (letrec ((x-cnd8144
                                                                                                                                                      (letrec ((x8146
                                                                                                                                                                (not
                                                                                                                                                                 x2))
                                                                                                                                                               (x8145
                                                                                                                                                                (not
                                                                                                                                                                 x3)))
                                                                                                                                                        (or x8146
                                                                                                                                                            x8145))))
                                                                                                                                              (if x-cnd8144
                                                                                                                                                (or x4
                                                                                                                                                    x2)
                                                                                                                                                #f))
                                                                                                                                            #f))
                                                                                                                                        #f))
                                                                                                                                    #f))
                                                                                                                                #f))))
                                                                                                                    (λ x8147
                                                                                                                      x8136))))
                                                                                                          (λ x8148
                                                                                                            x8135))))
                                                                                                (λ x8149
                                                                                                  x8134))))
                                                                                      (λ x8150
                                                                                        x8133))))
                                                                            (λ x8151
                                                                              x8132))))
                                                                  (λ x8152
                                                                    x8131))))
                                                        (λ x8153 x8130)))
                                                     (try
                                                      (letrec ((x8156 (f))
                                                               (x8154
                                                                (letrec ((val7160
                                                                          (f
                                                                           #t)))
                                                                  (letrec ((g8155
                                                                            (if val7160
                                                                              val7160
                                                                              (f
                                                                               #f))))
                                                                    g8155))))
                                                        (λ x8156 x8154)))
                                                     (sat-solve-7
                                                      (letrec ((x8185 (p))
                                                               (x8157
                                                                (letrec ((x8158
                                                                          (letrec ((x8184
                                                                                    (n1))
                                                                                   (x8159
                                                                                    (letrec ((x8160
                                                                                              (letrec ((x8183
                                                                                                        (n2))
                                                                                                       (x8161
                                                                                                        (letrec ((x8162
                                                                                                                  (letrec ((x8182
                                                                                                                            (n3))
                                                                                                                           (x8163
                                                                                                                            (letrec ((x8164
                                                                                                                                      (letrec ((x8181
                                                                                                                                                (n4))
                                                                                                                                               (x8165
                                                                                                                                                (letrec ((x8166
                                                                                                                                                          (letrec ((x8180
                                                                                                                                                                    (n5))
                                                                                                                                                                   (x8167
                                                                                                                                                                    (letrec ((x8168
                                                                                                                                                                              (letrec ((x8179
                                                                                                                                                                                        (n6))
                                                                                                                                                                                       (x8169
                                                                                                                                                                                        (letrec ((x8170
                                                                                                                                                                                                  (letrec ((x8178
                                                                                                                                                                                                            (n7))
                                                                                                                                                                                                           (x8171
                                                                                                                                                                                                            (letrec ((x8172
                                                                                                                                                                                                                      (letrec ((x8173
                                                                                                                                                                                                                                (letrec ((x8174
                                                                                                                                                                                                                                          (letrec ((x8175
                                                                                                                                                                                                                                                    (letrec ((x8176
                                                                                                                                                                                                                                                              (letrec ((x8177
                                                                                                                                                                                                                                                                        (p
                                                                                                                                                                                                                                                                         n1)))
                                                                                                                                                                                                                                                                (x8177
                                                                                                                                                                                                                                                                 n2))))
                                                                                                                                                                                                                                                      (x8176
                                                                                                                                                                                                                                                       n3))))
                                                                                                                                                                                                                                            (x8175
                                                                                                                                                                                                                                             n4))))
                                                                                                                                                                                                                                  (x8174
                                                                                                                                                                                                                                   n5))))
                                                                                                                                                                                                                        (x8173
                                                                                                                                                                                                                         n6))))
                                                                                                                                                                                                              (x8172
                                                                                                                                                                                                               n7))))
                                                                                                                                                                                                    (λ x8178
                                                                                                                                                                                                      x8171))))
                                                                                                                                                                                          (try
                                                                                                                                                                                           x8170))))
                                                                                                                                                                                (λ x8179
                                                                                                                                                                                  x8169))))
                                                                                                                                                                      (try
                                                                                                                                                                       x8168))))
                                                                                                                                                            (λ x8180
                                                                                                                                                              x8167))))
                                                                                                                                                  (try
                                                                                                                                                   x8166))))
                                                                                                                                        (λ x8181
                                                                                                                                          x8165))))
                                                                                                                              (try
                                                                                                                               x8164))))
                                                                                                                    (λ x8182
                                                                                                                      x8163))))
                                                                                                          (try
                                                                                                           x8162))))
                                                                                                (λ x8183
                                                                                                  x8161))))
                                                                                      (try
                                                                                       x8160))))
                                                                            (λ x8184
                                                                              x8159))))
                                                                  (try
                                                                   x8158))))
                                                        (λ x8185 x8157))))
                                              (letrec ((g8186
                                                        (sat-solve-7 phi)))
                                                g8186))))
                                    g8129)))
                          g8128))))
              g7241)))
    g7240))
