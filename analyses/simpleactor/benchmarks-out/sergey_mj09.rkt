(letrec ((any? (lambda (v) (letrec ((g7229 #t)) g7229)))
         (meta (lambda (v) (letrec ((g7230 v)) g7230)))
         (member
          (lambda (v lst)
            (letrec ((g7231
                      (letrec ((g7232
                                (letrec ((x-e7233 lst))
                                  (match
                                   x-e7233
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7234 (eq? v v1)))
                                       (if x-cnd7234 #t (member v vs)))))))))
                        g7232)))
              g7231)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7235 (lambda (v) (letrec ((g7236 v)) g7236)))) g7235)))
         (nonzero?
          (lambda (v)
            (letrec ((g7237 (letrec ((x7238 (= v 0))) (not x7238)))) g7237))))
  (letrec ((g7239
            (letrec ((g7240
                      (letrec ((real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7241
                                            (letrec ((x-cnd7242 (real? g7162)))
                                              (if x-cnd7242
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7241)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7243
                                            (letrec ((x-cnd7244
                                                      (boolean? g7165)))
                                              (if x-cnd7244
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7243)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7245
                                            (letrec ((x-cnd7246
                                                      (number? g7168)))
                                              (if x-cnd7246
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7245)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7247
                                            (letrec ((x-cnd7248
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7248
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7247)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7249
                                            (letrec ((x-cnd7250
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7250
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7249)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7251
                                            (letrec ((x-cnd7252 (pair? g7177)))
                                              (if x-cnd7252
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7251)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7253
                                            (letrec ((x-cnd7254 (pair? g7180)))
                                              (if x-cnd7254
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7253)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7255
                                            (letrec ((x-cnd7256
                                                      (integer? g7183)))
                                              (if x-cnd7256
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7255)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7257
                                            (lambda (k j v)
                                              (letrec ((g7258
                                                        (letrec ((x-cnd7259
                                                                  (c1 k j v)))
                                                          (if x-cnd7259
                                                            (c2 k j v)
                                                            #f))))
                                                g7258))))
                                    g7257)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7260
                                            (lambda (k j v)
                                              (letrec ((g7261
                                                        (letrec ((x-cnd7262
                                                                  (null? v)))
                                                          (if x-cnd7262
                                                            '()
                                                            (letrec ((x7266
                                                                      (letrec ((x7267
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7267)))
                                                                     (x7263
                                                                      (letrec ((x7265
                                                                                (list-of
                                                                                 contract))
                                                                               (x7264
                                                                                (cdr
                                                                                 v)))
                                                                        (x7265
                                                                         k
                                                                         j
                                                                         x7264))))
                                                              (cons
                                                               x7266
                                                               x7263))))))
                                                g7261))))
                                    g7260)))
                               (any? (lambda (v) (letrec ((g7268 #t)) g7268)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7269
                                            (letrec ((x7270 (= v 0)))
                                              (not x7270))))
                                    g7269)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7271
                                            (letrec ((x-cnd7272
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7272
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7271)))
                               (meta (lambda (v) (letrec ((g7273 v)) g7273)))
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
                                (lambda (cnd) (letrec ((g7274 #t)) g7274)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7275
                                            (letrec ((x7276
                                                      (letrec ((x7277 (cdr x)))
                                                        (cdr x7277))))
                                              (cdr x7276))))
                                    g7275)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7278
                                            (letrec ((x7281 (procedure? f)))
                                              (assert x7281)))
                                           (g7279
                                            (letrec ((x7282 (list? l)))
                                              (assert x7282)))
                                           (g7280
                                            (letrec ((x-cnd7283 (null? l)))
                                              (if x-cnd7283
                                                '()
                                                (letrec ((x7286
                                                          (letrec ((x7287
                                                                    (car l)))
                                                            (f x7287)))
                                                         (x7284
                                                          (letrec ((x7285
                                                                    (cdr l)))
                                                            (map f x7285))))
                                                  (cons x7286 x7284))))))
                                    g7280)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7288
                                            (letrec ((x7289 (car x)))
                                              (cdr x7289))))
                                    g7288)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7290
                                            (letrec ((x7291
                                                      (letrec ((x7292
                                                                (letrec ((x7293
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7293))))
                                                        (cdr x7292))))
                                              (car x7291))))
                                    g7290)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7294
                                            (letrec ((x7295
                                                      (letrec ((x7296
                                                                (letrec ((x7297
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7297))))
                                                        (car x7296))))
                                              (cdr x7295))))
                                    g7294)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7298
                                            (letrec ((x7301
                                                      (string? filename)))
                                              (assert x7301)))
                                           (g7299
                                            (letrec ((x7302 (procedure? proc)))
                                              (assert x7302)))
                                           (g7300
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7303
                                                        (close-output-port
                                                         output-port))
                                                       (g7304 res))
                                                g7304))))
                                    g7300)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7305
                                            (letrec ((x7306
                                                      (letrec ((x7307 (cdr x)))
                                                        (cdr x7307))))
                                              (car x7306))))
                                    g7305)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7308
                                            (letrec ((x7309
                                                      (letrec ((x7310
                                                                (letrec ((x7311
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7311))))
                                                        (car x7310))))
                                              (cdr x7309))))
                                    g7308)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7312
                                            (letrec ((x7314 (list? l)))
                                              (assert x7314)))
                                           (g7313
                                            (letrec ((x-cnd7315 (null? l)))
                                              (if x-cnd7315
                                                #f
                                                (letrec ((x-cnd7316
                                                          (letrec ((x7317
                                                                    (caar l)))
                                                            (eq? x7317 k))))
                                                  (if x-cnd7316
                                                    (car l)
                                                    (letrec ((x7318 (cdr l)))
                                                      (assq k x7318))))))))
                                    g7313)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7319
                                            (letrec ((x7320 (modulo x 2)))
                                              (= 0 x7320))))
                                    g7319)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7321
                                            (letrec ((x7323 (list? l)))
                                              (assert x7323)))
                                           (g7322
                                            (letrec ((x-cnd7324 (null? l)))
                                              (if x-cnd7324
                                                ""
                                                (letrec ((x7327
                                                          (letrec ((x7328
                                                                    (car l)))
                                                            (char->string
                                                             x7328)))
                                                         (x7325
                                                          (letrec ((x7326
                                                                    (cdr l)))
                                                            (list->string
                                                             x7326))))
                                                  (string-append
                                                   x7327
                                                   x7325))))))
                                    g7322)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7329
                                            (letrec ((x7332 (char? c1)))
                                              (assert x7332)))
                                           (g7330
                                            (letrec ((x7333 (char? c2)))
                                              (assert x7333)))
                                           (g7331
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7334
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7334))))
                                    g7331)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7335
                                            (letrec ((x7336
                                                      (letrec ((x7337
                                                                (letrec ((x7338
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7338))))
                                                        (cdr x7337))))
                                              (cdr x7336))))
                                    g7335)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7339
                                            (letrec ((x7342 (list? l)))
                                              (assert x7342)))
                                           (g7340
                                            (letrec ((x7343 (numer?)))
                                              (assert x7343)))
                                           (g7341
                                            (letrec ((x-cnd7344 (zero? k)))
                                              (if x-cnd7344
                                                x
                                                (letrec ((x7346 (cdr x))
                                                         (x7345 (- k 1)))
                                                  (list-tail x7346 x7345))))))
                                    g7341)))
                               (halt (lambda () (letrec ((g7347 '())) g7347)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7348
                                            (letrec ((x-cnd7349
                                                      (letrec ((x7350 #\a))
                                                        (char-ci>=? c x7350))))
                                              (if x-cnd7349
                                                (letrec ((x7351 #\z))
                                                  (char-ci<=? c x7351))
                                                #f))))
                                    g7348)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7352
                                            (letrec ((x7354 (number? x)))
                                              (assert x7354)))
                                           (g7353
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7355
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7356
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7356)))))
                                                g7355))))
                                    g7353)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7357
                                            (letrec ((val7146
                                                      (letrec ((x7358
                                                                (char->integer
                                                                 c)))
                                                        (= x7358 9))))
                                              (letrec ((g7359
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7360
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7360
                                                                       10))))
                                                            (letrec ((g7361
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7362
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7362
                                                                           32)))))
                                                              g7361)))))
                                                g7359))))
                                    g7357)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7363
                                            (letrec ((x7364
                                                      (letrec ((x7365 (car x)))
                                                        (cdr x7365))))
                                              (cdr x7364))))
                                    g7363)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7366
                                            (letrec ((x7368 (number? x)))
                                              (assert x7368)))
                                           (g7367 (> x 0)))
                                    g7367)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7369 #f)) g7369)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7370
                                            (letrec ((x7371 (cdr x)))
                                              (cdr x7371))))
                                    g7370)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7372
                                            (letrec ((x7374 (number? x)))
                                              (assert x7374)))
                                           (g7373
                                            (letrec ((x-cnd7375 (< x 0)))
                                              (if x-cnd7375
                                                (ceiling x)
                                                (floor x)))))
                                    g7373)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7376
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7377
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7379
                                                                              (null?
                                                                               a))
                                                                             (x7378
                                                                              (null?
                                                                               b)))
                                                                      (and x7379
                                                                           x7378))))
                                                            (letrec ((g7380
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7383
                                                                                            (string?
                                                                                             a))
                                                                                           (x7382
                                                                                            (string?
                                                                                             b))
                                                                                           (x7381
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7383
                                                                                         x7382
                                                                                         x7381))))
                                                                          (letrec ((g7384
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7392
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7391
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7388
                                                                                                          (letrec ((x7390
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7389
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7390
                                                                                                             x7389)))
                                                                                                         (x7385
                                                                                                          (letrec ((x7387
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7386
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7387
                                                                                                             x7386))))
                                                                                                  (and x7392
                                                                                                       x7391
                                                                                                       x7388
                                                                                                       x7385))))
                                                                                        (letrec ((g7393
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7412
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7411
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7394
                                                                                                              (letrec ((x7408
                                                                                                                        (letrec ((x7409
                                                                                                                                  (letrec ((x7410
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7410))))
                                                                                                                          (x7409)))
                                                                                                                       (x7395
                                                                                                                        (letrec ((x7406
                                                                                                                                  (letrec ((x7407
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7407
                                                                                                                                     n)))
                                                                                                                                 (x7396
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7397
                                                                                                                                                        (letrec ((x7404
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7398
                                                                                                                                                                  (letrec ((x7401
                                                                                                                                                                            (letrec ((x7403
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7402
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7403
                                                                                                                                                                               x7402)))
                                                                                                                                                                           (x7399
                                                                                                                                                                            (letrec ((x7400
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7400))))
                                                                                                                                                                    (and x7401
                                                                                                                                                                         x7399))))
                                                                                                                                                          (or x7404
                                                                                                                                                              x7398))))
                                                                                                                                                g7397))))
                                                                                                                                    (letrec ((g7405
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7405))))
                                                                                                                          (and x7406
                                                                                                                               x7396))))
                                                                                                                (let x7408 x7395))))
                                                                                                      (and x7412
                                                                                                           x7411
                                                                                                           x7394)))))
                                                                                          g7393)))))
                                                                            g7384)))))
                                                              g7380)))))
                                                g7377))))
                                    g7376)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7413
                                            (letrec ((x7414
                                                      (letrec ((x7415
                                                                (letrec ((x7416
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7416))))
                                                        (car x7415))))
                                              (cdr x7414))))
                                    g7413)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7417
                                            (letrec ((x7418
                                                      (letrec ((x7419
                                                                (letrec ((x7420
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7420))))
                                                        (car x7419))))
                                              (car x7418))))
                                    g7417)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7421 (eq? x y))) g7421)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7422
                                            (letrec ((x7424 (number? x)))
                                              (assert x7424)))
                                           (g7423
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7425
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7426
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7426)))))
                                                g7425))))
                                    g7423)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7427
                                            (letrec ((x7430
                                                      (string? filename)))
                                              (assert x7430)))
                                           (g7428
                                            (letrec ((x7431 (procedure? proc)))
                                              (assert x7431)))
                                           (g7429
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7432
                                                        (close-input-port
                                                         input-port))
                                                       (g7433 res))
                                                g7433))))
                                    g7429)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7434 (cons x '()))) g7434)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7435
                                            (letrec ((x7438 (char? c1)))
                                              (assert x7438)))
                                           (g7436
                                            (letrec ((x7439 (char? c2)))
                                              (assert x7439)))
                                           (g7437
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7440
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7440))))
                                    g7437)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7441
                                            (letrec ((x7442
                                                      (letrec ((x7443 (car x)))
                                                        (car x7443))))
                                              (cdr x7442))))
                                    g7441)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7444
                                            (letrec ((x7445
                                                      (letrec ((x7446
                                                                (letrec ((x7447
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7447))))
                                                        (car x7446))))
                                              (cdr x7445))))
                                    g7444)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7448
                                            (letrec ((x7449
                                                      (letrec ((x7450 (car x)))
                                                        (cdr x7450))))
                                              (car x7449))))
                                    g7448)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7451
                                            (letrec ((x7452
                                                      (letrec ((x7453 (cdr x)))
                                                        (car x7453))))
                                              (car x7452))))
                                    g7451)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7454
                                            (letrec ((x7457 (char? c1)))
                                              (assert x7457)))
                                           (g7455
                                            (letrec ((x7458 (char? c2)))
                                              (assert x7458)))
                                           (g7456
                                            (letrec ((x7459
                                                      (char-ci<=? c1 c2)))
                                              (not x7459))))
                                    g7456)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7460
                                            (letrec ((x7461
                                                      (letrec ((x7462
                                                                (letrec ((x7463
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7463))))
                                                        (car x7462))))
                                              (car x7461))))
                                    g7460)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7464
                                            (letrec ((x7466 (number? x)))
                                              (assert x7466)))
                                           (g7465 (< x 0)))
                                    g7465)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7467 (memq e l))) g7467)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7468
                                            (letrec ((x7469
                                                      (letrec ((x7470 (car x)))
                                                        (car x7470))))
                                              (car x7469))))
                                    g7468)))
                               (debug
                                (lambda (e) (letrec ((g7471 '())) g7471)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7472
                                            (letrec ((x7474 (list? l)))
                                              (assert x7474)))
                                           (g7473
                                            (letrec ((x-cnd7475 (null? l)))
                                              (if x-cnd7475
                                                '()
                                                (letrec ((x7478
                                                          (letrec ((x7479
                                                                    (cdr l)))
                                                            (reverse x7479)))
                                                         (x7476
                                                          (letrec ((x7477
                                                                    (car l)))
                                                            (list x7477))))
                                                  (append x7478 x7476))))))
                                    g7473)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7480
                                            (letrec ((x7481
                                                      (letrec ((x7482
                                                                (letrec ((x7483
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7483))))
                                                        (car x7482))))
                                              (car x7481))))
                                    g7480)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7484
                                            (letrec ((x7485
                                                      (letrec ((x7486
                                                                (letrec ((x7487
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7487))))
                                                        (cdr x7486))))
                                              (cdr x7485))))
                                    g7484)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7488
                                            (letrec ((x7490 (number? x)))
                                              (assert x7490)))
                                           (g7489
                                            (letrec ((x7491 (modulo x 2)))
                                              (= 1 x7491))))
                                    g7489)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7492
                                            (letrec ((x7493
                                                      (letrec ((x7494
                                                                (letrec ((x7495
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7495))))
                                                        (car x7494))))
                                              (car x7493))))
                                    g7492)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7496
                                            (letrec ((x7499 (procedure? proc)))
                                              (assert x7499)))
                                           (g7497
                                            (letrec ((x7500 (list? args)))
                                              (assert x7500)))
                                           (g7498
                                            (if cnd
                                              (letrec ((g7501 (proc))) g7501)
                                              (if cnd
                                                (letrec ((g7502
                                                          (letrec ((x7503
                                                                    (car
                                                                     args)))
                                                            (proc x7503))))
                                                  g7502)
                                                (if cnd
                                                  (letrec ((g7504
                                                            (letrec ((x7506
                                                                      (car
                                                                       args))
                                                                     (x7505
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7506
                                                               x7505))))
                                                    g7504)
                                                  (if cnd
                                                    (letrec ((g7507
                                                              (letrec ((x7510
                                                                        (car
                                                                         args))
                                                                       (x7509
                                                                        (cadr
                                                                         args))
                                                                       (x7508
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7510
                                                                 x7509
                                                                 x7508))))
                                                      g7507)
                                                    (if cnd
                                                      (letrec ((g7511
                                                                (letrec ((x7515
                                                                          (car
                                                                           args))
                                                                         (x7514
                                                                          (cadr
                                                                           args))
                                                                         (x7513
                                                                          (caddr
                                                                           args))
                                                                         (x7512
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7515
                                                                   x7514
                                                                   x7513
                                                                   x7512))))
                                                        g7511)
                                                      (if cnd
                                                        (letrec ((g7516
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
                                                                             args))
                                                                           (x7517
                                                                            (letrec ((x7518
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7518))))
                                                                    (proc
                                                                     x7522
                                                                     x7521
                                                                     x7520
                                                                     x7519
                                                                     x7517))))
                                                          g7516)
                                                        (if cnd
                                                          (letrec ((g7523
                                                                    (letrec ((x7531
                                                                              (car
                                                                               args))
                                                                             (x7530
                                                                              (cadr
                                                                               args))
                                                                             (x7529
                                                                              (caddr
                                                                               args))
                                                                             (x7528
                                                                              (cadddr
                                                                               args))
                                                                             (x7526
                                                                              (letrec ((x7527
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7527)))
                                                                             (x7524
                                                                              (letrec ((x7525
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7525))))
                                                                      (proc
                                                                       x7531
                                                                       x7530
                                                                       x7529
                                                                       x7528
                                                                       x7526
                                                                       x7524))))
                                                            g7523)
                                                          (if cnd
                                                            (letrec ((g7532
                                                                      (letrec ((x7542
                                                                                (car
                                                                                 args))
                                                                               (x7541
                                                                                (cadr
                                                                                 args))
                                                                               (x7540
                                                                                (caddr
                                                                                 args))
                                                                               (x7539
                                                                                (cadddr
                                                                                 args))
                                                                               (x7537
                                                                                (letrec ((x7538
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7538)))
                                                                               (x7535
                                                                                (letrec ((x7536
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7536)))
                                                                               (x7533
                                                                                (letrec ((x7534
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7534))))
                                                                        (proc
                                                                         x7542
                                                                         x7541
                                                                         x7540
                                                                         x7539
                                                                         x7537
                                                                         x7535
                                                                         x7533))))
                                                              g7532)
                                                            (letrec ((g7543
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7543)))))))))))
                                    g7498)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7544
                                            (letrec ((x7546 (list? l)))
                                              (assert x7546)))
                                           (g7545
                                            (letrec ((x-cnd7547 (null? l)))
                                              (if x-cnd7547
                                                #f
                                                (letrec ((x-cnd7548
                                                          (letrec ((x7549
                                                                    (car l)))
                                                            (equal? x7549 e))))
                                                  (if x-cnd7548
                                                    l
                                                    (letrec ((x7550 (cdr l)))
                                                      (member e x7550))))))))
                                    g7545)))
                               (call-with-current-continuation call/cc)
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7551
                                            (letrec ((x7552
                                                      (letrec ((x7553
                                                                (letrec ((x7554
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7554))))
                                                        (cdr x7553))))
                                              (cdr x7552))))
                                    g7551)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g7555
                                            (letrec ((x7556
                                                      (letrec ((x7557
                                                                (letrec ((x7558
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7558))))
                                                        (cdr x7557))))
                                              (car x7556))))
                                    g7555)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7559 (random 42))) g7559)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7560
                                            (letrec ((x7562 (number? x)))
                                              (assert x7562)))
                                           (g7561 (= x 0)))
                                    g7561)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7563
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7564
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7564))))
                                    g7563)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7565
                                            (letrec ((x7566 (cdr x)))
                                              (car x7566))))
                                    g7565)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7567
                                            (letrec ((val7156
                                                      (letrec ((x7570
                                                                (pair? l))
                                                               (x7568
                                                                (letrec ((x7569
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7569))))
                                                        (and x7570 x7568))))
                                              (letrec ((g7571
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7571))))
                                    g7567)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7572
                                            (letrec ((x7573
                                                      (letrec ((x7574
                                                                (letrec ((x7575
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7575))))
                                                        (cdr x7574))))
                                              (cdr x7573))))
                                    g7572)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7576
                                            (letrec ((x-cnd7577
                                                      (letrec ((x7578 #\0))
                                                        (char<=? x7578 c))))
                                              (if x-cnd7577
                                                (letrec ((x7579 #\9))
                                                  (char<=? c x7579))
                                                #f))))
                                    g7576)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7580
                                            (letrec ((x7582 (list? l)))
                                              (assert x7582)))
                                           (g7581
                                            (letrec ((x-cnd7583 (null? l)))
                                              (if x-cnd7583
                                                #f
                                                (letrec ((x-cnd7584
                                                          (letrec ((x7585
                                                                    (caar l)))
                                                            (eqv? x7585 k))))
                                                  (if x-cnd7584
                                                    (car l)
                                                    (letrec ((x7586 (cdr l)))
                                                      (assq k x7586))))))))
                                    g7581)))
                               (not
                                (lambda (x)
                                  (letrec ((g7587 (if x #f #t))) g7587)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7588 (append l1 l2))) g7588)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7589
                                            (letrec ((x7591 (list? l)))
                                              (assert x7591)))
                                           (g7590
                                            (letrec ((x-cnd7592 (null? l)))
                                              (if x-cnd7592
                                                #f
                                                (letrec ((x-cnd7593
                                                          (letrec ((x7594
                                                                    (car l)))
                                                            (eq? x7594 e))))
                                                  (if x-cnd7593
                                                    l
                                                    (letrec ((x7595 (cdr l)))
                                                      (memq e x7595))))))))
                                    g7590)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7596
                                            (letrec ((x7597
                                                      (letrec ((x7598
                                                                (letrec ((x7599
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7599))))
                                                        (cdr x7598))))
                                              (car x7597))))
                                    g7596)))
                               (length
                                (lambda (l)
                                  (letrec ((g7600
                                            (letrec ((x7602 (list? l)))
                                              (assert x7602)))
                                           (g7601
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7603
                                                                  (letrec ((x-cnd7604
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7604
                                                                      0
                                                                      (letrec ((x7605
                                                                                (letrec ((x7606
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7606))))
                                                                        (+
                                                                         1
                                                                         x7605))))))
                                                          g7603))))
                                              (letrec ((g7607 (rec l)))
                                                g7607))))
                                    g7601)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7608
                                            (letrec ((x7611 (char? c1)))
                                              (assert x7611)))
                                           (g7609
                                            (letrec ((x7612 (char? c2)))
                                              (assert x7612)))
                                           (g7610
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7613
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7613))))
                                    g7610)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7614
                                            (letrec ((x7615 (string<=? s1 s2)))
                                              (not x7615))))
                                    g7614)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7616
                                            (letrec ((x7617
                                                      (letrec ((x7618 (cdr x)))
                                                        (car x7618))))
                                              (cdr x7617))))
                                    g7616)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7619
                                            (letrec ((x7621 (list? l)))
                                              (assert x7621)))
                                           (g7620
                                            (letrec ((x-cnd7622 (null? l)))
                                              (if x-cnd7622
                                                #f
                                                (letrec ((x-cnd7623
                                                          (letrec ((x7624
                                                                    (caar l)))
                                                            (equal? x7624 k))))
                                                  (if x-cnd7623
                                                    (car l)
                                                    (letrec ((x7625 (cdr l)))
                                                      (assoc k x7625))))))))
                                    g7620)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7626
                                            (letrec ((x7627 (car x)))
                                              (car x7627))))
                                    g7626)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7628
                                            (letrec ((x7631 (char? c1)))
                                              (assert x7631)))
                                           (g7629
                                            (letrec ((x7632 (char? c2)))
                                              (assert x7632)))
                                           (g7630
                                            (letrec ((x7633 (char<=? c1 c2)))
                                              (not x7633))))
                                    g7630)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7634
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7635
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7635))))
                                    g7634)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7636
                                            (letrec ((x7639 (procedure? f)))
                                              (assert x7639)))
                                           (g7637
                                            (letrec ((x7640 (list? l)))
                                              (assert x7640)))
                                           (g7638
                                            (letrec ((x-cnd7641 (null? l)))
                                              (if x-cnd7641
                                                #t
                                                (letrec ((x-cnd7642 (pair? l)))
                                                  (if x-cnd7642
                                                    (letrec ((g7643
                                                              (letrec ((x7645
                                                                        (car
                                                                         l)))
                                                                (f x7645)))
                                                             (g7644
                                                              (letrec ((x7646
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7646))))
                                                      g7644)
                                                    '()))))))
                                    g7638)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7647
                                            (letrec ((x7649 (number? x)))
                                              (assert x7649)))
                                           (g7648
                                            (letrec ((x-cnd7650 (< x 0)))
                                              (if x-cnd7650 (- 0 x) x))))
                                    g7648)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7651
                                            (letrec ((x7654 (char? c1)))
                                              (assert x7654)))
                                           (g7652
                                            (letrec ((x7655 (char? c2)))
                                              (assert x7655)))
                                           (g7653
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7656
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7656))))
                                    g7653)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7657
                                            (letrec ((x7658
                                                      (letrec ((x7659
                                                                (letrec ((x7660
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7660))))
                                                        (cdr x7659))))
                                              (car x7658))))
                                    g7657)))
                               (newline
                                (lambda () (letrec ((g7661 #f)) g7661)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7662
                                            (letrec ((x7664
                                                      (letrec ((x7665 (* m n)))
                                                        (abs x7665)))
                                                     (x7663 (gcd m n)))
                                              (/ x7664 x7663))))
                                    g7662)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7666
                                            (letrec ((x7668 (number? x)))
                                              (assert x7668)))
                                           (g7667
                                            (letrec ((x7669 (<= x y)))
                                              (not x7669))))
                                    g7667)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7670
                                            (letrec ((x7674 (list? l)))
                                              (assert x7674)))
                                           (g7671
                                            (letrec ((x7675 (number? index)))
                                              (assert x7675)))
                                           (g7672
                                            (letrec ((x7676
                                                      (letrec ((x7677
                                                                (length l)))
                                                        (< index x7677))))
                                              (assert x7676)))
                                           (g7673
                                            (letrec ((x-cnd7678 (= index 0)))
                                              (if x-cnd7678
                                                (car l)
                                                (letrec ((x7680 (cdr l))
                                                         (x7679 (- index 1)))
                                                  (list-ref x7680 x7679))))))
                                    g7673)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7681
                                            (letrec ((x-cnd7682 (= b 0)))
                                              (if x-cnd7682
                                                a
                                                (letrec ((x7683 (modulo a b)))
                                                  (gcd b x7683))))))
                                    g7681)))
                               (real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7684
                                            (letrec ((x-cnd7685 (real? g7162)))
                                              (if x-cnd7685
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7684)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7686
                                            (letrec ((x-cnd7687
                                                      (boolean? g7165)))
                                              (if x-cnd7687
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7686)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7688
                                            (letrec ((x-cnd7689
                                                      (number? g7168)))
                                              (if x-cnd7689
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7688)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7690
                                            (letrec ((x-cnd7691
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7691
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7690)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7692
                                            (letrec ((x-cnd7693
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7693
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7692)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7694
                                            (letrec ((x-cnd7695 (pair? g7177)))
                                              (if x-cnd7695
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7694)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7696
                                            (letrec ((x-cnd7697 (pair? g7180)))
                                              (if x-cnd7697
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7696)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7698
                                            (letrec ((x-cnd7699
                                                      (integer? g7183)))
                                              (if x-cnd7699
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7698)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7700
                                            (lambda (k j v)
                                              (letrec ((g7701
                                                        (letrec ((x-cnd7702
                                                                  (c1 k j v)))
                                                          (if x-cnd7702
                                                            (c2 k j v)
                                                            #f))))
                                                g7701))))
                                    g7700)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7703
                                            (lambda (k j v)
                                              (letrec ((g7704
                                                        (letrec ((x-cnd7705
                                                                  (null? v)))
                                                          (if x-cnd7705
                                                            '()
                                                            (letrec ((x7709
                                                                      (letrec ((x7710
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7710)))
                                                                     (x7706
                                                                      (letrec ((x7708
                                                                                (list-of
                                                                                 contract))
                                                                               (x7707
                                                                                (cdr
                                                                                 v)))
                                                                        (x7708
                                                                         k
                                                                         j
                                                                         x7707))))
                                                              (cons
                                                               x7709
                                                               x7706))))))
                                                g7704))))
                                    g7703)))
                               (any? (lambda (v) (letrec ((g7711 #t)) g7711)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7712
                                            (letrec ((x7713 (= v 0)))
                                              (not x7713))))
                                    g7712)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7714
                                            (letrec ((x-cnd7715
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7715
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7714)))
                               (meta (lambda (v) (letrec ((g7716 v)) g7716)))
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
                                (lambda (cnd) (letrec ((g7717 #t)) g7717)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7718
                                            (letrec ((x7719
                                                      (letrec ((x7720 (cdr x)))
                                                        (cdr x7720))))
                                              (cdr x7719))))
                                    g7718)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7721
                                            (letrec ((x7724 (procedure? f)))
                                              (assert x7724)))
                                           (g7722
                                            (letrec ((x7725 (list? l)))
                                              (assert x7725)))
                                           (g7723
                                            (letrec ((x-cnd7726 (null? l)))
                                              (if x-cnd7726
                                                '()
                                                (letrec ((x7729
                                                          (letrec ((x7730
                                                                    (car l)))
                                                            (f x7730)))
                                                         (x7727
                                                          (letrec ((x7728
                                                                    (cdr l)))
                                                            (map f x7728))))
                                                  (cons x7729 x7727))))))
                                    g7723)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7731
                                            (letrec ((x7732 (car x)))
                                              (cdr x7732))))
                                    g7731)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7733
                                            (letrec ((x7734
                                                      (letrec ((x7735
                                                                (letrec ((x7736
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7736))))
                                                        (cdr x7735))))
                                              (car x7734))))
                                    g7733)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7737
                                            (letrec ((x7738
                                                      (letrec ((x7739
                                                                (letrec ((x7740
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7740))))
                                                        (car x7739))))
                                              (cdr x7738))))
                                    g7737)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7741
                                            (letrec ((x7744
                                                      (string? filename)))
                                              (assert x7744)))
                                           (g7742
                                            (letrec ((x7745 (procedure? proc)))
                                              (assert x7745)))
                                           (g7743
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7746
                                                        (close-output-port
                                                         output-port))
                                                       (g7747 res))
                                                g7747))))
                                    g7743)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7748
                                            (letrec ((x7749
                                                      (letrec ((x7750 (cdr x)))
                                                        (cdr x7750))))
                                              (car x7749))))
                                    g7748)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7751
                                            (letrec ((x7752
                                                      (letrec ((x7753
                                                                (letrec ((x7754
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7754))))
                                                        (car x7753))))
                                              (cdr x7752))))
                                    g7751)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7755
                                            (letrec ((x7757 (list? l)))
                                              (assert x7757)))
                                           (g7756
                                            (letrec ((x-cnd7758 (null? l)))
                                              (if x-cnd7758
                                                #f
                                                (letrec ((x-cnd7759
                                                          (letrec ((x7760
                                                                    (caar l)))
                                                            (eq? x7760 k))))
                                                  (if x-cnd7759
                                                    (car l)
                                                    (letrec ((x7761 (cdr l)))
                                                      (assq k x7761))))))))
                                    g7756)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7762
                                            (letrec ((x7763 (modulo x 2)))
                                              (= 0 x7763))))
                                    g7762)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7764
                                            (letrec ((x7766 (list? l)))
                                              (assert x7766)))
                                           (g7765
                                            (letrec ((x-cnd7767 (null? l)))
                                              (if x-cnd7767
                                                ""
                                                (letrec ((x7770
                                                          (letrec ((x7771
                                                                    (car l)))
                                                            (char->string
                                                             x7771)))
                                                         (x7768
                                                          (letrec ((x7769
                                                                    (cdr l)))
                                                            (list->string
                                                             x7769))))
                                                  (string-append
                                                   x7770
                                                   x7768))))))
                                    g7765)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7772
                                            (letrec ((x7775 (char? c1)))
                                              (assert x7775)))
                                           (g7773
                                            (letrec ((x7776 (char? c2)))
                                              (assert x7776)))
                                           (g7774
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7777
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7777))))
                                    g7774)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7778
                                            (letrec ((x7779
                                                      (letrec ((x7780
                                                                (letrec ((x7781
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7781))))
                                                        (cdr x7780))))
                                              (cdr x7779))))
                                    g7778)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7782
                                            (letrec ((x7785 (list? l)))
                                              (assert x7785)))
                                           (g7783
                                            (letrec ((x7786 (numer?)))
                                              (assert x7786)))
                                           (g7784
                                            (letrec ((x-cnd7787 (zero? k)))
                                              (if x-cnd7787
                                                x
                                                (letrec ((x7789 (cdr x))
                                                         (x7788 (- k 1)))
                                                  (list-tail x7789 x7788))))))
                                    g7784)))
                               (halt (lambda () (letrec ((g7790 '())) g7790)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7791
                                            (letrec ((x-cnd7792
                                                      (letrec ((x7793 #\a))
                                                        (char-ci>=? c x7793))))
                                              (if x-cnd7792
                                                (letrec ((x7794 #\z))
                                                  (char-ci<=? c x7794))
                                                #f))))
                                    g7791)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7795
                                            (letrec ((x7797 (number? x)))
                                              (assert x7797)))
                                           (g7796
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7798
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7799
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7799)))))
                                                g7798))))
                                    g7796)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7800
                                            (letrec ((val7146
                                                      (letrec ((x7801
                                                                (char->integer
                                                                 c)))
                                                        (= x7801 9))))
                                              (letrec ((g7802
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7803
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7803
                                                                       10))))
                                                            (letrec ((g7804
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7805
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7805
                                                                           32)))))
                                                              g7804)))))
                                                g7802))))
                                    g7800)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7806
                                            (letrec ((x7807
                                                      (letrec ((x7808 (car x)))
                                                        (cdr x7808))))
                                              (cdr x7807))))
                                    g7806)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7809
                                            (letrec ((x7811 (number? x)))
                                              (assert x7811)))
                                           (g7810 (> x 0)))
                                    g7810)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7812 #f)) g7812)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7813
                                            (letrec ((x7814 (cdr x)))
                                              (cdr x7814))))
                                    g7813)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7815
                                            (letrec ((x7817 (number? x)))
                                              (assert x7817)))
                                           (g7816
                                            (letrec ((x-cnd7818 (< x 0)))
                                              (if x-cnd7818
                                                (ceiling x)
                                                (floor x)))))
                                    g7816)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7819
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7820
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7822
                                                                              (null?
                                                                               a))
                                                                             (x7821
                                                                              (null?
                                                                               b)))
                                                                      (and x7822
                                                                           x7821))))
                                                            (letrec ((g7823
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7826
                                                                                            (string?
                                                                                             a))
                                                                                           (x7825
                                                                                            (string?
                                                                                             b))
                                                                                           (x7824
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7826
                                                                                         x7825
                                                                                         x7824))))
                                                                          (letrec ((g7827
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7835
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7834
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7831
                                                                                                          (letrec ((x7833
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7832
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7833
                                                                                                             x7832)))
                                                                                                         (x7828
                                                                                                          (letrec ((x7830
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7829
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7830
                                                                                                             x7829))))
                                                                                                  (and x7835
                                                                                                       x7834
                                                                                                       x7831
                                                                                                       x7828))))
                                                                                        (letrec ((g7836
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7855
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7854
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7837
                                                                                                              (letrec ((x7851
                                                                                                                        (letrec ((x7852
                                                                                                                                  (letrec ((x7853
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7853))))
                                                                                                                          (x7852)))
                                                                                                                       (x7838
                                                                                                                        (letrec ((x7849
                                                                                                                                  (letrec ((x7850
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7850
                                                                                                                                     n)))
                                                                                                                                 (x7839
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7840
                                                                                                                                                        (letrec ((x7847
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7841
                                                                                                                                                                  (letrec ((x7844
                                                                                                                                                                            (letrec ((x7846
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7845
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7846
                                                                                                                                                                               x7845)))
                                                                                                                                                                           (x7842
                                                                                                                                                                            (letrec ((x7843
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7843))))
                                                                                                                                                                    (and x7844
                                                                                                                                                                         x7842))))
                                                                                                                                                          (or x7847
                                                                                                                                                              x7841))))
                                                                                                                                                g7840))))
                                                                                                                                    (letrec ((g7848
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7848))))
                                                                                                                          (and x7849
                                                                                                                               x7839))))
                                                                                                                (let x7851 x7838))))
                                                                                                      (and x7855
                                                                                                           x7854
                                                                                                           x7837)))))
                                                                                          g7836)))))
                                                                            g7827)))))
                                                              g7823)))))
                                                g7820))))
                                    g7819)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7856
                                            (letrec ((x7857
                                                      (letrec ((x7858
                                                                (letrec ((x7859
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7859))))
                                                        (car x7858))))
                                              (cdr x7857))))
                                    g7856)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7860
                                            (letrec ((x7861
                                                      (letrec ((x7862
                                                                (letrec ((x7863
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7863))))
                                                        (car x7862))))
                                              (car x7861))))
                                    g7860)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7864 (eq? x y))) g7864)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7865
                                            (letrec ((x7867 (number? x)))
                                              (assert x7867)))
                                           (g7866
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7868
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7869
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7869)))))
                                                g7868))))
                                    g7866)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7870
                                            (letrec ((x7873
                                                      (string? filename)))
                                              (assert x7873)))
                                           (g7871
                                            (letrec ((x7874 (procedure? proc)))
                                              (assert x7874)))
                                           (g7872
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7875
                                                        (close-input-port
                                                         input-port))
                                                       (g7876 res))
                                                g7876))))
                                    g7872)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7877 (cons x '()))) g7877)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7878
                                            (letrec ((x7881 (char? c1)))
                                              (assert x7881)))
                                           (g7879
                                            (letrec ((x7882 (char? c2)))
                                              (assert x7882)))
                                           (g7880
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7883
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7883))))
                                    g7880)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7884
                                            (letrec ((x7885
                                                      (letrec ((x7886 (car x)))
                                                        (car x7886))))
                                              (cdr x7885))))
                                    g7884)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7887
                                            (letrec ((x7888
                                                      (letrec ((x7889
                                                                (letrec ((x7890
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7890))))
                                                        (car x7889))))
                                              (cdr x7888))))
                                    g7887)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7891
                                            (letrec ((x7892
                                                      (letrec ((x7893 (car x)))
                                                        (cdr x7893))))
                                              (car x7892))))
                                    g7891)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7894
                                            (letrec ((x7895
                                                      (letrec ((x7896 (cdr x)))
                                                        (car x7896))))
                                              (car x7895))))
                                    g7894)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7897
                                            (letrec ((x7900 (char? c1)))
                                              (assert x7900)))
                                           (g7898
                                            (letrec ((x7901 (char? c2)))
                                              (assert x7901)))
                                           (g7899
                                            (letrec ((x7902
                                                      (char-ci<=? c1 c2)))
                                              (not x7902))))
                                    g7899)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7903
                                            (letrec ((x7904
                                                      (letrec ((x7905
                                                                (letrec ((x7906
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7906))))
                                                        (car x7905))))
                                              (car x7904))))
                                    g7903)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7907
                                            (letrec ((x7909 (number? x)))
                                              (assert x7909)))
                                           (g7908 (< x 0)))
                                    g7908)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7910 (memq e l))) g7910)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7911
                                            (letrec ((x7912
                                                      (letrec ((x7913 (car x)))
                                                        (car x7913))))
                                              (car x7912))))
                                    g7911)))
                               (debug
                                (lambda (e) (letrec ((g7914 '())) g7914)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7915
                                            (letrec ((x7917 (list? l)))
                                              (assert x7917)))
                                           (g7916
                                            (letrec ((x-cnd7918 (null? l)))
                                              (if x-cnd7918
                                                '()
                                                (letrec ((x7921
                                                          (letrec ((x7922
                                                                    (cdr l)))
                                                            (reverse x7922)))
                                                         (x7919
                                                          (letrec ((x7920
                                                                    (car l)))
                                                            (list x7920))))
                                                  (append x7921 x7919))))))
                                    g7916)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7923
                                            (letrec ((x7924
                                                      (letrec ((x7925
                                                                (letrec ((x7926
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7926))))
                                                        (car x7925))))
                                              (car x7924))))
                                    g7923)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7927
                                            (letrec ((x7928
                                                      (letrec ((x7929
                                                                (letrec ((x7930
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7930))))
                                                        (cdr x7929))))
                                              (cdr x7928))))
                                    g7927)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7931
                                            (letrec ((x7933 (number? x)))
                                              (assert x7933)))
                                           (g7932
                                            (letrec ((x7934 (modulo x 2)))
                                              (= 1 x7934))))
                                    g7932)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7935
                                            (letrec ((x7936
                                                      (letrec ((x7937
                                                                (letrec ((x7938
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7938))))
                                                        (car x7937))))
                                              (car x7936))))
                                    g7935)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7939
                                            (letrec ((x7942 (procedure? proc)))
                                              (assert x7942)))
                                           (g7940
                                            (letrec ((x7943 (list? args)))
                                              (assert x7943)))
                                           (g7941
                                            (if cnd
                                              (letrec ((g7944 (proc))) g7944)
                                              (if cnd
                                                (letrec ((g7945
                                                          (letrec ((x7946
                                                                    (car
                                                                     args)))
                                                            (proc x7946))))
                                                  g7945)
                                                (if cnd
                                                  (letrec ((g7947
                                                            (letrec ((x7949
                                                                      (car
                                                                       args))
                                                                     (x7948
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7949
                                                               x7948))))
                                                    g7947)
                                                  (if cnd
                                                    (letrec ((g7950
                                                              (letrec ((x7953
                                                                        (car
                                                                         args))
                                                                       (x7952
                                                                        (cadr
                                                                         args))
                                                                       (x7951
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7953
                                                                 x7952
                                                                 x7951))))
                                                      g7950)
                                                    (if cnd
                                                      (letrec ((g7954
                                                                (letrec ((x7958
                                                                          (car
                                                                           args))
                                                                         (x7957
                                                                          (cadr
                                                                           args))
                                                                         (x7956
                                                                          (caddr
                                                                           args))
                                                                         (x7955
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7958
                                                                   x7957
                                                                   x7956
                                                                   x7955))))
                                                        g7954)
                                                      (if cnd
                                                        (letrec ((g7959
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
                                                                             args))
                                                                           (x7960
                                                                            (letrec ((x7961
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7961))))
                                                                    (proc
                                                                     x7965
                                                                     x7964
                                                                     x7963
                                                                     x7962
                                                                     x7960))))
                                                          g7959)
                                                        (if cnd
                                                          (letrec ((g7966
                                                                    (letrec ((x7974
                                                                              (car
                                                                               args))
                                                                             (x7973
                                                                              (cadr
                                                                               args))
                                                                             (x7972
                                                                              (caddr
                                                                               args))
                                                                             (x7971
                                                                              (cadddr
                                                                               args))
                                                                             (x7969
                                                                              (letrec ((x7970
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7970)))
                                                                             (x7967
                                                                              (letrec ((x7968
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7968))))
                                                                      (proc
                                                                       x7974
                                                                       x7973
                                                                       x7972
                                                                       x7971
                                                                       x7969
                                                                       x7967))))
                                                            g7966)
                                                          (if cnd
                                                            (letrec ((g7975
                                                                      (letrec ((x7985
                                                                                (car
                                                                                 args))
                                                                               (x7984
                                                                                (cadr
                                                                                 args))
                                                                               (x7983
                                                                                (caddr
                                                                                 args))
                                                                               (x7982
                                                                                (cadddr
                                                                                 args))
                                                                               (x7980
                                                                                (letrec ((x7981
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7981)))
                                                                               (x7978
                                                                                (letrec ((x7979
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7979)))
                                                                               (x7976
                                                                                (letrec ((x7977
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7977))))
                                                                        (proc
                                                                         x7985
                                                                         x7984
                                                                         x7983
                                                                         x7982
                                                                         x7980
                                                                         x7978
                                                                         x7976))))
                                                              g7975)
                                                            (letrec ((g7986
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7986)))))))))))
                                    g7941)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7987
                                            (letrec ((x7989 (list? l)))
                                              (assert x7989)))
                                           (g7988
                                            (letrec ((x-cnd7990 (null? l)))
                                              (if x-cnd7990
                                                #f
                                                (letrec ((x-cnd7991
                                                          (letrec ((x7992
                                                                    (car l)))
                                                            (equal? x7992 e))))
                                                  (if x-cnd7991
                                                    l
                                                    (letrec ((x7993 (cdr l)))
                                                      (member e x7993))))))))
                                    g7988)))
                               (call-with-current-continuation call/cc)
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7994
                                            (letrec ((x7995
                                                      (letrec ((x7996
                                                                (letrec ((x7997
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7997))))
                                                        (cdr x7996))))
                                              (cdr x7995))))
                                    g7994)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g7998
                                            (letrec ((x7999
                                                      (letrec ((x8000
                                                                (letrec ((x8001
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8001))))
                                                        (cdr x8000))))
                                              (car x7999))))
                                    g7998)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8002 (random 42))) g8002)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8003
                                            (letrec ((x8005 (number? x)))
                                              (assert x8005)))
                                           (g8004 (= x 0)))
                                    g8004)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8006
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8007
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8007))))
                                    g8006)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8008
                                            (letrec ((x8009 (cdr x)))
                                              (car x8009))))
                                    g8008)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8010
                                            (letrec ((val7156
                                                      (letrec ((x8013
                                                                (pair? l))
                                                               (x8011
                                                                (letrec ((x8012
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8012))))
                                                        (and x8013 x8011))))
                                              (letrec ((g8014
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8014))))
                                    g8010)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8015
                                            (letrec ((x8016
                                                      (letrec ((x8017
                                                                (letrec ((x8018
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8018))))
                                                        (cdr x8017))))
                                              (cdr x8016))))
                                    g8015)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8019
                                            (letrec ((x-cnd8020
                                                      (letrec ((x8021 #\0))
                                                        (char<=? x8021 c))))
                                              (if x-cnd8020
                                                (letrec ((x8022 #\9))
                                                  (char<=? c x8022))
                                                #f))))
                                    g8019)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8023
                                            (letrec ((x8025 (list? l)))
                                              (assert x8025)))
                                           (g8024
                                            (letrec ((x-cnd8026 (null? l)))
                                              (if x-cnd8026
                                                #f
                                                (letrec ((x-cnd8027
                                                          (letrec ((x8028
                                                                    (caar l)))
                                                            (eqv? x8028 k))))
                                                  (if x-cnd8027
                                                    (car l)
                                                    (letrec ((x8029 (cdr l)))
                                                      (assq k x8029))))))))
                                    g8024)))
                               (not
                                (lambda (x)
                                  (letrec ((g8030 (if x #f #t))) g8030)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8031 (append l1 l2))) g8031)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8032
                                            (letrec ((x8034 (list? l)))
                                              (assert x8034)))
                                           (g8033
                                            (letrec ((x-cnd8035 (null? l)))
                                              (if x-cnd8035
                                                #f
                                                (letrec ((x-cnd8036
                                                          (letrec ((x8037
                                                                    (car l)))
                                                            (eq? x8037 e))))
                                                  (if x-cnd8036
                                                    l
                                                    (letrec ((x8038 (cdr l)))
                                                      (memq e x8038))))))))
                                    g8033)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8039
                                            (letrec ((x8040
                                                      (letrec ((x8041
                                                                (letrec ((x8042
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8042))))
                                                        (cdr x8041))))
                                              (car x8040))))
                                    g8039)))
                               (length
                                (lambda (l)
                                  (letrec ((g8043
                                            (letrec ((x8045 (list? l)))
                                              (assert x8045)))
                                           (g8044
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8046
                                                                  (letrec ((x-cnd8047
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8047
                                                                      0
                                                                      (letrec ((x8048
                                                                                (letrec ((x8049
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8049))))
                                                                        (+
                                                                         1
                                                                         x8048))))))
                                                          g8046))))
                                              (letrec ((g8050 (rec l)))
                                                g8050))))
                                    g8044)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8051
                                            (letrec ((x8054 (char? c1)))
                                              (assert x8054)))
                                           (g8052
                                            (letrec ((x8055 (char? c2)))
                                              (assert x8055)))
                                           (g8053
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8056
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8056))))
                                    g8053)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8057
                                            (letrec ((x8058 (string<=? s1 s2)))
                                              (not x8058))))
                                    g8057)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8059
                                            (letrec ((x8060
                                                      (letrec ((x8061 (cdr x)))
                                                        (car x8061))))
                                              (cdr x8060))))
                                    g8059)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8062
                                            (letrec ((x8064 (list? l)))
                                              (assert x8064)))
                                           (g8063
                                            (letrec ((x-cnd8065 (null? l)))
                                              (if x-cnd8065
                                                #f
                                                (letrec ((x-cnd8066
                                                          (letrec ((x8067
                                                                    (caar l)))
                                                            (equal? x8067 k))))
                                                  (if x-cnd8066
                                                    (car l)
                                                    (letrec ((x8068 (cdr l)))
                                                      (assoc k x8068))))))))
                                    g8063)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8069
                                            (letrec ((x8070 (car x)))
                                              (car x8070))))
                                    g8069)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8071
                                            (letrec ((x8074 (char? c1)))
                                              (assert x8074)))
                                           (g8072
                                            (letrec ((x8075 (char? c2)))
                                              (assert x8075)))
                                           (g8073
                                            (letrec ((x8076 (char<=? c1 c2)))
                                              (not x8076))))
                                    g8073)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8077
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8078
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8078))))
                                    g8077)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8079
                                            (letrec ((x8082 (procedure? f)))
                                              (assert x8082)))
                                           (g8080
                                            (letrec ((x8083 (list? l)))
                                              (assert x8083)))
                                           (g8081
                                            (letrec ((x-cnd8084 (null? l)))
                                              (if x-cnd8084
                                                #t
                                                (letrec ((x-cnd8085 (pair? l)))
                                                  (if x-cnd8085
                                                    (letrec ((g8086
                                                              (letrec ((x8088
                                                                        (car
                                                                         l)))
                                                                (f x8088)))
                                                             (g8087
                                                              (letrec ((x8089
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8089))))
                                                      g8087)
                                                    '()))))))
                                    g8081)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8090
                                            (letrec ((x8092 (number? x)))
                                              (assert x8092)))
                                           (g8091
                                            (letrec ((x-cnd8093 (< x 0)))
                                              (if x-cnd8093 (- 0 x) x))))
                                    g8091)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8094
                                            (letrec ((x8097 (char? c1)))
                                              (assert x8097)))
                                           (g8095
                                            (letrec ((x8098 (char? c2)))
                                              (assert x8098)))
                                           (g8096
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8099
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8099))))
                                    g8096)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8100
                                            (letrec ((x8101
                                                      (letrec ((x8102
                                                                (letrec ((x8103
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8103))))
                                                        (cdr x8102))))
                                              (car x8101))))
                                    g8100)))
                               (newline
                                (lambda () (letrec ((g8104 #f)) g8104)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8105
                                            (letrec ((x8107
                                                      (letrec ((x8108 (* m n)))
                                                        (abs x8108)))
                                                     (x8106 (gcd m n)))
                                              (/ x8107 x8106))))
                                    g8105)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8109
                                            (letrec ((x8111 (number? x)))
                                              (assert x8111)))
                                           (g8110
                                            (letrec ((x8112 (<= x y)))
                                              (not x8112))))
                                    g8110)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8113
                                            (letrec ((x8117 (list? l)))
                                              (assert x8117)))
                                           (g8114
                                            (letrec ((x8118 (number? index)))
                                              (assert x8118)))
                                           (g8115
                                            (letrec ((x8119
                                                      (letrec ((x8120
                                                                (length l)))
                                                        (< index x8120))))
                                              (assert x8119)))
                                           (g8116
                                            (letrec ((x-cnd8121 (= index 0)))
                                              (if x-cnd8121
                                                (car l)
                                                (letrec ((x8123 (cdr l))
                                                         (x8122 (- index 1)))
                                                  (list-ref x8123 x8122))))))
                                    g8116)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8124
                                            (letrec ((x-cnd8125 (= b 0)))
                                              (if x-cnd8125
                                                a
                                                (letrec ((x8126 (modulo a b)))
                                                  (gcd b x8126))))))
                                    g8124))))
                        (letrec ((g8127
                                  (letrec ((g8128
                                            (letrec ((h
                                                      (letrec ((x8138 (b))
                                                               (x8129
                                                                (letrec ((g
                                                                          (letrec ((x8130
                                                                                    (z)))
                                                                            (λ x8130
                                                                              z))))
                                                                  (letrec ((g8131
                                                                            (letrec ((f
                                                                                      (letrec ((x8133
                                                                                                (k))
                                                                                               (x8132
                                                                                                (if b
                                                                                                  (k
                                                                                                   1)
                                                                                                  (k
                                                                                                   2))))
                                                                                        (λ x8133
                                                                                          x8132))))
                                                                              (letrec ((g8134
                                                                                        (letrec ((y
                                                                                                  (letrec ((x8135
                                                                                                            (letrec ((x8136
                                                                                                                      (x)))
                                                                                                              (λ x8136
                                                                                                                x))))
                                                                                                    (f
                                                                                                     x8135))))
                                                                                          (letrec ((g8137
                                                                                                    (g
                                                                                                     y)))
                                                                                            g8137))))
                                                                                g8134))))
                                                                    g8131))))
                                                        (λ x8138 x8129))))
                                              (letrec ((g8139
                                                        (letrec ((x (h #t))
                                                                 (y (h #f)))
                                                          (letrec ((g8140 y))
                                                            g8140))))
                                                g8139))))
                                    g8128)))
                          g8127))))
              g7240)))
    g7239))
