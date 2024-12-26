(letrec ((any? (lambda (v) (letrec ((g7233 #t)) g7233)))
         (meta (lambda (v) (letrec ((g7234 v)) g7234)))
         (member
          (lambda (v lst)
            (letrec ((g7235
                      (letrec ((g7236
                                (letrec ((x-e7237 lst))
                                  (match
                                   x-e7237
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7238 (eq? v v1)))
                                       (if x-cnd7238 #t (member v vs)))))))))
                        g7236)))
              g7235)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7239 (lambda (v) (letrec ((g7240 v)) g7240)))) g7239)))
         (nonzero?
          (lambda (v)
            (letrec ((g7241 (letrec ((x7242 (= v 0))) (not x7242)))) g7241))))
  (letrec ((g7243
            (letrec ((g7244
                      (letrec ((real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7245
                                            (letrec ((x-cnd7246 (real? g7162)))
                                              (if x-cnd7246
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7245)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7247
                                            (letrec ((x-cnd7248
                                                      (boolean? g7165)))
                                              (if x-cnd7248
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7247)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7249
                                            (letrec ((x-cnd7250
                                                      (number? g7168)))
                                              (if x-cnd7250
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7249)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7251
                                            (letrec ((x-cnd7252
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7252
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7251)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7253
                                            (letrec ((x-cnd7254
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7254
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7253)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7255
                                            (letrec ((x-cnd7256 (pair? g7177)))
                                              (if x-cnd7256
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7255)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7257
                                            (letrec ((x-cnd7258 (pair? g7180)))
                                              (if x-cnd7258
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7257)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7259
                                            (letrec ((x-cnd7260
                                                      (integer? g7183)))
                                              (if x-cnd7260
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7259)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7261
                                            (lambda (k j v)
                                              (letrec ((g7262
                                                        (letrec ((x-cnd7263
                                                                  (c1 k j v)))
                                                          (if x-cnd7263
                                                            (c2 k j v)
                                                            #f))))
                                                g7262))))
                                    g7261)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7264
                                            (lambda (k j v)
                                              (letrec ((g7265
                                                        (letrec ((x-cnd7266
                                                                  (null? v)))
                                                          (if x-cnd7266
                                                            '()
                                                            (letrec ((x7270
                                                                      (letrec ((x7271
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7271)))
                                                                     (x7267
                                                                      (letrec ((x7269
                                                                                (list-of
                                                                                 contract))
                                                                               (x7268
                                                                                (cdr
                                                                                 v)))
                                                                        (x7269
                                                                         k
                                                                         j
                                                                         x7268))))
                                                              (cons
                                                               x7270
                                                               x7267))))))
                                                g7265))))
                                    g7264)))
                               (any? (lambda (v) (letrec ((g7272 #t)) g7272)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7273
                                            (letrec ((x7274 (= v 0)))
                                              (not x7274))))
                                    g7273)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7275
                                            (letrec ((x-cnd7276
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7276
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7275)))
                               (meta (lambda (v) (letrec ((g7277 v)) g7277)))
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
                                (lambda (cnd) (letrec ((g7278 #t)) g7278)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7279
                                            (letrec ((x7280
                                                      (letrec ((x7281 (cdr x)))
                                                        (cdr x7281))))
                                              (cdr x7280))))
                                    g7279)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7282
                                            (letrec ((x7285 (procedure? f)))
                                              (assert x7285)))
                                           (g7283
                                            (letrec ((x7286 (list? l)))
                                              (assert x7286)))
                                           (g7284
                                            (letrec ((x-cnd7287 (null? l)))
                                              (if x-cnd7287
                                                '()
                                                (letrec ((x7290
                                                          (letrec ((x7291
                                                                    (car l)))
                                                            (f x7291)))
                                                         (x7288
                                                          (letrec ((x7289
                                                                    (cdr l)))
                                                            (map f x7289))))
                                                  (cons x7290 x7288))))))
                                    g7284)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7292
                                            (letrec ((x7293 (car x)))
                                              (cdr x7293))))
                                    g7292)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7294
                                            (letrec ((x7295
                                                      (letrec ((x7296
                                                                (letrec ((x7297
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7297))))
                                                        (cdr x7296))))
                                              (car x7295))))
                                    g7294)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7298
                                            (letrec ((x7299
                                                      (letrec ((x7300
                                                                (letrec ((x7301
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7301))))
                                                        (car x7300))))
                                              (cdr x7299))))
                                    g7298)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7302
                                            (letrec ((x7305
                                                      (string? filename)))
                                              (assert x7305)))
                                           (g7303
                                            (letrec ((x7306 (procedure? proc)))
                                              (assert x7306)))
                                           (g7304
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7307
                                                        (close-output-port
                                                         output-port))
                                                       (g7308 res))
                                                g7308))))
                                    g7304)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7309
                                            (letrec ((x7310
                                                      (letrec ((x7311 (cdr x)))
                                                        (cdr x7311))))
                                              (car x7310))))
                                    g7309)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7312
                                            (letrec ((x7313
                                                      (letrec ((x7314
                                                                (letrec ((x7315
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7315))))
                                                        (car x7314))))
                                              (cdr x7313))))
                                    g7312)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7316
                                            (letrec ((x7318 (list? l)))
                                              (assert x7318)))
                                           (g7317
                                            (letrec ((x-cnd7319 (null? l)))
                                              (if x-cnd7319
                                                #f
                                                (letrec ((x-cnd7320
                                                          (letrec ((x7321
                                                                    (caar l)))
                                                            (eq? x7321 k))))
                                                  (if x-cnd7320
                                                    (car l)
                                                    (letrec ((x7322 (cdr l)))
                                                      (assq k x7322))))))))
                                    g7317)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7323
                                            (letrec ((x7324 (modulo x 2)))
                                              (= 0 x7324))))
                                    g7323)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7325
                                            (letrec ((x7327 (list? l)))
                                              (assert x7327)))
                                           (g7326
                                            (letrec ((x-cnd7328 (null? l)))
                                              (if x-cnd7328
                                                ""
                                                (letrec ((x7331
                                                          (letrec ((x7332
                                                                    (car l)))
                                                            (char->string
                                                             x7332)))
                                                         (x7329
                                                          (letrec ((x7330
                                                                    (cdr l)))
                                                            (list->string
                                                             x7330))))
                                                  (string-append
                                                   x7331
                                                   x7329))))))
                                    g7326)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7333
                                            (letrec ((x7336 (char? c1)))
                                              (assert x7336)))
                                           (g7334
                                            (letrec ((x7337 (char? c2)))
                                              (assert x7337)))
                                           (g7335
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7338
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7338))))
                                    g7335)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7339
                                            (letrec ((x7340
                                                      (letrec ((x7341
                                                                (letrec ((x7342
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7342))))
                                                        (cdr x7341))))
                                              (cdr x7340))))
                                    g7339)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7343
                                            (letrec ((x7346 (list? l)))
                                              (assert x7346)))
                                           (g7344
                                            (letrec ((x7347 (numer?)))
                                              (assert x7347)))
                                           (g7345
                                            (letrec ((x-cnd7348 (zero? k)))
                                              (if x-cnd7348
                                                x
                                                (letrec ((x7350 (cdr x))
                                                         (x7349 (- k 1)))
                                                  (list-tail x7350 x7349))))))
                                    g7345)))
                               (halt (lambda () (letrec ((g7351 '())) g7351)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7352
                                            (letrec ((x-cnd7353
                                                      (letrec ((x7354 #\a))
                                                        (char-ci>=? c x7354))))
                                              (if x-cnd7353
                                                (letrec ((x7355 #\z))
                                                  (char-ci<=? c x7355))
                                                #f))))
                                    g7352)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7356
                                            (letrec ((x7358 (number? x)))
                                              (assert x7358)))
                                           (g7357
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7359
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7360
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7360)))))
                                                g7359))))
                                    g7357)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7361
                                            (letrec ((val7146
                                                      (letrec ((x7362
                                                                (char->integer
                                                                 c)))
                                                        (= x7362 9))))
                                              (letrec ((g7363
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7364
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7364
                                                                       10))))
                                                            (letrec ((g7365
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7366
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7366
                                                                           32)))))
                                                              g7365)))))
                                                g7363))))
                                    g7361)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7367
                                            (letrec ((x7368
                                                      (letrec ((x7369 (car x)))
                                                        (cdr x7369))))
                                              (cdr x7368))))
                                    g7367)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7370
                                            (letrec ((x7372 (number? x)))
                                              (assert x7372)))
                                           (g7371 (> x 0)))
                                    g7371)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7373 #f)) g7373)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7374
                                            (letrec ((x7375 (cdr x)))
                                              (cdr x7375))))
                                    g7374)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7376
                                            (letrec ((x7378 (number? x)))
                                              (assert x7378)))
                                           (g7377
                                            (letrec ((x-cnd7379 (< x 0)))
                                              (if x-cnd7379
                                                (ceiling x)
                                                (floor x)))))
                                    g7377)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7380
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7381
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7383
                                                                              (null?
                                                                               a))
                                                                             (x7382
                                                                              (null?
                                                                               b)))
                                                                      (and x7383
                                                                           x7382))))
                                                            (letrec ((g7384
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7387
                                                                                            (string?
                                                                                             a))
                                                                                           (x7386
                                                                                            (string?
                                                                                             b))
                                                                                           (x7385
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7387
                                                                                         x7386
                                                                                         x7385))))
                                                                          (letrec ((g7388
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7396
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7395
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7392
                                                                                                          (letrec ((x7394
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7393
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7394
                                                                                                             x7393)))
                                                                                                         (x7389
                                                                                                          (letrec ((x7391
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7390
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7391
                                                                                                             x7390))))
                                                                                                  (and x7396
                                                                                                       x7395
                                                                                                       x7392
                                                                                                       x7389))))
                                                                                        (letrec ((g7397
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7416
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7415
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7398
                                                                                                              (letrec ((x7412
                                                                                                                        (letrec ((x7413
                                                                                                                                  (letrec ((x7414
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7414))))
                                                                                                                          (x7413)))
                                                                                                                       (x7399
                                                                                                                        (letrec ((x7410
                                                                                                                                  (letrec ((x7411
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7411
                                                                                                                                     n)))
                                                                                                                                 (x7400
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7401
                                                                                                                                                        (letrec ((x7408
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7402
                                                                                                                                                                  (letrec ((x7405
                                                                                                                                                                            (letrec ((x7407
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7406
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7407
                                                                                                                                                                               x7406)))
                                                                                                                                                                           (x7403
                                                                                                                                                                            (letrec ((x7404
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7404))))
                                                                                                                                                                    (and x7405
                                                                                                                                                                         x7403))))
                                                                                                                                                          (or x7408
                                                                                                                                                              x7402))))
                                                                                                                                                g7401))))
                                                                                                                                    (letrec ((g7409
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7409))))
                                                                                                                          (and x7410
                                                                                                                               x7400))))
                                                                                                                (let x7412 x7399))))
                                                                                                      (and x7416
                                                                                                           x7415
                                                                                                           x7398)))))
                                                                                          g7397)))))
                                                                            g7388)))))
                                                              g7384)))))
                                                g7381))))
                                    g7380)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7417
                                            (letrec ((x7418
                                                      (letrec ((x7419
                                                                (letrec ((x7420
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7420))))
                                                        (car x7419))))
                                              (cdr x7418))))
                                    g7417)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7421
                                            (letrec ((x7422
                                                      (letrec ((x7423
                                                                (letrec ((x7424
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7424))))
                                                        (car x7423))))
                                              (car x7422))))
                                    g7421)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7425 (eq? x y))) g7425)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7426
                                            (letrec ((x7428 (number? x)))
                                              (assert x7428)))
                                           (g7427
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7429
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7430
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7430)))))
                                                g7429))))
                                    g7427)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7431
                                            (letrec ((x7434
                                                      (string? filename)))
                                              (assert x7434)))
                                           (g7432
                                            (letrec ((x7435 (procedure? proc)))
                                              (assert x7435)))
                                           (g7433
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7436
                                                        (close-input-port
                                                         input-port))
                                                       (g7437 res))
                                                g7437))))
                                    g7433)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7438 (cons x '()))) g7438)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7439
                                            (letrec ((x7442 (char? c1)))
                                              (assert x7442)))
                                           (g7440
                                            (letrec ((x7443 (char? c2)))
                                              (assert x7443)))
                                           (g7441
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7444
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7444))))
                                    g7441)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7445
                                            (letrec ((x7446
                                                      (letrec ((x7447 (car x)))
                                                        (car x7447))))
                                              (cdr x7446))))
                                    g7445)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7448
                                            (letrec ((x7449
                                                      (letrec ((x7450
                                                                (letrec ((x7451
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7451))))
                                                        (car x7450))))
                                              (cdr x7449))))
                                    g7448)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7452
                                            (letrec ((x7453
                                                      (letrec ((x7454 (car x)))
                                                        (cdr x7454))))
                                              (car x7453))))
                                    g7452)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7455
                                            (letrec ((x7456
                                                      (letrec ((x7457 (cdr x)))
                                                        (car x7457))))
                                              (car x7456))))
                                    g7455)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7458
                                            (letrec ((x7461 (char? c1)))
                                              (assert x7461)))
                                           (g7459
                                            (letrec ((x7462 (char? c2)))
                                              (assert x7462)))
                                           (g7460
                                            (letrec ((x7463
                                                      (char-ci<=? c1 c2)))
                                              (not x7463))))
                                    g7460)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7464
                                            (letrec ((x7465
                                                      (letrec ((x7466
                                                                (letrec ((x7467
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7467))))
                                                        (car x7466))))
                                              (car x7465))))
                                    g7464)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7468
                                            (letrec ((x7470 (number? x)))
                                              (assert x7470)))
                                           (g7469 (< x 0)))
                                    g7469)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7471 (memq e l))) g7471)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7472
                                            (letrec ((x7473
                                                      (letrec ((x7474 (car x)))
                                                        (car x7474))))
                                              (car x7473))))
                                    g7472)))
                               (debug
                                (lambda (e) (letrec ((g7475 '())) g7475)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7476
                                            (letrec ((x7478 (list? l)))
                                              (assert x7478)))
                                           (g7477
                                            (letrec ((x-cnd7479 (null? l)))
                                              (if x-cnd7479
                                                '()
                                                (letrec ((x7482
                                                          (letrec ((x7483
                                                                    (cdr l)))
                                                            (reverse x7483)))
                                                         (x7480
                                                          (letrec ((x7481
                                                                    (car l)))
                                                            (list x7481))))
                                                  (append x7482 x7480))))))
                                    g7477)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7484
                                            (letrec ((x7485
                                                      (letrec ((x7486
                                                                (letrec ((x7487
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7487))))
                                                        (car x7486))))
                                              (car x7485))))
                                    g7484)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7488
                                            (letrec ((x7489
                                                      (letrec ((x7490
                                                                (letrec ((x7491
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7491))))
                                                        (cdr x7490))))
                                              (cdr x7489))))
                                    g7488)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7492
                                            (letrec ((x7494 (number? x)))
                                              (assert x7494)))
                                           (g7493
                                            (letrec ((x7495 (modulo x 2)))
                                              (= 1 x7495))))
                                    g7493)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7496
                                            (letrec ((x7497
                                                      (letrec ((x7498
                                                                (letrec ((x7499
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7499))))
                                                        (car x7498))))
                                              (car x7497))))
                                    g7496)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7500
                                            (letrec ((x7503 (procedure? proc)))
                                              (assert x7503)))
                                           (g7501
                                            (letrec ((x7504 (list? args)))
                                              (assert x7504)))
                                           (g7502
                                            (if cnd
                                              (letrec ((g7505 (proc))) g7505)
                                              (if cnd
                                                (letrec ((g7506
                                                          (letrec ((x7507
                                                                    (car
                                                                     args)))
                                                            (proc x7507))))
                                                  g7506)
                                                (if cnd
                                                  (letrec ((g7508
                                                            (letrec ((x7510
                                                                      (car
                                                                       args))
                                                                     (x7509
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7510
                                                               x7509))))
                                                    g7508)
                                                  (if cnd
                                                    (letrec ((g7511
                                                              (letrec ((x7514
                                                                        (car
                                                                         args))
                                                                       (x7513
                                                                        (cadr
                                                                         args))
                                                                       (x7512
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7514
                                                                 x7513
                                                                 x7512))))
                                                      g7511)
                                                    (if cnd
                                                      (letrec ((g7515
                                                                (letrec ((x7519
                                                                          (car
                                                                           args))
                                                                         (x7518
                                                                          (cadr
                                                                           args))
                                                                         (x7517
                                                                          (caddr
                                                                           args))
                                                                         (x7516
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7519
                                                                   x7518
                                                                   x7517
                                                                   x7516))))
                                                        g7515)
                                                      (if cnd
                                                        (letrec ((g7520
                                                                  (letrec ((x7526
                                                                            (car
                                                                             args))
                                                                           (x7525
                                                                            (cadr
                                                                             args))
                                                                           (x7524
                                                                            (caddr
                                                                             args))
                                                                           (x7523
                                                                            (cadddr
                                                                             args))
                                                                           (x7521
                                                                            (letrec ((x7522
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7522))))
                                                                    (proc
                                                                     x7526
                                                                     x7525
                                                                     x7524
                                                                     x7523
                                                                     x7521))))
                                                          g7520)
                                                        (if cnd
                                                          (letrec ((g7527
                                                                    (letrec ((x7535
                                                                              (car
                                                                               args))
                                                                             (x7534
                                                                              (cadr
                                                                               args))
                                                                             (x7533
                                                                              (caddr
                                                                               args))
                                                                             (x7532
                                                                              (cadddr
                                                                               args))
                                                                             (x7530
                                                                              (letrec ((x7531
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7531)))
                                                                             (x7528
                                                                              (letrec ((x7529
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7529))))
                                                                      (proc
                                                                       x7535
                                                                       x7534
                                                                       x7533
                                                                       x7532
                                                                       x7530
                                                                       x7528))))
                                                            g7527)
                                                          (if cnd
                                                            (letrec ((g7536
                                                                      (letrec ((x7546
                                                                                (car
                                                                                 args))
                                                                               (x7545
                                                                                (cadr
                                                                                 args))
                                                                               (x7544
                                                                                (caddr
                                                                                 args))
                                                                               (x7543
                                                                                (cadddr
                                                                                 args))
                                                                               (x7541
                                                                                (letrec ((x7542
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7542)))
                                                                               (x7539
                                                                                (letrec ((x7540
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7540)))
                                                                               (x7537
                                                                                (letrec ((x7538
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7538))))
                                                                        (proc
                                                                         x7546
                                                                         x7545
                                                                         x7544
                                                                         x7543
                                                                         x7541
                                                                         x7539
                                                                         x7537))))
                                                              g7536)
                                                            (letrec ((g7547
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7547)))))))))))
                                    g7502)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7548
                                            (letrec ((x7550 (list? l)))
                                              (assert x7550)))
                                           (g7549
                                            (letrec ((x-cnd7551 (null? l)))
                                              (if x-cnd7551
                                                #f
                                                (letrec ((x-cnd7552
                                                          (letrec ((x7553
                                                                    (car l)))
                                                            (equal? x7553 e))))
                                                  (if x-cnd7552
                                                    l
                                                    (letrec ((x7554 (cdr l)))
                                                      (member e x7554))))))))
                                    g7549)))
                               (call-with-current-continuation call/cc)
                               (cddddr
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
                                              (cdr x7556))))
                                    g7555)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g7559
                                            (letrec ((x7560
                                                      (letrec ((x7561
                                                                (letrec ((x7562
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7562))))
                                                        (cdr x7561))))
                                              (car x7560))))
                                    g7559)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7563 (random 42))) g7563)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7564
                                            (letrec ((x7566 (number? x)))
                                              (assert x7566)))
                                           (g7565 (= x 0)))
                                    g7565)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7567
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7568
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7568))))
                                    g7567)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7569
                                            (letrec ((x7570 (cdr x)))
                                              (car x7570))))
                                    g7569)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7571
                                            (letrec ((val7156
                                                      (letrec ((x7574
                                                                (pair? l))
                                                               (x7572
                                                                (letrec ((x7573
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7573))))
                                                        (and x7574 x7572))))
                                              (letrec ((g7575
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7575))))
                                    g7571)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7576
                                            (letrec ((x7577
                                                      (letrec ((x7578
                                                                (letrec ((x7579
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7579))))
                                                        (cdr x7578))))
                                              (cdr x7577))))
                                    g7576)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7580
                                            (letrec ((x-cnd7581
                                                      (letrec ((x7582 #\0))
                                                        (char<=? x7582 c))))
                                              (if x-cnd7581
                                                (letrec ((x7583 #\9))
                                                  (char<=? c x7583))
                                                #f))))
                                    g7580)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7584
                                            (letrec ((x7586 (list? l)))
                                              (assert x7586)))
                                           (g7585
                                            (letrec ((x-cnd7587 (null? l)))
                                              (if x-cnd7587
                                                #f
                                                (letrec ((x-cnd7588
                                                          (letrec ((x7589
                                                                    (caar l)))
                                                            (eqv? x7589 k))))
                                                  (if x-cnd7588
                                                    (car l)
                                                    (letrec ((x7590 (cdr l)))
                                                      (assq k x7590))))))))
                                    g7585)))
                               (not
                                (lambda (x)
                                  (letrec ((g7591 (if x #f #t))) g7591)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7592 (append l1 l2))) g7592)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7593
                                            (letrec ((x7595 (list? l)))
                                              (assert x7595)))
                                           (g7594
                                            (letrec ((x-cnd7596 (null? l)))
                                              (if x-cnd7596
                                                #f
                                                (letrec ((x-cnd7597
                                                          (letrec ((x7598
                                                                    (car l)))
                                                            (eq? x7598 e))))
                                                  (if x-cnd7597
                                                    l
                                                    (letrec ((x7599 (cdr l)))
                                                      (memq e x7599))))))))
                                    g7594)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7600
                                            (letrec ((x7601
                                                      (letrec ((x7602
                                                                (letrec ((x7603
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7603))))
                                                        (cdr x7602))))
                                              (car x7601))))
                                    g7600)))
                               (length
                                (lambda (l)
                                  (letrec ((g7604
                                            (letrec ((x7606 (list? l)))
                                              (assert x7606)))
                                           (g7605
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7607
                                                                  (letrec ((x-cnd7608
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7608
                                                                      0
                                                                      (letrec ((x7609
                                                                                (letrec ((x7610
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7610))))
                                                                        (+
                                                                         1
                                                                         x7609))))))
                                                          g7607))))
                                              (letrec ((g7611 (rec l)))
                                                g7611))))
                                    g7605)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7612
                                            (letrec ((x7615 (char? c1)))
                                              (assert x7615)))
                                           (g7613
                                            (letrec ((x7616 (char? c2)))
                                              (assert x7616)))
                                           (g7614
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7617
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7617))))
                                    g7614)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7618
                                            (letrec ((x7619 (string<=? s1 s2)))
                                              (not x7619))))
                                    g7618)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7620
                                            (letrec ((x7621
                                                      (letrec ((x7622 (cdr x)))
                                                        (car x7622))))
                                              (cdr x7621))))
                                    g7620)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7623
                                            (letrec ((x7625 (list? l)))
                                              (assert x7625)))
                                           (g7624
                                            (letrec ((x-cnd7626 (null? l)))
                                              (if x-cnd7626
                                                #f
                                                (letrec ((x-cnd7627
                                                          (letrec ((x7628
                                                                    (caar l)))
                                                            (equal? x7628 k))))
                                                  (if x-cnd7627
                                                    (car l)
                                                    (letrec ((x7629 (cdr l)))
                                                      (assoc k x7629))))))))
                                    g7624)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7630
                                            (letrec ((x7631 (car x)))
                                              (car x7631))))
                                    g7630)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7632
                                            (letrec ((x7635 (char? c1)))
                                              (assert x7635)))
                                           (g7633
                                            (letrec ((x7636 (char? c2)))
                                              (assert x7636)))
                                           (g7634
                                            (letrec ((x7637 (char<=? c1 c2)))
                                              (not x7637))))
                                    g7634)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7638
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7639
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7639))))
                                    g7638)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7640
                                            (letrec ((x7643 (procedure? f)))
                                              (assert x7643)))
                                           (g7641
                                            (letrec ((x7644 (list? l)))
                                              (assert x7644)))
                                           (g7642
                                            (letrec ((x-cnd7645 (null? l)))
                                              (if x-cnd7645
                                                #t
                                                (letrec ((x-cnd7646 (pair? l)))
                                                  (if x-cnd7646
                                                    (letrec ((g7647
                                                              (letrec ((x7649
                                                                        (car
                                                                         l)))
                                                                (f x7649)))
                                                             (g7648
                                                              (letrec ((x7650
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7650))))
                                                      g7648)
                                                    '()))))))
                                    g7642)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7651
                                            (letrec ((x7653 (number? x)))
                                              (assert x7653)))
                                           (g7652
                                            (letrec ((x-cnd7654 (< x 0)))
                                              (if x-cnd7654 (- 0 x) x))))
                                    g7652)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7655
                                            (letrec ((x7658 (char? c1)))
                                              (assert x7658)))
                                           (g7656
                                            (letrec ((x7659 (char? c2)))
                                              (assert x7659)))
                                           (g7657
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7660
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7660))))
                                    g7657)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7661
                                            (letrec ((x7662
                                                      (letrec ((x7663
                                                                (letrec ((x7664
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7664))))
                                                        (cdr x7663))))
                                              (car x7662))))
                                    g7661)))
                               (newline
                                (lambda () (letrec ((g7665 #f)) g7665)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7666
                                            (letrec ((x7668
                                                      (letrec ((x7669 (* m n)))
                                                        (abs x7669)))
                                                     (x7667 (gcd m n)))
                                              (/ x7668 x7667))))
                                    g7666)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7670
                                            (letrec ((x7672 (number? x)))
                                              (assert x7672)))
                                           (g7671
                                            (letrec ((x7673 (<= x y)))
                                              (not x7673))))
                                    g7671)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7674
                                            (letrec ((x7678 (list? l)))
                                              (assert x7678)))
                                           (g7675
                                            (letrec ((x7679 (number? index)))
                                              (assert x7679)))
                                           (g7676
                                            (letrec ((x7680
                                                      (letrec ((x7681
                                                                (length l)))
                                                        (< index x7681))))
                                              (assert x7680)))
                                           (g7677
                                            (letrec ((x-cnd7682 (= index 0)))
                                              (if x-cnd7682
                                                (car l)
                                                (letrec ((x7684 (cdr l))
                                                         (x7683 (- index 1)))
                                                  (list-ref x7684 x7683))))))
                                    g7677)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7685
                                            (letrec ((x-cnd7686 (= b 0)))
                                              (if x-cnd7686
                                                a
                                                (letrec ((x7687 (modulo a b)))
                                                  (gcd b x7687))))))
                                    g7685)))
                               (real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7688
                                            (letrec ((x-cnd7689 (real? g7162)))
                                              (if x-cnd7689
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7688)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7690
                                            (letrec ((x-cnd7691
                                                      (boolean? g7165)))
                                              (if x-cnd7691
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7690)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7692
                                            (letrec ((x-cnd7693
                                                      (number? g7168)))
                                              (if x-cnd7693
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7692)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7694
                                            (letrec ((x-cnd7695
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7695
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7694)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7696
                                            (letrec ((x-cnd7697
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7697
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7696)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7698
                                            (letrec ((x-cnd7699 (pair? g7177)))
                                              (if x-cnd7699
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7698)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7700
                                            (letrec ((x-cnd7701 (pair? g7180)))
                                              (if x-cnd7701
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7700)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7702
                                            (letrec ((x-cnd7703
                                                      (integer? g7183)))
                                              (if x-cnd7703
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7702)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7704
                                            (lambda (k j v)
                                              (letrec ((g7705
                                                        (letrec ((x-cnd7706
                                                                  (c1 k j v)))
                                                          (if x-cnd7706
                                                            (c2 k j v)
                                                            #f))))
                                                g7705))))
                                    g7704)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7707
                                            (lambda (k j v)
                                              (letrec ((g7708
                                                        (letrec ((x-cnd7709
                                                                  (null? v)))
                                                          (if x-cnd7709
                                                            '()
                                                            (letrec ((x7713
                                                                      (letrec ((x7714
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7714)))
                                                                     (x7710
                                                                      (letrec ((x7712
                                                                                (list-of
                                                                                 contract))
                                                                               (x7711
                                                                                (cdr
                                                                                 v)))
                                                                        (x7712
                                                                         k
                                                                         j
                                                                         x7711))))
                                                              (cons
                                                               x7713
                                                               x7710))))))
                                                g7708))))
                                    g7707)))
                               (any? (lambda (v) (letrec ((g7715 #t)) g7715)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7716
                                            (letrec ((x7717 (= v 0)))
                                              (not x7717))))
                                    g7716)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7718
                                            (letrec ((x-cnd7719
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7719
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7718)))
                               (meta (lambda (v) (letrec ((g7720 v)) g7720)))
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
                                (lambda (cnd) (letrec ((g7721 #t)) g7721)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7722
                                            (letrec ((x7723
                                                      (letrec ((x7724 (cdr x)))
                                                        (cdr x7724))))
                                              (cdr x7723))))
                                    g7722)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7725
                                            (letrec ((x7728 (procedure? f)))
                                              (assert x7728)))
                                           (g7726
                                            (letrec ((x7729 (list? l)))
                                              (assert x7729)))
                                           (g7727
                                            (letrec ((x-cnd7730 (null? l)))
                                              (if x-cnd7730
                                                '()
                                                (letrec ((x7733
                                                          (letrec ((x7734
                                                                    (car l)))
                                                            (f x7734)))
                                                         (x7731
                                                          (letrec ((x7732
                                                                    (cdr l)))
                                                            (map f x7732))))
                                                  (cons x7733 x7731))))))
                                    g7727)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7735
                                            (letrec ((x7736 (car x)))
                                              (cdr x7736))))
                                    g7735)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7737
                                            (letrec ((x7738
                                                      (letrec ((x7739
                                                                (letrec ((x7740
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7740))))
                                                        (cdr x7739))))
                                              (car x7738))))
                                    g7737)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7741
                                            (letrec ((x7742
                                                      (letrec ((x7743
                                                                (letrec ((x7744
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7744))))
                                                        (car x7743))))
                                              (cdr x7742))))
                                    g7741)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7745
                                            (letrec ((x7748
                                                      (string? filename)))
                                              (assert x7748)))
                                           (g7746
                                            (letrec ((x7749 (procedure? proc)))
                                              (assert x7749)))
                                           (g7747
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7750
                                                        (close-output-port
                                                         output-port))
                                                       (g7751 res))
                                                g7751))))
                                    g7747)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7752
                                            (letrec ((x7753
                                                      (letrec ((x7754 (cdr x)))
                                                        (cdr x7754))))
                                              (car x7753))))
                                    g7752)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7755
                                            (letrec ((x7756
                                                      (letrec ((x7757
                                                                (letrec ((x7758
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7758))))
                                                        (car x7757))))
                                              (cdr x7756))))
                                    g7755)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7759
                                            (letrec ((x7761 (list? l)))
                                              (assert x7761)))
                                           (g7760
                                            (letrec ((x-cnd7762 (null? l)))
                                              (if x-cnd7762
                                                #f
                                                (letrec ((x-cnd7763
                                                          (letrec ((x7764
                                                                    (caar l)))
                                                            (eq? x7764 k))))
                                                  (if x-cnd7763
                                                    (car l)
                                                    (letrec ((x7765 (cdr l)))
                                                      (assq k x7765))))))))
                                    g7760)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7766
                                            (letrec ((x7767 (modulo x 2)))
                                              (= 0 x7767))))
                                    g7766)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7768
                                            (letrec ((x7770 (list? l)))
                                              (assert x7770)))
                                           (g7769
                                            (letrec ((x-cnd7771 (null? l)))
                                              (if x-cnd7771
                                                ""
                                                (letrec ((x7774
                                                          (letrec ((x7775
                                                                    (car l)))
                                                            (char->string
                                                             x7775)))
                                                         (x7772
                                                          (letrec ((x7773
                                                                    (cdr l)))
                                                            (list->string
                                                             x7773))))
                                                  (string-append
                                                   x7774
                                                   x7772))))))
                                    g7769)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7776
                                            (letrec ((x7779 (char? c1)))
                                              (assert x7779)))
                                           (g7777
                                            (letrec ((x7780 (char? c2)))
                                              (assert x7780)))
                                           (g7778
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7781
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7781))))
                                    g7778)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7782
                                            (letrec ((x7783
                                                      (letrec ((x7784
                                                                (letrec ((x7785
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7785))))
                                                        (cdr x7784))))
                                              (cdr x7783))))
                                    g7782)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7786
                                            (letrec ((x7789 (list? l)))
                                              (assert x7789)))
                                           (g7787
                                            (letrec ((x7790 (numer?)))
                                              (assert x7790)))
                                           (g7788
                                            (letrec ((x-cnd7791 (zero? k)))
                                              (if x-cnd7791
                                                x
                                                (letrec ((x7793 (cdr x))
                                                         (x7792 (- k 1)))
                                                  (list-tail x7793 x7792))))))
                                    g7788)))
                               (halt (lambda () (letrec ((g7794 '())) g7794)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7795
                                            (letrec ((x-cnd7796
                                                      (letrec ((x7797 #\a))
                                                        (char-ci>=? c x7797))))
                                              (if x-cnd7796
                                                (letrec ((x7798 #\z))
                                                  (char-ci<=? c x7798))
                                                #f))))
                                    g7795)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7799
                                            (letrec ((x7801 (number? x)))
                                              (assert x7801)))
                                           (g7800
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7802
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7803
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7803)))))
                                                g7802))))
                                    g7800)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7804
                                            (letrec ((val7146
                                                      (letrec ((x7805
                                                                (char->integer
                                                                 c)))
                                                        (= x7805 9))))
                                              (letrec ((g7806
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7807
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7807
                                                                       10))))
                                                            (letrec ((g7808
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7809
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7809
                                                                           32)))))
                                                              g7808)))))
                                                g7806))))
                                    g7804)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7810
                                            (letrec ((x7811
                                                      (letrec ((x7812 (car x)))
                                                        (cdr x7812))))
                                              (cdr x7811))))
                                    g7810)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7813
                                            (letrec ((x7815 (number? x)))
                                              (assert x7815)))
                                           (g7814 (> x 0)))
                                    g7814)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7816 #f)) g7816)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7817
                                            (letrec ((x7818 (cdr x)))
                                              (cdr x7818))))
                                    g7817)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7819
                                            (letrec ((x7821 (number? x)))
                                              (assert x7821)))
                                           (g7820
                                            (letrec ((x-cnd7822 (< x 0)))
                                              (if x-cnd7822
                                                (ceiling x)
                                                (floor x)))))
                                    g7820)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7823
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7824
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7826
                                                                              (null?
                                                                               a))
                                                                             (x7825
                                                                              (null?
                                                                               b)))
                                                                      (and x7826
                                                                           x7825))))
                                                            (letrec ((g7827
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7830
                                                                                            (string?
                                                                                             a))
                                                                                           (x7829
                                                                                            (string?
                                                                                             b))
                                                                                           (x7828
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7830
                                                                                         x7829
                                                                                         x7828))))
                                                                          (letrec ((g7831
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7839
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7838
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7835
                                                                                                          (letrec ((x7837
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7836
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7837
                                                                                                             x7836)))
                                                                                                         (x7832
                                                                                                          (letrec ((x7834
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7833
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7834
                                                                                                             x7833))))
                                                                                                  (and x7839
                                                                                                       x7838
                                                                                                       x7835
                                                                                                       x7832))))
                                                                                        (letrec ((g7840
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7859
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7858
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7841
                                                                                                              (letrec ((x7855
                                                                                                                        (letrec ((x7856
                                                                                                                                  (letrec ((x7857
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7857))))
                                                                                                                          (x7856)))
                                                                                                                       (x7842
                                                                                                                        (letrec ((x7853
                                                                                                                                  (letrec ((x7854
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7854
                                                                                                                                     n)))
                                                                                                                                 (x7843
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7844
                                                                                                                                                        (letrec ((x7851
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7845
                                                                                                                                                                  (letrec ((x7848
                                                                                                                                                                            (letrec ((x7850
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7849
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7850
                                                                                                                                                                               x7849)))
                                                                                                                                                                           (x7846
                                                                                                                                                                            (letrec ((x7847
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7847))))
                                                                                                                                                                    (and x7848
                                                                                                                                                                         x7846))))
                                                                                                                                                          (or x7851
                                                                                                                                                              x7845))))
                                                                                                                                                g7844))))
                                                                                                                                    (letrec ((g7852
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7852))))
                                                                                                                          (and x7853
                                                                                                                               x7843))))
                                                                                                                (let x7855 x7842))))
                                                                                                      (and x7859
                                                                                                           x7858
                                                                                                           x7841)))))
                                                                                          g7840)))))
                                                                            g7831)))))
                                                              g7827)))))
                                                g7824))))
                                    g7823)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7860
                                            (letrec ((x7861
                                                      (letrec ((x7862
                                                                (letrec ((x7863
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7863))))
                                                        (car x7862))))
                                              (cdr x7861))))
                                    g7860)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7864
                                            (letrec ((x7865
                                                      (letrec ((x7866
                                                                (letrec ((x7867
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7867))))
                                                        (car x7866))))
                                              (car x7865))))
                                    g7864)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7868 (eq? x y))) g7868)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7869
                                            (letrec ((x7871 (number? x)))
                                              (assert x7871)))
                                           (g7870
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7872
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7873
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7873)))))
                                                g7872))))
                                    g7870)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7874
                                            (letrec ((x7877
                                                      (string? filename)))
                                              (assert x7877)))
                                           (g7875
                                            (letrec ((x7878 (procedure? proc)))
                                              (assert x7878)))
                                           (g7876
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7879
                                                        (close-input-port
                                                         input-port))
                                                       (g7880 res))
                                                g7880))))
                                    g7876)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7881 (cons x '()))) g7881)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7882
                                            (letrec ((x7885 (char? c1)))
                                              (assert x7885)))
                                           (g7883
                                            (letrec ((x7886 (char? c2)))
                                              (assert x7886)))
                                           (g7884
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7887
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7887))))
                                    g7884)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7888
                                            (letrec ((x7889
                                                      (letrec ((x7890 (car x)))
                                                        (car x7890))))
                                              (cdr x7889))))
                                    g7888)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7891
                                            (letrec ((x7892
                                                      (letrec ((x7893
                                                                (letrec ((x7894
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7894))))
                                                        (car x7893))))
                                              (cdr x7892))))
                                    g7891)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7895
                                            (letrec ((x7896
                                                      (letrec ((x7897 (car x)))
                                                        (cdr x7897))))
                                              (car x7896))))
                                    g7895)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7898
                                            (letrec ((x7899
                                                      (letrec ((x7900 (cdr x)))
                                                        (car x7900))))
                                              (car x7899))))
                                    g7898)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7901
                                            (letrec ((x7904 (char? c1)))
                                              (assert x7904)))
                                           (g7902
                                            (letrec ((x7905 (char? c2)))
                                              (assert x7905)))
                                           (g7903
                                            (letrec ((x7906
                                                      (char-ci<=? c1 c2)))
                                              (not x7906))))
                                    g7903)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7907
                                            (letrec ((x7908
                                                      (letrec ((x7909
                                                                (letrec ((x7910
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7910))))
                                                        (car x7909))))
                                              (car x7908))))
                                    g7907)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7911
                                            (letrec ((x7913 (number? x)))
                                              (assert x7913)))
                                           (g7912 (< x 0)))
                                    g7912)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7914 (memq e l))) g7914)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7915
                                            (letrec ((x7916
                                                      (letrec ((x7917 (car x)))
                                                        (car x7917))))
                                              (car x7916))))
                                    g7915)))
                               (debug
                                (lambda (e) (letrec ((g7918 '())) g7918)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7919
                                            (letrec ((x7921 (list? l)))
                                              (assert x7921)))
                                           (g7920
                                            (letrec ((x-cnd7922 (null? l)))
                                              (if x-cnd7922
                                                '()
                                                (letrec ((x7925
                                                          (letrec ((x7926
                                                                    (cdr l)))
                                                            (reverse x7926)))
                                                         (x7923
                                                          (letrec ((x7924
                                                                    (car l)))
                                                            (list x7924))))
                                                  (append x7925 x7923))))))
                                    g7920)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7927
                                            (letrec ((x7928
                                                      (letrec ((x7929
                                                                (letrec ((x7930
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7930))))
                                                        (car x7929))))
                                              (car x7928))))
                                    g7927)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7931
                                            (letrec ((x7932
                                                      (letrec ((x7933
                                                                (letrec ((x7934
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7934))))
                                                        (cdr x7933))))
                                              (cdr x7932))))
                                    g7931)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7935
                                            (letrec ((x7937 (number? x)))
                                              (assert x7937)))
                                           (g7936
                                            (letrec ((x7938 (modulo x 2)))
                                              (= 1 x7938))))
                                    g7936)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7939
                                            (letrec ((x7940
                                                      (letrec ((x7941
                                                                (letrec ((x7942
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7942))))
                                                        (car x7941))))
                                              (car x7940))))
                                    g7939)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7943
                                            (letrec ((x7946 (procedure? proc)))
                                              (assert x7946)))
                                           (g7944
                                            (letrec ((x7947 (list? args)))
                                              (assert x7947)))
                                           (g7945
                                            (if cnd
                                              (letrec ((g7948 (proc))) g7948)
                                              (if cnd
                                                (letrec ((g7949
                                                          (letrec ((x7950
                                                                    (car
                                                                     args)))
                                                            (proc x7950))))
                                                  g7949)
                                                (if cnd
                                                  (letrec ((g7951
                                                            (letrec ((x7953
                                                                      (car
                                                                       args))
                                                                     (x7952
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7953
                                                               x7952))))
                                                    g7951)
                                                  (if cnd
                                                    (letrec ((g7954
                                                              (letrec ((x7957
                                                                        (car
                                                                         args))
                                                                       (x7956
                                                                        (cadr
                                                                         args))
                                                                       (x7955
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7957
                                                                 x7956
                                                                 x7955))))
                                                      g7954)
                                                    (if cnd
                                                      (letrec ((g7958
                                                                (letrec ((x7962
                                                                          (car
                                                                           args))
                                                                         (x7961
                                                                          (cadr
                                                                           args))
                                                                         (x7960
                                                                          (caddr
                                                                           args))
                                                                         (x7959
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7962
                                                                   x7961
                                                                   x7960
                                                                   x7959))))
                                                        g7958)
                                                      (if cnd
                                                        (letrec ((g7963
                                                                  (letrec ((x7969
                                                                            (car
                                                                             args))
                                                                           (x7968
                                                                            (cadr
                                                                             args))
                                                                           (x7967
                                                                            (caddr
                                                                             args))
                                                                           (x7966
                                                                            (cadddr
                                                                             args))
                                                                           (x7964
                                                                            (letrec ((x7965
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7965))))
                                                                    (proc
                                                                     x7969
                                                                     x7968
                                                                     x7967
                                                                     x7966
                                                                     x7964))))
                                                          g7963)
                                                        (if cnd
                                                          (letrec ((g7970
                                                                    (letrec ((x7978
                                                                              (car
                                                                               args))
                                                                             (x7977
                                                                              (cadr
                                                                               args))
                                                                             (x7976
                                                                              (caddr
                                                                               args))
                                                                             (x7975
                                                                              (cadddr
                                                                               args))
                                                                             (x7973
                                                                              (letrec ((x7974
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7974)))
                                                                             (x7971
                                                                              (letrec ((x7972
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7972))))
                                                                      (proc
                                                                       x7978
                                                                       x7977
                                                                       x7976
                                                                       x7975
                                                                       x7973
                                                                       x7971))))
                                                            g7970)
                                                          (if cnd
                                                            (letrec ((g7979
                                                                      (letrec ((x7989
                                                                                (car
                                                                                 args))
                                                                               (x7988
                                                                                (cadr
                                                                                 args))
                                                                               (x7987
                                                                                (caddr
                                                                                 args))
                                                                               (x7986
                                                                                (cadddr
                                                                                 args))
                                                                               (x7984
                                                                                (letrec ((x7985
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7985)))
                                                                               (x7982
                                                                                (letrec ((x7983
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7983)))
                                                                               (x7980
                                                                                (letrec ((x7981
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7981))))
                                                                        (proc
                                                                         x7989
                                                                         x7988
                                                                         x7987
                                                                         x7986
                                                                         x7984
                                                                         x7982
                                                                         x7980))))
                                                              g7979)
                                                            (letrec ((g7990
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7990)))))))))))
                                    g7945)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7991
                                            (letrec ((x7993 (list? l)))
                                              (assert x7993)))
                                           (g7992
                                            (letrec ((x-cnd7994 (null? l)))
                                              (if x-cnd7994
                                                #f
                                                (letrec ((x-cnd7995
                                                          (letrec ((x7996
                                                                    (car l)))
                                                            (equal? x7996 e))))
                                                  (if x-cnd7995
                                                    l
                                                    (letrec ((x7997 (cdr l)))
                                                      (member e x7997))))))))
                                    g7992)))
                               (call-with-current-continuation call/cc)
                               (cddddr
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
                                              (cdr x7999))))
                                    g7998)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g8002
                                            (letrec ((x8003
                                                      (letrec ((x8004
                                                                (letrec ((x8005
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8005))))
                                                        (cdr x8004))))
                                              (car x8003))))
                                    g8002)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8006 (random 42))) g8006)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8007
                                            (letrec ((x8009 (number? x)))
                                              (assert x8009)))
                                           (g8008 (= x 0)))
                                    g8008)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8010
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8011
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8011))))
                                    g8010)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8012
                                            (letrec ((x8013 (cdr x)))
                                              (car x8013))))
                                    g8012)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8014
                                            (letrec ((val7156
                                                      (letrec ((x8017
                                                                (pair? l))
                                                               (x8015
                                                                (letrec ((x8016
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8016))))
                                                        (and x8017 x8015))))
                                              (letrec ((g8018
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8018))))
                                    g8014)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8019
                                            (letrec ((x8020
                                                      (letrec ((x8021
                                                                (letrec ((x8022
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8022))))
                                                        (cdr x8021))))
                                              (cdr x8020))))
                                    g8019)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8023
                                            (letrec ((x-cnd8024
                                                      (letrec ((x8025 #\0))
                                                        (char<=? x8025 c))))
                                              (if x-cnd8024
                                                (letrec ((x8026 #\9))
                                                  (char<=? c x8026))
                                                #f))))
                                    g8023)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8027
                                            (letrec ((x8029 (list? l)))
                                              (assert x8029)))
                                           (g8028
                                            (letrec ((x-cnd8030 (null? l)))
                                              (if x-cnd8030
                                                #f
                                                (letrec ((x-cnd8031
                                                          (letrec ((x8032
                                                                    (caar l)))
                                                            (eqv? x8032 k))))
                                                  (if x-cnd8031
                                                    (car l)
                                                    (letrec ((x8033 (cdr l)))
                                                      (assq k x8033))))))))
                                    g8028)))
                               (not
                                (lambda (x)
                                  (letrec ((g8034 (if x #f #t))) g8034)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8035 (append l1 l2))) g8035)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8036
                                            (letrec ((x8038 (list? l)))
                                              (assert x8038)))
                                           (g8037
                                            (letrec ((x-cnd8039 (null? l)))
                                              (if x-cnd8039
                                                #f
                                                (letrec ((x-cnd8040
                                                          (letrec ((x8041
                                                                    (car l)))
                                                            (eq? x8041 e))))
                                                  (if x-cnd8040
                                                    l
                                                    (letrec ((x8042 (cdr l)))
                                                      (memq e x8042))))))))
                                    g8037)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8043
                                            (letrec ((x8044
                                                      (letrec ((x8045
                                                                (letrec ((x8046
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8046))))
                                                        (cdr x8045))))
                                              (car x8044))))
                                    g8043)))
                               (length
                                (lambda (l)
                                  (letrec ((g8047
                                            (letrec ((x8049 (list? l)))
                                              (assert x8049)))
                                           (g8048
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8050
                                                                  (letrec ((x-cnd8051
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8051
                                                                      0
                                                                      (letrec ((x8052
                                                                                (letrec ((x8053
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8053))))
                                                                        (+
                                                                         1
                                                                         x8052))))))
                                                          g8050))))
                                              (letrec ((g8054 (rec l)))
                                                g8054))))
                                    g8048)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8055
                                            (letrec ((x8058 (char? c1)))
                                              (assert x8058)))
                                           (g8056
                                            (letrec ((x8059 (char? c2)))
                                              (assert x8059)))
                                           (g8057
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8060
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8060))))
                                    g8057)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8061
                                            (letrec ((x8062 (string<=? s1 s2)))
                                              (not x8062))))
                                    g8061)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8063
                                            (letrec ((x8064
                                                      (letrec ((x8065 (cdr x)))
                                                        (car x8065))))
                                              (cdr x8064))))
                                    g8063)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8066
                                            (letrec ((x8068 (list? l)))
                                              (assert x8068)))
                                           (g8067
                                            (letrec ((x-cnd8069 (null? l)))
                                              (if x-cnd8069
                                                #f
                                                (letrec ((x-cnd8070
                                                          (letrec ((x8071
                                                                    (caar l)))
                                                            (equal? x8071 k))))
                                                  (if x-cnd8070
                                                    (car l)
                                                    (letrec ((x8072 (cdr l)))
                                                      (assoc k x8072))))))))
                                    g8067)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8073
                                            (letrec ((x8074 (car x)))
                                              (car x8074))))
                                    g8073)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8075
                                            (letrec ((x8078 (char? c1)))
                                              (assert x8078)))
                                           (g8076
                                            (letrec ((x8079 (char? c2)))
                                              (assert x8079)))
                                           (g8077
                                            (letrec ((x8080 (char<=? c1 c2)))
                                              (not x8080))))
                                    g8077)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8081
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8082
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8082))))
                                    g8081)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8083
                                            (letrec ((x8086 (procedure? f)))
                                              (assert x8086)))
                                           (g8084
                                            (letrec ((x8087 (list? l)))
                                              (assert x8087)))
                                           (g8085
                                            (letrec ((x-cnd8088 (null? l)))
                                              (if x-cnd8088
                                                #t
                                                (letrec ((x-cnd8089 (pair? l)))
                                                  (if x-cnd8089
                                                    (letrec ((g8090
                                                              (letrec ((x8092
                                                                        (car
                                                                         l)))
                                                                (f x8092)))
                                                             (g8091
                                                              (letrec ((x8093
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8093))))
                                                      g8091)
                                                    '()))))))
                                    g8085)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8094
                                            (letrec ((x8096 (number? x)))
                                              (assert x8096)))
                                           (g8095
                                            (letrec ((x-cnd8097 (< x 0)))
                                              (if x-cnd8097 (- 0 x) x))))
                                    g8095)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8098
                                            (letrec ((x8101 (char? c1)))
                                              (assert x8101)))
                                           (g8099
                                            (letrec ((x8102 (char? c2)))
                                              (assert x8102)))
                                           (g8100
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8103
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8103))))
                                    g8100)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8104
                                            (letrec ((x8105
                                                      (letrec ((x8106
                                                                (letrec ((x8107
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8107))))
                                                        (cdr x8106))))
                                              (car x8105))))
                                    g8104)))
                               (newline
                                (lambda () (letrec ((g8108 #f)) g8108)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8109
                                            (letrec ((x8111
                                                      (letrec ((x8112 (* m n)))
                                                        (abs x8112)))
                                                     (x8110 (gcd m n)))
                                              (/ x8111 x8110))))
                                    g8109)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8113
                                            (letrec ((x8115 (number? x)))
                                              (assert x8115)))
                                           (g8114
                                            (letrec ((x8116 (<= x y)))
                                              (not x8116))))
                                    g8114)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8117
                                            (letrec ((x8121 (list? l)))
                                              (assert x8121)))
                                           (g8118
                                            (letrec ((x8122 (number? index)))
                                              (assert x8122)))
                                           (g8119
                                            (letrec ((x8123
                                                      (letrec ((x8124
                                                                (length l)))
                                                        (< index x8124))))
                                              (assert x8123)))
                                           (g8120
                                            (letrec ((x-cnd8125 (= index 0)))
                                              (if x-cnd8125
                                                (car l)
                                                (letrec ((x8127 (cdr l))
                                                         (x8126 (- index 1)))
                                                  (list-ref x8127 x8126))))))
                                    g8120)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8128
                                            (letrec ((x-cnd8129 (= b 0)))
                                              (if x-cnd8129
                                                a
                                                (letrec ((x8130 (modulo a b)))
                                                  (gcd b x8130))))))
                                    g8128))))
                        (letrec ((g8131
                                  (letrec ((g8132
                                            (letrec ((main
                                                      (lambda (len)
                                                        (letrec ((g8133
                                                                  (letrec ((xs
                                                                            (mk-list
                                                                             len)))
                                                                    (letrec ((g8134
                                                                              (letrec ((x-cnd8135
                                                                                        (letrec ((x8136
                                                                                                  (=
                                                                                                   len
                                                                                                   0)))
                                                                                          (not
                                                                                           x8136))))
                                                                                (if x-cnd8135
                                                                                  (letrec ((x8137
                                                                                            (reverse
                                                                                             xs
                                                                                             empty)))
                                                                                    (car
                                                                                     x8137))
                                                                                  0))))
                                                                      g8134))))
                                                          g8133)))
                                                     (reverse
                                                      (lambda (l ac)
                                                        (letrec ((g8138
                                                                  (letrec ((x-cnd8139
                                                                            (empty?
                                                                             l)))
                                                                    (if x-cnd8139
                                                                      ac
                                                                      (letrec ((x8142
                                                                                (cdr
                                                                                 l))
                                                                               (x8140
                                                                                (letrec ((x8141
                                                                                          (car
                                                                                           l)))
                                                                                  (cons
                                                                                   x8141
                                                                                   ac))))
                                                                        (reverse
                                                                         x8142
                                                                         x8140))))))
                                                          g8138)))
                                                     (mk-list
                                                      (lambda (n)
                                                        (letrec ((g8143
                                                                  (letrec ((x-cnd8144
                                                                            (=
                                                                             n
                                                                             0)))
                                                                    (if x-cnd8144
                                                                      empty
                                                                      (letrec ((x8145
                                                                                (letrec ((x8146
                                                                                          (-
                                                                                           n
                                                                                           1)))
                                                                                  (mk-list
                                                                                   x8146))))
                                                                        (cons
                                                                         n
                                                                         x8145))))))
                                                          g8143))))
                                              (letrec ((g8147
                                                        (letrec ((g8148
                                                                  (letrec ((g8149
                                                                            (letrec ((x8151
                                                                                      ((lambda (j7230
                                                                                                k7231
                                                                                                f7232)
                                                                                         (lambda (g7229)
                                                                                           (integer?/c
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
                                    g8132)))
                          g8131))))
              g7244)))
    g7243))
