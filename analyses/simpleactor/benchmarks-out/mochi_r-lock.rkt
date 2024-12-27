(letrec ((any? (lambda (v) (letrec ((g7239 #t)) g7239)))
         (meta (lambda (v) (letrec ((g7240 v)) g7240)))
         (member
          (lambda (v lst)
            (letrec ((g7241
                      (letrec ((g7242
                                (letrec ((x-e7243 lst))
                                  (match
                                   x-e7243
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7244 (eq? v v1)))
                                       (if x-cnd7244 #t (member v vs)))))))))
                        g7242)))
              g7241)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7245 (lambda (v) (letrec ((g7246 v)) g7246)))) g7245)))
         (nonzero?
          (lambda (v)
            (letrec ((g7247 (letrec ((x7248 (= v 0))) (not x7248)))) g7247))))
  (letrec ((g7249
            (letrec ((g7250
                      (letrec ((real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7251
                                            (letrec ((x-cnd7252 (real? g7162)))
                                              (if x-cnd7252
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7251)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7253
                                            (letrec ((x-cnd7254
                                                      (boolean? g7165)))
                                              (if x-cnd7254
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7253)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7255
                                            (letrec ((x-cnd7256
                                                      (number? g7168)))
                                              (if x-cnd7256
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7255)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7257
                                            (letrec ((x-cnd7258
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7258
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7257)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7259
                                            (letrec ((x-cnd7260
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7260
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7259)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7261
                                            (letrec ((x-cnd7262 (pair? g7177)))
                                              (if x-cnd7262
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7261)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7263
                                            (letrec ((x-cnd7264 (pair? g7180)))
                                              (if x-cnd7264
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7263)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7265
                                            (letrec ((x-cnd7266
                                                      (integer? g7183)))
                                              (if x-cnd7266
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7265)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7267
                                            (lambda (k j v)
                                              (letrec ((g7268
                                                        (letrec ((x-cnd7269
                                                                  (c1 k j v)))
                                                          (if x-cnd7269
                                                            (c2 k j v)
                                                            #f))))
                                                g7268))))
                                    g7267)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7270
                                            (lambda (k j v)
                                              (letrec ((g7271
                                                        (letrec ((x-cnd7272
                                                                  (null? v)))
                                                          (if x-cnd7272
                                                            '()
                                                            (letrec ((x7276
                                                                      (letrec ((x7277
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7277)))
                                                                     (x7273
                                                                      (letrec ((x7275
                                                                                (list-of
                                                                                 contract))
                                                                               (x7274
                                                                                (cdr
                                                                                 v)))
                                                                        (x7275
                                                                         k
                                                                         j
                                                                         x7274))))
                                                              (cons
                                                               x7276
                                                               x7273))))))
                                                g7271))))
                                    g7270)))
                               (any? (lambda (v) (letrec ((g7278 #t)) g7278)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7279
                                            (letrec ((x7280 (= v 0)))
                                              (not x7280))))
                                    g7279)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7281
                                            (letrec ((x-cnd7282
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7282
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7281)))
                               (meta (lambda (v) (letrec ((g7283 v)) g7283)))
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
                                (lambda (cnd) (letrec ((g7284 #t)) g7284)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7285
                                            (letrec ((x7286
                                                      (letrec ((x7287 (cdr x)))
                                                        (cdr x7287))))
                                              (cdr x7286))))
                                    g7285)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7288
                                            (letrec ((x7291 (procedure? f)))
                                              (assert x7291)))
                                           (g7289
                                            (letrec ((x7292 (list? l)))
                                              (assert x7292)))
                                           (g7290
                                            (letrec ((x-cnd7293 (null? l)))
                                              (if x-cnd7293
                                                '()
                                                (letrec ((x7296
                                                          (letrec ((x7297
                                                                    (car l)))
                                                            (f x7297)))
                                                         (x7294
                                                          (letrec ((x7295
                                                                    (cdr l)))
                                                            (map f x7295))))
                                                  (cons x7296 x7294))))))
                                    g7290)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7298
                                            (letrec ((x7299 (car x)))
                                              (cdr x7299))))
                                    g7298)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7300
                                            (letrec ((x7301
                                                      (letrec ((x7302
                                                                (letrec ((x7303
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7303))))
                                                        (cdr x7302))))
                                              (car x7301))))
                                    g7300)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7304
                                            (letrec ((x7305
                                                      (letrec ((x7306
                                                                (letrec ((x7307
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7307))))
                                                        (car x7306))))
                                              (cdr x7305))))
                                    g7304)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7308
                                            (letrec ((x7311
                                                      (string? filename)))
                                              (assert x7311)))
                                           (g7309
                                            (letrec ((x7312 (procedure? proc)))
                                              (assert x7312)))
                                           (g7310
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7313
                                                        (close-output-port
                                                         output-port))
                                                       (g7314 res))
                                                g7314))))
                                    g7310)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7315
                                            (letrec ((x7316
                                                      (letrec ((x7317 (cdr x)))
                                                        (cdr x7317))))
                                              (car x7316))))
                                    g7315)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7318
                                            (letrec ((x7319
                                                      (letrec ((x7320
                                                                (letrec ((x7321
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7321))))
                                                        (car x7320))))
                                              (cdr x7319))))
                                    g7318)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7322
                                            (letrec ((x7324 (list? l)))
                                              (assert x7324)))
                                           (g7323
                                            (letrec ((x-cnd7325 (null? l)))
                                              (if x-cnd7325
                                                #f
                                                (letrec ((x-cnd7326
                                                          (letrec ((x7327
                                                                    (caar l)))
                                                            (eq? x7327 k))))
                                                  (if x-cnd7326
                                                    (car l)
                                                    (letrec ((x7328 (cdr l)))
                                                      (assq k x7328))))))))
                                    g7323)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7329
                                            (letrec ((x7330 (modulo x 2)))
                                              (= 0 x7330))))
                                    g7329)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7331
                                            (letrec ((x7333 (list? l)))
                                              (assert x7333)))
                                           (g7332
                                            (letrec ((x-cnd7334 (null? l)))
                                              (if x-cnd7334
                                                ""
                                                (letrec ((x7337
                                                          (letrec ((x7338
                                                                    (car l)))
                                                            (char->string
                                                             x7338)))
                                                         (x7335
                                                          (letrec ((x7336
                                                                    (cdr l)))
                                                            (list->string
                                                             x7336))))
                                                  (string-append
                                                   x7337
                                                   x7335))))))
                                    g7332)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7339
                                            (letrec ((x7342 (char? c1)))
                                              (assert x7342)))
                                           (g7340
                                            (letrec ((x7343 (char? c2)))
                                              (assert x7343)))
                                           (g7341
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7344
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7344))))
                                    g7341)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7345
                                            (letrec ((x7346
                                                      (letrec ((x7347
                                                                (letrec ((x7348
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7348))))
                                                        (cdr x7347))))
                                              (cdr x7346))))
                                    g7345)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7349
                                            (letrec ((x7352 (list? l)))
                                              (assert x7352)))
                                           (g7350
                                            (letrec ((x7353 (numer?)))
                                              (assert x7353)))
                                           (g7351
                                            (letrec ((x-cnd7354 (zero? k)))
                                              (if x-cnd7354
                                                x
                                                (letrec ((x7356 (cdr x))
                                                         (x7355 (- k 1)))
                                                  (list-tail x7356 x7355))))))
                                    g7351)))
                               (halt (lambda () (letrec ((g7357 '())) g7357)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7358
                                            (letrec ((x-cnd7359
                                                      (letrec ((x7360 #\a))
                                                        (char-ci>=? c x7360))))
                                              (if x-cnd7359
                                                (letrec ((x7361 #\z))
                                                  (char-ci<=? c x7361))
                                                #f))))
                                    g7358)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7362
                                            (letrec ((x7364 (number? x)))
                                              (assert x7364)))
                                           (g7363
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7365
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7366
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7366)))))
                                                g7365))))
                                    g7363)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7367
                                            (letrec ((val7146
                                                      (letrec ((x7368
                                                                (char->integer
                                                                 c)))
                                                        (= x7368 9))))
                                              (letrec ((g7369
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7370
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7370
                                                                       10))))
                                                            (letrec ((g7371
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7372
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7372
                                                                           32)))))
                                                              g7371)))))
                                                g7369))))
                                    g7367)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7373
                                            (letrec ((x7374
                                                      (letrec ((x7375 (car x)))
                                                        (cdr x7375))))
                                              (cdr x7374))))
                                    g7373)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7376
                                            (letrec ((x7378 (number? x)))
                                              (assert x7378)))
                                           (g7377 (> x 0)))
                                    g7377)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7379 #f)) g7379)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7380
                                            (letrec ((x7381 (cdr x)))
                                              (cdr x7381))))
                                    g7380)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7382
                                            (letrec ((x7384 (number? x)))
                                              (assert x7384)))
                                           (g7383
                                            (letrec ((x-cnd7385 (< x 0)))
                                              (if x-cnd7385
                                                (ceiling x)
                                                (floor x)))))
                                    g7383)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7386
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7387
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7389
                                                                              (null?
                                                                               a))
                                                                             (x7388
                                                                              (null?
                                                                               b)))
                                                                      (and x7389
                                                                           x7388))))
                                                            (letrec ((g7390
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7393
                                                                                            (string?
                                                                                             a))
                                                                                           (x7392
                                                                                            (string?
                                                                                             b))
                                                                                           (x7391
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7393
                                                                                         x7392
                                                                                         x7391))))
                                                                          (letrec ((g7394
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7402
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7401
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7398
                                                                                                          (letrec ((x7400
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7399
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7400
                                                                                                             x7399)))
                                                                                                         (x7395
                                                                                                          (letrec ((x7397
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7396
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7397
                                                                                                             x7396))))
                                                                                                  (and x7402
                                                                                                       x7401
                                                                                                       x7398
                                                                                                       x7395))))
                                                                                        (letrec ((g7403
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7422
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7421
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7404
                                                                                                              (letrec ((x7418
                                                                                                                        (letrec ((x7419
                                                                                                                                  (letrec ((x7420
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7420))))
                                                                                                                          (x7419)))
                                                                                                                       (x7405
                                                                                                                        (letrec ((x7416
                                                                                                                                  (letrec ((x7417
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7417
                                                                                                                                     n)))
                                                                                                                                 (x7406
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7407
                                                                                                                                                        (letrec ((x7414
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7408
                                                                                                                                                                  (letrec ((x7411
                                                                                                                                                                            (letrec ((x7413
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7412
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7413
                                                                                                                                                                               x7412)))
                                                                                                                                                                           (x7409
                                                                                                                                                                            (letrec ((x7410
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7410))))
                                                                                                                                                                    (and x7411
                                                                                                                                                                         x7409))))
                                                                                                                                                          (or x7414
                                                                                                                                                              x7408))))
                                                                                                                                                g7407))))
                                                                                                                                    (letrec ((g7415
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7415))))
                                                                                                                          (and x7416
                                                                                                                               x7406))))
                                                                                                                (let x7418 x7405))))
                                                                                                      (and x7422
                                                                                                           x7421
                                                                                                           x7404)))))
                                                                                          g7403)))))
                                                                            g7394)))))
                                                              g7390)))))
                                                g7387))))
                                    g7386)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7423
                                            (letrec ((x7424
                                                      (letrec ((x7425
                                                                (letrec ((x7426
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7426))))
                                                        (car x7425))))
                                              (cdr x7424))))
                                    g7423)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7427
                                            (letrec ((x7428
                                                      (letrec ((x7429
                                                                (letrec ((x7430
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7430))))
                                                        (car x7429))))
                                              (car x7428))))
                                    g7427)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7431 (eq? x y))) g7431)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7432
                                            (letrec ((x7434 (number? x)))
                                              (assert x7434)))
                                           (g7433
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7435
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7436
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7436)))))
                                                g7435))))
                                    g7433)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7437
                                            (letrec ((x7440
                                                      (string? filename)))
                                              (assert x7440)))
                                           (g7438
                                            (letrec ((x7441 (procedure? proc)))
                                              (assert x7441)))
                                           (g7439
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7442
                                                        (close-input-port
                                                         input-port))
                                                       (g7443 res))
                                                g7443))))
                                    g7439)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7444 (cons x '()))) g7444)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7445
                                            (letrec ((x7448 (char? c1)))
                                              (assert x7448)))
                                           (g7446
                                            (letrec ((x7449 (char? c2)))
                                              (assert x7449)))
                                           (g7447
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7450
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7450))))
                                    g7447)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7451
                                            (letrec ((x7452
                                                      (letrec ((x7453 (car x)))
                                                        (car x7453))))
                                              (cdr x7452))))
                                    g7451)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7454
                                            (letrec ((x7455
                                                      (letrec ((x7456
                                                                (letrec ((x7457
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7457))))
                                                        (car x7456))))
                                              (cdr x7455))))
                                    g7454)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7458
                                            (letrec ((x7459
                                                      (letrec ((x7460 (car x)))
                                                        (cdr x7460))))
                                              (car x7459))))
                                    g7458)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7461
                                            (letrec ((x7462
                                                      (letrec ((x7463 (cdr x)))
                                                        (car x7463))))
                                              (car x7462))))
                                    g7461)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7464
                                            (letrec ((x7467 (char? c1)))
                                              (assert x7467)))
                                           (g7465
                                            (letrec ((x7468 (char? c2)))
                                              (assert x7468)))
                                           (g7466
                                            (letrec ((x7469
                                                      (char-ci<=? c1 c2)))
                                              (not x7469))))
                                    g7466)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7470
                                            (letrec ((x7471
                                                      (letrec ((x7472
                                                                (letrec ((x7473
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7473))))
                                                        (car x7472))))
                                              (car x7471))))
                                    g7470)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7474
                                            (letrec ((x7476 (number? x)))
                                              (assert x7476)))
                                           (g7475 (< x 0)))
                                    g7475)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7477 (memq e l))) g7477)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7478
                                            (letrec ((x7479
                                                      (letrec ((x7480 (car x)))
                                                        (car x7480))))
                                              (car x7479))))
                                    g7478)))
                               (debug
                                (lambda (e) (letrec ((g7481 '())) g7481)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7482
                                            (letrec ((x7484 (list? l)))
                                              (assert x7484)))
                                           (g7483
                                            (letrec ((x-cnd7485 (null? l)))
                                              (if x-cnd7485
                                                '()
                                                (letrec ((x7488
                                                          (letrec ((x7489
                                                                    (cdr l)))
                                                            (reverse x7489)))
                                                         (x7486
                                                          (letrec ((x7487
                                                                    (car l)))
                                                            (list x7487))))
                                                  (append x7488 x7486))))))
                                    g7483)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7490
                                            (letrec ((x7491
                                                      (letrec ((x7492
                                                                (letrec ((x7493
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7493))))
                                                        (car x7492))))
                                              (car x7491))))
                                    g7490)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7494
                                            (letrec ((x7495
                                                      (letrec ((x7496
                                                                (letrec ((x7497
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7497))))
                                                        (cdr x7496))))
                                              (cdr x7495))))
                                    g7494)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7498
                                            (letrec ((x7500 (number? x)))
                                              (assert x7500)))
                                           (g7499
                                            (letrec ((x7501 (modulo x 2)))
                                              (= 1 x7501))))
                                    g7499)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7502
                                            (letrec ((x7503
                                                      (letrec ((x7504
                                                                (letrec ((x7505
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7505))))
                                                        (car x7504))))
                                              (car x7503))))
                                    g7502)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7506
                                            (letrec ((x7509 (procedure? proc)))
                                              (assert x7509)))
                                           (g7507
                                            (letrec ((x7510 (list? args)))
                                              (assert x7510)))
                                           (g7508
                                            (if cnd
                                              (letrec ((g7511 (proc))) g7511)
                                              (if cnd
                                                (letrec ((g7512
                                                          (letrec ((x7513
                                                                    (car
                                                                     args)))
                                                            (proc x7513))))
                                                  g7512)
                                                (if cnd
                                                  (letrec ((g7514
                                                            (letrec ((x7516
                                                                      (car
                                                                       args))
                                                                     (x7515
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7516
                                                               x7515))))
                                                    g7514)
                                                  (if cnd
                                                    (letrec ((g7517
                                                              (letrec ((x7520
                                                                        (car
                                                                         args))
                                                                       (x7519
                                                                        (cadr
                                                                         args))
                                                                       (x7518
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7520
                                                                 x7519
                                                                 x7518))))
                                                      g7517)
                                                    (if cnd
                                                      (letrec ((g7521
                                                                (letrec ((x7525
                                                                          (car
                                                                           args))
                                                                         (x7524
                                                                          (cadr
                                                                           args))
                                                                         (x7523
                                                                          (caddr
                                                                           args))
                                                                         (x7522
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7525
                                                                   x7524
                                                                   x7523
                                                                   x7522))))
                                                        g7521)
                                                      (if cnd
                                                        (letrec ((g7526
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
                                                                               x7528))))
                                                                    (proc
                                                                     x7532
                                                                     x7531
                                                                     x7530
                                                                     x7529
                                                                     x7527))))
                                                          g7526)
                                                        (if cnd
                                                          (letrec ((g7533
                                                                    (letrec ((x7541
                                                                              (car
                                                                               args))
                                                                             (x7540
                                                                              (cadr
                                                                               args))
                                                                             (x7539
                                                                              (caddr
                                                                               args))
                                                                             (x7538
                                                                              (cadddr
                                                                               args))
                                                                             (x7536
                                                                              (letrec ((x7537
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7537)))
                                                                             (x7534
                                                                              (letrec ((x7535
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7535))))
                                                                      (proc
                                                                       x7541
                                                                       x7540
                                                                       x7539
                                                                       x7538
                                                                       x7536
                                                                       x7534))))
                                                            g7533)
                                                          (if cnd
                                                            (letrec ((g7542
                                                                      (letrec ((x7552
                                                                                (car
                                                                                 args))
                                                                               (x7551
                                                                                (cadr
                                                                                 args))
                                                                               (x7550
                                                                                (caddr
                                                                                 args))
                                                                               (x7549
                                                                                (cadddr
                                                                                 args))
                                                                               (x7547
                                                                                (letrec ((x7548
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7548)))
                                                                               (x7545
                                                                                (letrec ((x7546
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7546)))
                                                                               (x7543
                                                                                (letrec ((x7544
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7544))))
                                                                        (proc
                                                                         x7552
                                                                         x7551
                                                                         x7550
                                                                         x7549
                                                                         x7547
                                                                         x7545
                                                                         x7543))))
                                                              g7542)
                                                            (letrec ((g7553
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7553)))))))))))
                                    g7508)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7554
                                            (letrec ((x7556 (list? l)))
                                              (assert x7556)))
                                           (g7555
                                            (letrec ((x-cnd7557 (null? l)))
                                              (if x-cnd7557
                                                #f
                                                (letrec ((x-cnd7558
                                                          (letrec ((x7559
                                                                    (car l)))
                                                            (equal? x7559 e))))
                                                  (if x-cnd7558
                                                    l
                                                    (letrec ((x7560 (cdr l)))
                                                      (member e x7560))))))))
                                    g7555)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7561
                                            (letrec ((x7562
                                                      (letrec ((x7563
                                                                (letrec ((x7564
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7564))))
                                                        (cdr x7563))))
                                              (cdr x7562))))
                                    g7561)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g7565
                                            (letrec ((x7566
                                                      (letrec ((x7567
                                                                (letrec ((x7568
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7568))))
                                                        (cdr x7567))))
                                              (car x7566))))
                                    g7565)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7569 (random 42))) g7569)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7570
                                            (letrec ((x7572 (number? x)))
                                              (assert x7572)))
                                           (g7571 (= x 0)))
                                    g7571)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7573
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7574
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7574))))
                                    g7573)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7575
                                            (letrec ((x7576 (cdr x)))
                                              (car x7576))))
                                    g7575)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7577
                                            (letrec ((val7156
                                                      (letrec ((x7580
                                                                (pair? l))
                                                               (x7578
                                                                (letrec ((x7579
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7579))))
                                                        (and x7580 x7578))))
                                              (letrec ((g7581
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7581))))
                                    g7577)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7582
                                            (letrec ((x7583
                                                      (letrec ((x7584
                                                                (letrec ((x7585
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7585))))
                                                        (cdr x7584))))
                                              (cdr x7583))))
                                    g7582)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7586
                                            (letrec ((x-cnd7587
                                                      (letrec ((x7588 #\0))
                                                        (char<=? x7588 c))))
                                              (if x-cnd7587
                                                (letrec ((x7589 #\9))
                                                  (char<=? c x7589))
                                                #f))))
                                    g7586)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7590
                                            (letrec ((x7592 (list? l)))
                                              (assert x7592)))
                                           (g7591
                                            (letrec ((x-cnd7593 (null? l)))
                                              (if x-cnd7593
                                                #f
                                                (letrec ((x-cnd7594
                                                          (letrec ((x7595
                                                                    (caar l)))
                                                            (eqv? x7595 k))))
                                                  (if x-cnd7594
                                                    (car l)
                                                    (letrec ((x7596 (cdr l)))
                                                      (assq k x7596))))))))
                                    g7591)))
                               (not
                                (lambda (x)
                                  (letrec ((g7597 (if x #f #t))) g7597)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7598 (append l1 l2))) g7598)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7599
                                            (letrec ((x7601 (list? l)))
                                              (assert x7601)))
                                           (g7600
                                            (letrec ((x-cnd7602 (null? l)))
                                              (if x-cnd7602
                                                #f
                                                (letrec ((x-cnd7603
                                                          (letrec ((x7604
                                                                    (car l)))
                                                            (eq? x7604 e))))
                                                  (if x-cnd7603
                                                    l
                                                    (letrec ((x7605 (cdr l)))
                                                      (memq e x7605))))))))
                                    g7600)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7606
                                            (letrec ((x7607
                                                      (letrec ((x7608
                                                                (letrec ((x7609
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7609))))
                                                        (cdr x7608))))
                                              (car x7607))))
                                    g7606)))
                               (length
                                (lambda (l)
                                  (letrec ((g7610
                                            (letrec ((x7612 (list? l)))
                                              (assert x7612)))
                                           (g7611
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7613
                                                                  (letrec ((x-cnd7614
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7614
                                                                      0
                                                                      (letrec ((x7615
                                                                                (letrec ((x7616
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7616))))
                                                                        (+
                                                                         1
                                                                         x7615))))))
                                                          g7613))))
                                              (letrec ((g7617 (rec l)))
                                                g7617))))
                                    g7611)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7618
                                            (letrec ((x7621 (char? c1)))
                                              (assert x7621)))
                                           (g7619
                                            (letrec ((x7622 (char? c2)))
                                              (assert x7622)))
                                           (g7620
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7623
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7623))))
                                    g7620)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7624
                                            (letrec ((x7625 (string<=? s1 s2)))
                                              (not x7625))))
                                    g7624)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7626
                                            (letrec ((x7627
                                                      (letrec ((x7628 (cdr x)))
                                                        (car x7628))))
                                              (cdr x7627))))
                                    g7626)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7629
                                            (letrec ((x7631 (list? l)))
                                              (assert x7631)))
                                           (g7630
                                            (letrec ((x-cnd7632 (null? l)))
                                              (if x-cnd7632
                                                #f
                                                (letrec ((x-cnd7633
                                                          (letrec ((x7634
                                                                    (caar l)))
                                                            (equal? x7634 k))))
                                                  (if x-cnd7633
                                                    (car l)
                                                    (letrec ((x7635 (cdr l)))
                                                      (assoc k x7635))))))))
                                    g7630)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7636
                                            (letrec ((x7637 (car x)))
                                              (car x7637))))
                                    g7636)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7638
                                            (letrec ((x7641 (char? c1)))
                                              (assert x7641)))
                                           (g7639
                                            (letrec ((x7642 (char? c2)))
                                              (assert x7642)))
                                           (g7640
                                            (letrec ((x7643 (char<=? c1 c2)))
                                              (not x7643))))
                                    g7640)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7644
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7645
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7645))))
                                    g7644)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7646
                                            (letrec ((x7649 (procedure? f)))
                                              (assert x7649)))
                                           (g7647
                                            (letrec ((x7650 (list? l)))
                                              (assert x7650)))
                                           (g7648
                                            (letrec ((x-cnd7651 (null? l)))
                                              (if x-cnd7651
                                                #t
                                                (letrec ((x-cnd7652 (pair? l)))
                                                  (if x-cnd7652
                                                    (letrec ((g7653
                                                              (letrec ((x7655
                                                                        (car
                                                                         l)))
                                                                (f x7655)))
                                                             (g7654
                                                              (letrec ((x7656
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7656))))
                                                      g7654)
                                                    '()))))))
                                    g7648)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7657
                                            (letrec ((x7659 (number? x)))
                                              (assert x7659)))
                                           (g7658
                                            (letrec ((x-cnd7660 (< x 0)))
                                              (if x-cnd7660 (- 0 x) x))))
                                    g7658)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7661
                                            (letrec ((x7664 (char? c1)))
                                              (assert x7664)))
                                           (g7662
                                            (letrec ((x7665 (char? c2)))
                                              (assert x7665)))
                                           (g7663
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7666
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7666))))
                                    g7663)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7667
                                            (letrec ((x7668
                                                      (letrec ((x7669
                                                                (letrec ((x7670
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7670))))
                                                        (cdr x7669))))
                                              (car x7668))))
                                    g7667)))
                               (newline
                                (lambda () (letrec ((g7671 #f)) g7671)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7672
                                            (letrec ((x7674
                                                      (letrec ((x7675 (* m n)))
                                                        (abs x7675)))
                                                     (x7673 (gcd m n)))
                                              (/ x7674 x7673))))
                                    g7672)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7676
                                            (letrec ((x7678 (number? x)))
                                              (assert x7678)))
                                           (g7677
                                            (letrec ((x7679 (<= x y)))
                                              (not x7679))))
                                    g7677)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7680
                                            (letrec ((x7684 (list? l)))
                                              (assert x7684)))
                                           (g7681
                                            (letrec ((x7685 (number? index)))
                                              (assert x7685)))
                                           (g7682
                                            (letrec ((x7686
                                                      (letrec ((x7687
                                                                (length l)))
                                                        (< index x7687))))
                                              (assert x7686)))
                                           (g7683
                                            (letrec ((x-cnd7688 (= index 0)))
                                              (if x-cnd7688
                                                (car l)
                                                (letrec ((x7690 (cdr l))
                                                         (x7689 (- index 1)))
                                                  (list-ref x7690 x7689))))))
                                    g7683)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7691
                                            (letrec ((x-cnd7692 (= b 0)))
                                              (if x-cnd7692
                                                a
                                                (letrec ((x7693 (modulo a b)))
                                                  (gcd b x7693))))))
                                    g7691)))
                               (real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7694
                                            (letrec ((x-cnd7695 (real? g7162)))
                                              (if x-cnd7695
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7694)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7696
                                            (letrec ((x-cnd7697
                                                      (boolean? g7165)))
                                              (if x-cnd7697
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7696)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7698
                                            (letrec ((x-cnd7699
                                                      (number? g7168)))
                                              (if x-cnd7699
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7698)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7700
                                            (letrec ((x-cnd7701
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7701
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7700)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7702
                                            (letrec ((x-cnd7703
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7703
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7702)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7704
                                            (letrec ((x-cnd7705 (pair? g7177)))
                                              (if x-cnd7705
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7704)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7706
                                            (letrec ((x-cnd7707 (pair? g7180)))
                                              (if x-cnd7707
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7706)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7708
                                            (letrec ((x-cnd7709
                                                      (integer? g7183)))
                                              (if x-cnd7709
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7708)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7710
                                            (lambda (k j v)
                                              (letrec ((g7711
                                                        (letrec ((x-cnd7712
                                                                  (c1 k j v)))
                                                          (if x-cnd7712
                                                            (c2 k j v)
                                                            #f))))
                                                g7711))))
                                    g7710)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7713
                                            (lambda (k j v)
                                              (letrec ((g7714
                                                        (letrec ((x-cnd7715
                                                                  (null? v)))
                                                          (if x-cnd7715
                                                            '()
                                                            (letrec ((x7719
                                                                      (letrec ((x7720
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7720)))
                                                                     (x7716
                                                                      (letrec ((x7718
                                                                                (list-of
                                                                                 contract))
                                                                               (x7717
                                                                                (cdr
                                                                                 v)))
                                                                        (x7718
                                                                         k
                                                                         j
                                                                         x7717))))
                                                              (cons
                                                               x7719
                                                               x7716))))))
                                                g7714))))
                                    g7713)))
                               (any? (lambda (v) (letrec ((g7721 #t)) g7721)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7722
                                            (letrec ((x7723 (= v 0)))
                                              (not x7723))))
                                    g7722)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7724
                                            (letrec ((x-cnd7725
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7725
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7724)))
                               (meta (lambda (v) (letrec ((g7726 v)) g7726)))
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
                                (lambda (cnd) (letrec ((g7727 #t)) g7727)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7728
                                            (letrec ((x7729
                                                      (letrec ((x7730 (cdr x)))
                                                        (cdr x7730))))
                                              (cdr x7729))))
                                    g7728)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7731
                                            (letrec ((x7734 (procedure? f)))
                                              (assert x7734)))
                                           (g7732
                                            (letrec ((x7735 (list? l)))
                                              (assert x7735)))
                                           (g7733
                                            (letrec ((x-cnd7736 (null? l)))
                                              (if x-cnd7736
                                                '()
                                                (letrec ((x7739
                                                          (letrec ((x7740
                                                                    (car l)))
                                                            (f x7740)))
                                                         (x7737
                                                          (letrec ((x7738
                                                                    (cdr l)))
                                                            (map f x7738))))
                                                  (cons x7739 x7737))))))
                                    g7733)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7741
                                            (letrec ((x7742 (car x)))
                                              (cdr x7742))))
                                    g7741)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7743
                                            (letrec ((x7744
                                                      (letrec ((x7745
                                                                (letrec ((x7746
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7746))))
                                                        (cdr x7745))))
                                              (car x7744))))
                                    g7743)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7747
                                            (letrec ((x7748
                                                      (letrec ((x7749
                                                                (letrec ((x7750
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7750))))
                                                        (car x7749))))
                                              (cdr x7748))))
                                    g7747)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7751
                                            (letrec ((x7754
                                                      (string? filename)))
                                              (assert x7754)))
                                           (g7752
                                            (letrec ((x7755 (procedure? proc)))
                                              (assert x7755)))
                                           (g7753
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7756
                                                        (close-output-port
                                                         output-port))
                                                       (g7757 res))
                                                g7757))))
                                    g7753)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7758
                                            (letrec ((x7759
                                                      (letrec ((x7760 (cdr x)))
                                                        (cdr x7760))))
                                              (car x7759))))
                                    g7758)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7761
                                            (letrec ((x7762
                                                      (letrec ((x7763
                                                                (letrec ((x7764
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7764))))
                                                        (car x7763))))
                                              (cdr x7762))))
                                    g7761)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7765
                                            (letrec ((x7767 (list? l)))
                                              (assert x7767)))
                                           (g7766
                                            (letrec ((x-cnd7768 (null? l)))
                                              (if x-cnd7768
                                                #f
                                                (letrec ((x-cnd7769
                                                          (letrec ((x7770
                                                                    (caar l)))
                                                            (eq? x7770 k))))
                                                  (if x-cnd7769
                                                    (car l)
                                                    (letrec ((x7771 (cdr l)))
                                                      (assq k x7771))))))))
                                    g7766)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7772
                                            (letrec ((x7773 (modulo x 2)))
                                              (= 0 x7773))))
                                    g7772)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7774
                                            (letrec ((x7776 (list? l)))
                                              (assert x7776)))
                                           (g7775
                                            (letrec ((x-cnd7777 (null? l)))
                                              (if x-cnd7777
                                                ""
                                                (letrec ((x7780
                                                          (letrec ((x7781
                                                                    (car l)))
                                                            (char->string
                                                             x7781)))
                                                         (x7778
                                                          (letrec ((x7779
                                                                    (cdr l)))
                                                            (list->string
                                                             x7779))))
                                                  (string-append
                                                   x7780
                                                   x7778))))))
                                    g7775)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7782
                                            (letrec ((x7785 (char? c1)))
                                              (assert x7785)))
                                           (g7783
                                            (letrec ((x7786 (char? c2)))
                                              (assert x7786)))
                                           (g7784
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7787
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7787))))
                                    g7784)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7788
                                            (letrec ((x7789
                                                      (letrec ((x7790
                                                                (letrec ((x7791
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7791))))
                                                        (cdr x7790))))
                                              (cdr x7789))))
                                    g7788)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7792
                                            (letrec ((x7795 (list? l)))
                                              (assert x7795)))
                                           (g7793
                                            (letrec ((x7796 (numer?)))
                                              (assert x7796)))
                                           (g7794
                                            (letrec ((x-cnd7797 (zero? k)))
                                              (if x-cnd7797
                                                x
                                                (letrec ((x7799 (cdr x))
                                                         (x7798 (- k 1)))
                                                  (list-tail x7799 x7798))))))
                                    g7794)))
                               (halt (lambda () (letrec ((g7800 '())) g7800)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7801
                                            (letrec ((x-cnd7802
                                                      (letrec ((x7803 #\a))
                                                        (char-ci>=? c x7803))))
                                              (if x-cnd7802
                                                (letrec ((x7804 #\z))
                                                  (char-ci<=? c x7804))
                                                #f))))
                                    g7801)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7805
                                            (letrec ((x7807 (number? x)))
                                              (assert x7807)))
                                           (g7806
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7808
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7809
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7809)))))
                                                g7808))))
                                    g7806)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7810
                                            (letrec ((val7146
                                                      (letrec ((x7811
                                                                (char->integer
                                                                 c)))
                                                        (= x7811 9))))
                                              (letrec ((g7812
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7813
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7813
                                                                       10))))
                                                            (letrec ((g7814
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7815
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7815
                                                                           32)))))
                                                              g7814)))))
                                                g7812))))
                                    g7810)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7816
                                            (letrec ((x7817
                                                      (letrec ((x7818 (car x)))
                                                        (cdr x7818))))
                                              (cdr x7817))))
                                    g7816)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7819
                                            (letrec ((x7821 (number? x)))
                                              (assert x7821)))
                                           (g7820 (> x 0)))
                                    g7820)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7822 #f)) g7822)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7823
                                            (letrec ((x7824 (cdr x)))
                                              (cdr x7824))))
                                    g7823)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7825
                                            (letrec ((x7827 (number? x)))
                                              (assert x7827)))
                                           (g7826
                                            (letrec ((x-cnd7828 (< x 0)))
                                              (if x-cnd7828
                                                (ceiling x)
                                                (floor x)))))
                                    g7826)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7829
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7830
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7832
                                                                              (null?
                                                                               a))
                                                                             (x7831
                                                                              (null?
                                                                               b)))
                                                                      (and x7832
                                                                           x7831))))
                                                            (letrec ((g7833
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7836
                                                                                            (string?
                                                                                             a))
                                                                                           (x7835
                                                                                            (string?
                                                                                             b))
                                                                                           (x7834
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7836
                                                                                         x7835
                                                                                         x7834))))
                                                                          (letrec ((g7837
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7845
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7844
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7841
                                                                                                          (letrec ((x7843
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7842
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7843
                                                                                                             x7842)))
                                                                                                         (x7838
                                                                                                          (letrec ((x7840
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7839
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7840
                                                                                                             x7839))))
                                                                                                  (and x7845
                                                                                                       x7844
                                                                                                       x7841
                                                                                                       x7838))))
                                                                                        (letrec ((g7846
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7865
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7864
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7847
                                                                                                              (letrec ((x7861
                                                                                                                        (letrec ((x7862
                                                                                                                                  (letrec ((x7863
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7863))))
                                                                                                                          (x7862)))
                                                                                                                       (x7848
                                                                                                                        (letrec ((x7859
                                                                                                                                  (letrec ((x7860
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7860
                                                                                                                                     n)))
                                                                                                                                 (x7849
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7850
                                                                                                                                                        (letrec ((x7857
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7851
                                                                                                                                                                  (letrec ((x7854
                                                                                                                                                                            (letrec ((x7856
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7855
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7856
                                                                                                                                                                               x7855)))
                                                                                                                                                                           (x7852
                                                                                                                                                                            (letrec ((x7853
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7853))))
                                                                                                                                                                    (and x7854
                                                                                                                                                                         x7852))))
                                                                                                                                                          (or x7857
                                                                                                                                                              x7851))))
                                                                                                                                                g7850))))
                                                                                                                                    (letrec ((g7858
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7858))))
                                                                                                                          (and x7859
                                                                                                                               x7849))))
                                                                                                                (let x7861 x7848))))
                                                                                                      (and x7865
                                                                                                           x7864
                                                                                                           x7847)))))
                                                                                          g7846)))))
                                                                            g7837)))))
                                                              g7833)))))
                                                g7830))))
                                    g7829)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7866
                                            (letrec ((x7867
                                                      (letrec ((x7868
                                                                (letrec ((x7869
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7869))))
                                                        (car x7868))))
                                              (cdr x7867))))
                                    g7866)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7870
                                            (letrec ((x7871
                                                      (letrec ((x7872
                                                                (letrec ((x7873
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7873))))
                                                        (car x7872))))
                                              (car x7871))))
                                    g7870)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7874 (eq? x y))) g7874)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7875
                                            (letrec ((x7877 (number? x)))
                                              (assert x7877)))
                                           (g7876
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7878
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7879
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7879)))))
                                                g7878))))
                                    g7876)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7880
                                            (letrec ((x7883
                                                      (string? filename)))
                                              (assert x7883)))
                                           (g7881
                                            (letrec ((x7884 (procedure? proc)))
                                              (assert x7884)))
                                           (g7882
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7885
                                                        (close-input-port
                                                         input-port))
                                                       (g7886 res))
                                                g7886))))
                                    g7882)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7887 (cons x '()))) g7887)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7888
                                            (letrec ((x7891 (char? c1)))
                                              (assert x7891)))
                                           (g7889
                                            (letrec ((x7892 (char? c2)))
                                              (assert x7892)))
                                           (g7890
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7893
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7893))))
                                    g7890)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7894
                                            (letrec ((x7895
                                                      (letrec ((x7896 (car x)))
                                                        (car x7896))))
                                              (cdr x7895))))
                                    g7894)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7897
                                            (letrec ((x7898
                                                      (letrec ((x7899
                                                                (letrec ((x7900
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7900))))
                                                        (car x7899))))
                                              (cdr x7898))))
                                    g7897)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7901
                                            (letrec ((x7902
                                                      (letrec ((x7903 (car x)))
                                                        (cdr x7903))))
                                              (car x7902))))
                                    g7901)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7904
                                            (letrec ((x7905
                                                      (letrec ((x7906 (cdr x)))
                                                        (car x7906))))
                                              (car x7905))))
                                    g7904)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7907
                                            (letrec ((x7910 (char? c1)))
                                              (assert x7910)))
                                           (g7908
                                            (letrec ((x7911 (char? c2)))
                                              (assert x7911)))
                                           (g7909
                                            (letrec ((x7912
                                                      (char-ci<=? c1 c2)))
                                              (not x7912))))
                                    g7909)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7913
                                            (letrec ((x7914
                                                      (letrec ((x7915
                                                                (letrec ((x7916
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7916))))
                                                        (car x7915))))
                                              (car x7914))))
                                    g7913)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7917
                                            (letrec ((x7919 (number? x)))
                                              (assert x7919)))
                                           (g7918 (< x 0)))
                                    g7918)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7920 (memq e l))) g7920)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7921
                                            (letrec ((x7922
                                                      (letrec ((x7923 (car x)))
                                                        (car x7923))))
                                              (car x7922))))
                                    g7921)))
                               (debug
                                (lambda (e) (letrec ((g7924 '())) g7924)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7925
                                            (letrec ((x7927 (list? l)))
                                              (assert x7927)))
                                           (g7926
                                            (letrec ((x-cnd7928 (null? l)))
                                              (if x-cnd7928
                                                '()
                                                (letrec ((x7931
                                                          (letrec ((x7932
                                                                    (cdr l)))
                                                            (reverse x7932)))
                                                         (x7929
                                                          (letrec ((x7930
                                                                    (car l)))
                                                            (list x7930))))
                                                  (append x7931 x7929))))))
                                    g7926)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7933
                                            (letrec ((x7934
                                                      (letrec ((x7935
                                                                (letrec ((x7936
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7936))))
                                                        (car x7935))))
                                              (car x7934))))
                                    g7933)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7937
                                            (letrec ((x7938
                                                      (letrec ((x7939
                                                                (letrec ((x7940
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7940))))
                                                        (cdr x7939))))
                                              (cdr x7938))))
                                    g7937)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7941
                                            (letrec ((x7943 (number? x)))
                                              (assert x7943)))
                                           (g7942
                                            (letrec ((x7944 (modulo x 2)))
                                              (= 1 x7944))))
                                    g7942)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7945
                                            (letrec ((x7946
                                                      (letrec ((x7947
                                                                (letrec ((x7948
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7948))))
                                                        (car x7947))))
                                              (car x7946))))
                                    g7945)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7949
                                            (letrec ((x7952 (procedure? proc)))
                                              (assert x7952)))
                                           (g7950
                                            (letrec ((x7953 (list? args)))
                                              (assert x7953)))
                                           (g7951
                                            (if cnd
                                              (letrec ((g7954 (proc))) g7954)
                                              (if cnd
                                                (letrec ((g7955
                                                          (letrec ((x7956
                                                                    (car
                                                                     args)))
                                                            (proc x7956))))
                                                  g7955)
                                                (if cnd
                                                  (letrec ((g7957
                                                            (letrec ((x7959
                                                                      (car
                                                                       args))
                                                                     (x7958
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7959
                                                               x7958))))
                                                    g7957)
                                                  (if cnd
                                                    (letrec ((g7960
                                                              (letrec ((x7963
                                                                        (car
                                                                         args))
                                                                       (x7962
                                                                        (cadr
                                                                         args))
                                                                       (x7961
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7963
                                                                 x7962
                                                                 x7961))))
                                                      g7960)
                                                    (if cnd
                                                      (letrec ((g7964
                                                                (letrec ((x7968
                                                                          (car
                                                                           args))
                                                                         (x7967
                                                                          (cadr
                                                                           args))
                                                                         (x7966
                                                                          (caddr
                                                                           args))
                                                                         (x7965
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7968
                                                                   x7967
                                                                   x7966
                                                                   x7965))))
                                                        g7964)
                                                      (if cnd
                                                        (letrec ((g7969
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
                                                                               x7971))))
                                                                    (proc
                                                                     x7975
                                                                     x7974
                                                                     x7973
                                                                     x7972
                                                                     x7970))))
                                                          g7969)
                                                        (if cnd
                                                          (letrec ((g7976
                                                                    (letrec ((x7984
                                                                              (car
                                                                               args))
                                                                             (x7983
                                                                              (cadr
                                                                               args))
                                                                             (x7982
                                                                              (caddr
                                                                               args))
                                                                             (x7981
                                                                              (cadddr
                                                                               args))
                                                                             (x7979
                                                                              (letrec ((x7980
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7980)))
                                                                             (x7977
                                                                              (letrec ((x7978
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7978))))
                                                                      (proc
                                                                       x7984
                                                                       x7983
                                                                       x7982
                                                                       x7981
                                                                       x7979
                                                                       x7977))))
                                                            g7976)
                                                          (if cnd
                                                            (letrec ((g7985
                                                                      (letrec ((x7995
                                                                                (car
                                                                                 args))
                                                                               (x7994
                                                                                (cadr
                                                                                 args))
                                                                               (x7993
                                                                                (caddr
                                                                                 args))
                                                                               (x7992
                                                                                (cadddr
                                                                                 args))
                                                                               (x7990
                                                                                (letrec ((x7991
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7991)))
                                                                               (x7988
                                                                                (letrec ((x7989
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7989)))
                                                                               (x7986
                                                                                (letrec ((x7987
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7987))))
                                                                        (proc
                                                                         x7995
                                                                         x7994
                                                                         x7993
                                                                         x7992
                                                                         x7990
                                                                         x7988
                                                                         x7986))))
                                                              g7985)
                                                            (letrec ((g7996
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7996)))))))))))
                                    g7951)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7997
                                            (letrec ((x7999 (list? l)))
                                              (assert x7999)))
                                           (g7998
                                            (letrec ((x-cnd8000 (null? l)))
                                              (if x-cnd8000
                                                #f
                                                (letrec ((x-cnd8001
                                                          (letrec ((x8002
                                                                    (car l)))
                                                            (equal? x8002 e))))
                                                  (if x-cnd8001
                                                    l
                                                    (letrec ((x8003 (cdr l)))
                                                      (member e x8003))))))))
                                    g7998)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g8004
                                            (letrec ((x8005
                                                      (letrec ((x8006
                                                                (letrec ((x8007
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8007))))
                                                        (cdr x8006))))
                                              (cdr x8005))))
                                    g8004)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g8008
                                            (letrec ((x8009
                                                      (letrec ((x8010
                                                                (letrec ((x8011
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8011))))
                                                        (cdr x8010))))
                                              (car x8009))))
                                    g8008)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8012 (random 42))) g8012)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8013
                                            (letrec ((x8015 (number? x)))
                                              (assert x8015)))
                                           (g8014 (= x 0)))
                                    g8014)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8016
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8017
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8017))))
                                    g8016)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8018
                                            (letrec ((x8019 (cdr x)))
                                              (car x8019))))
                                    g8018)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8020
                                            (letrec ((val7156
                                                      (letrec ((x8023
                                                                (pair? l))
                                                               (x8021
                                                                (letrec ((x8022
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8022))))
                                                        (and x8023 x8021))))
                                              (letrec ((g8024
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8024))))
                                    g8020)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8025
                                            (letrec ((x8026
                                                      (letrec ((x8027
                                                                (letrec ((x8028
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8028))))
                                                        (cdr x8027))))
                                              (cdr x8026))))
                                    g8025)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8029
                                            (letrec ((x-cnd8030
                                                      (letrec ((x8031 #\0))
                                                        (char<=? x8031 c))))
                                              (if x-cnd8030
                                                (letrec ((x8032 #\9))
                                                  (char<=? c x8032))
                                                #f))))
                                    g8029)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8033
                                            (letrec ((x8035 (list? l)))
                                              (assert x8035)))
                                           (g8034
                                            (letrec ((x-cnd8036 (null? l)))
                                              (if x-cnd8036
                                                #f
                                                (letrec ((x-cnd8037
                                                          (letrec ((x8038
                                                                    (caar l)))
                                                            (eqv? x8038 k))))
                                                  (if x-cnd8037
                                                    (car l)
                                                    (letrec ((x8039 (cdr l)))
                                                      (assq k x8039))))))))
                                    g8034)))
                               (not
                                (lambda (x)
                                  (letrec ((g8040 (if x #f #t))) g8040)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8041 (append l1 l2))) g8041)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8042
                                            (letrec ((x8044 (list? l)))
                                              (assert x8044)))
                                           (g8043
                                            (letrec ((x-cnd8045 (null? l)))
                                              (if x-cnd8045
                                                #f
                                                (letrec ((x-cnd8046
                                                          (letrec ((x8047
                                                                    (car l)))
                                                            (eq? x8047 e))))
                                                  (if x-cnd8046
                                                    l
                                                    (letrec ((x8048 (cdr l)))
                                                      (memq e x8048))))))))
                                    g8043)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8049
                                            (letrec ((x8050
                                                      (letrec ((x8051
                                                                (letrec ((x8052
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8052))))
                                                        (cdr x8051))))
                                              (car x8050))))
                                    g8049)))
                               (length
                                (lambda (l)
                                  (letrec ((g8053
                                            (letrec ((x8055 (list? l)))
                                              (assert x8055)))
                                           (g8054
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8056
                                                                  (letrec ((x-cnd8057
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8057
                                                                      0
                                                                      (letrec ((x8058
                                                                                (letrec ((x8059
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8059))))
                                                                        (+
                                                                         1
                                                                         x8058))))))
                                                          g8056))))
                                              (letrec ((g8060 (rec l)))
                                                g8060))))
                                    g8054)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8061
                                            (letrec ((x8064 (char? c1)))
                                              (assert x8064)))
                                           (g8062
                                            (letrec ((x8065 (char? c2)))
                                              (assert x8065)))
                                           (g8063
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8066
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8066))))
                                    g8063)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8067
                                            (letrec ((x8068 (string<=? s1 s2)))
                                              (not x8068))))
                                    g8067)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8069
                                            (letrec ((x8070
                                                      (letrec ((x8071 (cdr x)))
                                                        (car x8071))))
                                              (cdr x8070))))
                                    g8069)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8072
                                            (letrec ((x8074 (list? l)))
                                              (assert x8074)))
                                           (g8073
                                            (letrec ((x-cnd8075 (null? l)))
                                              (if x-cnd8075
                                                #f
                                                (letrec ((x-cnd8076
                                                          (letrec ((x8077
                                                                    (caar l)))
                                                            (equal? x8077 k))))
                                                  (if x-cnd8076
                                                    (car l)
                                                    (letrec ((x8078 (cdr l)))
                                                      (assoc k x8078))))))))
                                    g8073)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8079
                                            (letrec ((x8080 (car x)))
                                              (car x8080))))
                                    g8079)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8081
                                            (letrec ((x8084 (char? c1)))
                                              (assert x8084)))
                                           (g8082
                                            (letrec ((x8085 (char? c2)))
                                              (assert x8085)))
                                           (g8083
                                            (letrec ((x8086 (char<=? c1 c2)))
                                              (not x8086))))
                                    g8083)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8087
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8088
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8088))))
                                    g8087)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8089
                                            (letrec ((x8092 (procedure? f)))
                                              (assert x8092)))
                                           (g8090
                                            (letrec ((x8093 (list? l)))
                                              (assert x8093)))
                                           (g8091
                                            (letrec ((x-cnd8094 (null? l)))
                                              (if x-cnd8094
                                                #t
                                                (letrec ((x-cnd8095 (pair? l)))
                                                  (if x-cnd8095
                                                    (letrec ((g8096
                                                              (letrec ((x8098
                                                                        (car
                                                                         l)))
                                                                (f x8098)))
                                                             (g8097
                                                              (letrec ((x8099
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8099))))
                                                      g8097)
                                                    '()))))))
                                    g8091)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8100
                                            (letrec ((x8102 (number? x)))
                                              (assert x8102)))
                                           (g8101
                                            (letrec ((x-cnd8103 (< x 0)))
                                              (if x-cnd8103 (- 0 x) x))))
                                    g8101)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8104
                                            (letrec ((x8107 (char? c1)))
                                              (assert x8107)))
                                           (g8105
                                            (letrec ((x8108 (char? c2)))
                                              (assert x8108)))
                                           (g8106
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8109
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8109))))
                                    g8106)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8110
                                            (letrec ((x8111
                                                      (letrec ((x8112
                                                                (letrec ((x8113
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8113))))
                                                        (cdr x8112))))
                                              (car x8111))))
                                    g8110)))
                               (newline
                                (lambda () (letrec ((g8114 #f)) g8114)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8115
                                            (letrec ((x8117
                                                      (letrec ((x8118 (* m n)))
                                                        (abs x8118)))
                                                     (x8116 (gcd m n)))
                                              (/ x8117 x8116))))
                                    g8115)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8119
                                            (letrec ((x8121 (number? x)))
                                              (assert x8121)))
                                           (g8120
                                            (letrec ((x8122 (<= x y)))
                                              (not x8122))))
                                    g8120)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8123
                                            (letrec ((x8127 (list? l)))
                                              (assert x8127)))
                                           (g8124
                                            (letrec ((x8128 (number? index)))
                                              (assert x8128)))
                                           (g8125
                                            (letrec ((x8129
                                                      (letrec ((x8130
                                                                (length l)))
                                                        (< index x8130))))
                                              (assert x8129)))
                                           (g8126
                                            (letrec ((x-cnd8131 (= index 0)))
                                              (if x-cnd8131
                                                (car l)
                                                (letrec ((x8133 (cdr l))
                                                         (x8132 (- index 1)))
                                                  (list-ref x8133 x8132))))))
                                    g8126)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8134
                                            (letrec ((x-cnd8135 (= b 0)))
                                              (if x-cnd8135
                                                a
                                                (letrec ((x8136 (modulo a b)))
                                                  (gcd b x8136))))))
                                    g8134))))
                        (letrec ((g8137
                                  (letrec ((g8138
                                            (letrec ((lock
                                                      (lambda (st)
                                                        (letrec ((g8139 1))
                                                          g8139)))
                                                     (unlock
                                                      (lambda (st)
                                                        (letrec ((g8140 0))
                                                          g8140)))
                                                     (f
                                                      (lambda (n st)
                                                        (letrec ((g8141
                                                                  (letrec ((x-cnd8142
                                                                            (>
                                                                             n
                                                                             0)))
                                                                    (if x-cnd8142
                                                                      (lock st)
                                                                      st))))
                                                          g8141)))
                                                     (g
                                                      (lambda (n st)
                                                        (letrec ((g8143
                                                                  (letrec ((x-cnd8144
                                                                            (>
                                                                             n
                                                                             0)))
                                                                    (if x-cnd8144
                                                                      (unlock
                                                                       st)
                                                                      st))))
                                                          g8143)))
                                                     (main
                                                      (lambda (n)
                                                        (letrec ((g8145
                                                                  (letrec ((x8146
                                                                            (f
                                                                             n
                                                                             0)))
                                                                    (g
                                                                     n
                                                                     x8146))))
                                                          g8145))))
                                              (letrec ((g8147
                                                        (letrec ((g8148
                                                                  (letrec ((g8149
                                                                            (letrec ((x8151
                                                                                      ((lambda (j7230
                                                                                                k7231
                                                                                                f7232)
                                                                                         (lambda (g7229)
                                                                                           ((lambda (g7236
                                                                                                     g7237
                                                                                                     g7238)
                                                                                              (if ((lambda (v7235)
                                                                                                     (eq?
                                                                                                      0
                                                                                                      v7235))
                                                                                                   g7238)
                                                                                                g7238
                                                                                                (blame
                                                                                                 g7236
                                                                                                 '(lambda (v7235)
                                                                                                    (eq?
                                                                                                     0
                                                                                                     v7235)))))
                                                                                            j7230
                                                                                            k7231
                                                                                            (f7232
                                                                                             (integer?/c
                                                                                              j7230
                                                                                              k7231
                                                                                              g7229)))))
                                                                                       'module
                                                                                       'importer
                                                                                       main))
                                                                                     (x8150
                                                                                      (input)))
                                                                              (x8151
                                                                               x8150))))
                                                                    g8149)))
                                                          g8148)))
                                                g8147))))
                                    g8138)))
                          g8137))))
              g7250)))
    g7249))
