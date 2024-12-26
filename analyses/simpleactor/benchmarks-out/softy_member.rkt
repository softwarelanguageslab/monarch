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
                      (letrec ((real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7244
                                            (letrec ((x-cnd7245 (real? g7162)))
                                              (if x-cnd7245
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7244)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7246
                                            (letrec ((x-cnd7247
                                                      (boolean? g7165)))
                                              (if x-cnd7247
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7246)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7248
                                            (letrec ((x-cnd7249
                                                      (number? g7168)))
                                              (if x-cnd7249
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7248)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7250
                                            (letrec ((x-cnd7251
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7251
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7250)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7252
                                            (letrec ((x-cnd7253
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7253
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7252)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7254
                                            (letrec ((x-cnd7255 (pair? g7177)))
                                              (if x-cnd7255
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7254)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7256
                                            (letrec ((x-cnd7257 (pair? g7180)))
                                              (if x-cnd7257
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7256)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7258
                                            (letrec ((x-cnd7259
                                                      (integer? g7183)))
                                              (if x-cnd7259
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7258)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7260
                                            (lambda (k j v)
                                              (letrec ((g7261
                                                        (letrec ((x-cnd7262
                                                                  (c1 k j v)))
                                                          (if x-cnd7262
                                                            (c2 k j v)
                                                            #f))))
                                                g7261))))
                                    g7260)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7263
                                            (lambda (k j v)
                                              (letrec ((g7264
                                                        (letrec ((x-cnd7265
                                                                  (null? v)))
                                                          (if x-cnd7265
                                                            '()
                                                            (letrec ((x7269
                                                                      (letrec ((x7270
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7270)))
                                                                     (x7266
                                                                      (letrec ((x7268
                                                                                (list-of
                                                                                 contract))
                                                                               (x7267
                                                                                (cdr
                                                                                 v)))
                                                                        (x7268
                                                                         k
                                                                         j
                                                                         x7267))))
                                                              (cons
                                                               x7269
                                                               x7266))))))
                                                g7264))))
                                    g7263)))
                               (any? (lambda (v) (letrec ((g7271 #t)) g7271)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7272
                                            (letrec ((x7273 (= v 0)))
                                              (not x7273))))
                                    g7272)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7274
                                            (letrec ((x-cnd7275
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7275
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7274)))
                               (meta (lambda (v) (letrec ((g7276 v)) g7276)))
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
                                (lambda (cnd) (letrec ((g7277 #t)) g7277)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7278
                                            (letrec ((x7279
                                                      (letrec ((x7280 (cdr x)))
                                                        (cdr x7280))))
                                              (cdr x7279))))
                                    g7278)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7281
                                            (letrec ((x7284 (procedure? f)))
                                              (assert x7284)))
                                           (g7282
                                            (letrec ((x7285 (list? l)))
                                              (assert x7285)))
                                           (g7283
                                            (letrec ((x-cnd7286 (null? l)))
                                              (if x-cnd7286
                                                '()
                                                (letrec ((x7289
                                                          (letrec ((x7290
                                                                    (car l)))
                                                            (f x7290)))
                                                         (x7287
                                                          (letrec ((x7288
                                                                    (cdr l)))
                                                            (map f x7288))))
                                                  (cons x7289 x7287))))))
                                    g7283)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7291
                                            (letrec ((x7292 (car x)))
                                              (cdr x7292))))
                                    g7291)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7293
                                            (letrec ((x7294
                                                      (letrec ((x7295
                                                                (letrec ((x7296
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7296))))
                                                        (cdr x7295))))
                                              (car x7294))))
                                    g7293)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7297
                                            (letrec ((x7298
                                                      (letrec ((x7299
                                                                (letrec ((x7300
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7300))))
                                                        (car x7299))))
                                              (cdr x7298))))
                                    g7297)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7301
                                            (letrec ((x7304
                                                      (string? filename)))
                                              (assert x7304)))
                                           (g7302
                                            (letrec ((x7305 (procedure? proc)))
                                              (assert x7305)))
                                           (g7303
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7306
                                                        (close-output-port
                                                         output-port))
                                                       (g7307 res))
                                                g7307))))
                                    g7303)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7308
                                            (letrec ((x7309
                                                      (letrec ((x7310 (cdr x)))
                                                        (cdr x7310))))
                                              (car x7309))))
                                    g7308)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7311
                                            (letrec ((x7312
                                                      (letrec ((x7313
                                                                (letrec ((x7314
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7314))))
                                                        (car x7313))))
                                              (cdr x7312))))
                                    g7311)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7315
                                            (letrec ((x7317 (list? l)))
                                              (assert x7317)))
                                           (g7316
                                            (letrec ((x-cnd7318 (null? l)))
                                              (if x-cnd7318
                                                #f
                                                (letrec ((x-cnd7319
                                                          (letrec ((x7320
                                                                    (caar l)))
                                                            (eq? x7320 k))))
                                                  (if x-cnd7319
                                                    (car l)
                                                    (letrec ((x7321 (cdr l)))
                                                      (assq k x7321))))))))
                                    g7316)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7322
                                            (letrec ((x7323 (modulo x 2)))
                                              (= 0 x7323))))
                                    g7322)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7324
                                            (letrec ((x7326 (list? l)))
                                              (assert x7326)))
                                           (g7325
                                            (letrec ((x-cnd7327 (null? l)))
                                              (if x-cnd7327
                                                ""
                                                (letrec ((x7330
                                                          (letrec ((x7331
                                                                    (car l)))
                                                            (char->string
                                                             x7331)))
                                                         (x7328
                                                          (letrec ((x7329
                                                                    (cdr l)))
                                                            (list->string
                                                             x7329))))
                                                  (string-append
                                                   x7330
                                                   x7328))))))
                                    g7325)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7332
                                            (letrec ((x7335 (char? c1)))
                                              (assert x7335)))
                                           (g7333
                                            (letrec ((x7336 (char? c2)))
                                              (assert x7336)))
                                           (g7334
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7337
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7337))))
                                    g7334)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7338
                                            (letrec ((x7339
                                                      (letrec ((x7340
                                                                (letrec ((x7341
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7341))))
                                                        (cdr x7340))))
                                              (cdr x7339))))
                                    g7338)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7342
                                            (letrec ((x7345 (list? l)))
                                              (assert x7345)))
                                           (g7343
                                            (letrec ((x7346 (numer?)))
                                              (assert x7346)))
                                           (g7344
                                            (letrec ((x-cnd7347 (zero? k)))
                                              (if x-cnd7347
                                                x
                                                (letrec ((x7349 (cdr x))
                                                         (x7348 (- k 1)))
                                                  (list-tail x7349 x7348))))))
                                    g7344)))
                               (halt (lambda () (letrec ((g7350 '())) g7350)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7351
                                            (letrec ((x-cnd7352
                                                      (letrec ((x7353 #\a))
                                                        (char-ci>=? c x7353))))
                                              (if x-cnd7352
                                                (letrec ((x7354 #\z))
                                                  (char-ci<=? c x7354))
                                                #f))))
                                    g7351)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7355
                                            (letrec ((x7357 (number? x)))
                                              (assert x7357)))
                                           (g7356
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7358
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7359
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7359)))))
                                                g7358))))
                                    g7356)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7360
                                            (letrec ((val7146
                                                      (letrec ((x7361
                                                                (char->integer
                                                                 c)))
                                                        (= x7361 9))))
                                              (letrec ((g7362
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7363
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7363
                                                                       10))))
                                                            (letrec ((g7364
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7365
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7365
                                                                           32)))))
                                                              g7364)))))
                                                g7362))))
                                    g7360)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7366
                                            (letrec ((x7367
                                                      (letrec ((x7368 (car x)))
                                                        (cdr x7368))))
                                              (cdr x7367))))
                                    g7366)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7369
                                            (letrec ((x7371 (number? x)))
                                              (assert x7371)))
                                           (g7370 (> x 0)))
                                    g7370)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7372 #f)) g7372)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7373
                                            (letrec ((x7374 (cdr x)))
                                              (cdr x7374))))
                                    g7373)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7375
                                            (letrec ((x7377 (number? x)))
                                              (assert x7377)))
                                           (g7376
                                            (letrec ((x-cnd7378 (< x 0)))
                                              (if x-cnd7378
                                                (ceiling x)
                                                (floor x)))))
                                    g7376)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7379
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7380
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7382
                                                                              (null?
                                                                               a))
                                                                             (x7381
                                                                              (null?
                                                                               b)))
                                                                      (and x7382
                                                                           x7381))))
                                                            (letrec ((g7383
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7386
                                                                                            (string?
                                                                                             a))
                                                                                           (x7385
                                                                                            (string?
                                                                                             b))
                                                                                           (x7384
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7386
                                                                                         x7385
                                                                                         x7384))))
                                                                          (letrec ((g7387
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7395
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7394
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7391
                                                                                                          (letrec ((x7393
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7392
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7393
                                                                                                             x7392)))
                                                                                                         (x7388
                                                                                                          (letrec ((x7390
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7389
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7390
                                                                                                             x7389))))
                                                                                                  (and x7395
                                                                                                       x7394
                                                                                                       x7391
                                                                                                       x7388))))
                                                                                        (letrec ((g7396
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7415
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7414
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7397
                                                                                                              (letrec ((x7411
                                                                                                                        (letrec ((x7412
                                                                                                                                  (letrec ((x7413
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7413))))
                                                                                                                          (x7412)))
                                                                                                                       (x7398
                                                                                                                        (letrec ((x7409
                                                                                                                                  (letrec ((x7410
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7410
                                                                                                                                     n)))
                                                                                                                                 (x7399
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7400
                                                                                                                                                        (letrec ((x7407
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7401
                                                                                                                                                                  (letrec ((x7404
                                                                                                                                                                            (letrec ((x7406
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7405
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7406
                                                                                                                                                                               x7405)))
                                                                                                                                                                           (x7402
                                                                                                                                                                            (letrec ((x7403
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7403))))
                                                                                                                                                                    (and x7404
                                                                                                                                                                         x7402))))
                                                                                                                                                          (or x7407
                                                                                                                                                              x7401))))
                                                                                                                                                g7400))))
                                                                                                                                    (letrec ((g7408
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7408))))
                                                                                                                          (and x7409
                                                                                                                               x7399))))
                                                                                                                (let x7411 x7398))))
                                                                                                      (and x7415
                                                                                                           x7414
                                                                                                           x7397)))))
                                                                                          g7396)))))
                                                                            g7387)))))
                                                              g7383)))))
                                                g7380))))
                                    g7379)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7416
                                            (letrec ((x7417
                                                      (letrec ((x7418
                                                                (letrec ((x7419
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7419))))
                                                        (car x7418))))
                                              (cdr x7417))))
                                    g7416)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7420
                                            (letrec ((x7421
                                                      (letrec ((x7422
                                                                (letrec ((x7423
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7423))))
                                                        (car x7422))))
                                              (car x7421))))
                                    g7420)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7424 (eq? x y))) g7424)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7425
                                            (letrec ((x7427 (number? x)))
                                              (assert x7427)))
                                           (g7426
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7428
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7429
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7429)))))
                                                g7428))))
                                    g7426)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7430
                                            (letrec ((x7433
                                                      (string? filename)))
                                              (assert x7433)))
                                           (g7431
                                            (letrec ((x7434 (procedure? proc)))
                                              (assert x7434)))
                                           (g7432
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7435
                                                        (close-input-port
                                                         input-port))
                                                       (g7436 res))
                                                g7436))))
                                    g7432)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7437 (cons x '()))) g7437)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7438
                                            (letrec ((x7441 (char? c1)))
                                              (assert x7441)))
                                           (g7439
                                            (letrec ((x7442 (char? c2)))
                                              (assert x7442)))
                                           (g7440
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7443
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7443))))
                                    g7440)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7444
                                            (letrec ((x7445
                                                      (letrec ((x7446 (car x)))
                                                        (car x7446))))
                                              (cdr x7445))))
                                    g7444)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7447
                                            (letrec ((x7448
                                                      (letrec ((x7449
                                                                (letrec ((x7450
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7450))))
                                                        (car x7449))))
                                              (cdr x7448))))
                                    g7447)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7451
                                            (letrec ((x7452
                                                      (letrec ((x7453 (car x)))
                                                        (cdr x7453))))
                                              (car x7452))))
                                    g7451)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7454
                                            (letrec ((x7455
                                                      (letrec ((x7456 (cdr x)))
                                                        (car x7456))))
                                              (car x7455))))
                                    g7454)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7457
                                            (letrec ((x7460 (char? c1)))
                                              (assert x7460)))
                                           (g7458
                                            (letrec ((x7461 (char? c2)))
                                              (assert x7461)))
                                           (g7459
                                            (letrec ((x7462
                                                      (char-ci<=? c1 c2)))
                                              (not x7462))))
                                    g7459)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7463
                                            (letrec ((x7464
                                                      (letrec ((x7465
                                                                (letrec ((x7466
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7466))))
                                                        (car x7465))))
                                              (car x7464))))
                                    g7463)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7467
                                            (letrec ((x7469 (number? x)))
                                              (assert x7469)))
                                           (g7468 (< x 0)))
                                    g7468)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7470 (memq e l))) g7470)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7471
                                            (letrec ((x7472
                                                      (letrec ((x7473 (car x)))
                                                        (car x7473))))
                                              (car x7472))))
                                    g7471)))
                               (debug
                                (lambda (e) (letrec ((g7474 '())) g7474)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7475
                                            (letrec ((x7477 (list? l)))
                                              (assert x7477)))
                                           (g7476
                                            (letrec ((x-cnd7478 (null? l)))
                                              (if x-cnd7478
                                                '()
                                                (letrec ((x7481
                                                          (letrec ((x7482
                                                                    (cdr l)))
                                                            (reverse x7482)))
                                                         (x7479
                                                          (letrec ((x7480
                                                                    (car l)))
                                                            (list x7480))))
                                                  (append x7481 x7479))))))
                                    g7476)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7483
                                            (letrec ((x7484
                                                      (letrec ((x7485
                                                                (letrec ((x7486
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7486))))
                                                        (car x7485))))
                                              (car x7484))))
                                    g7483)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7487
                                            (letrec ((x7488
                                                      (letrec ((x7489
                                                                (letrec ((x7490
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7490))))
                                                        (cdr x7489))))
                                              (cdr x7488))))
                                    g7487)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7491
                                            (letrec ((x7493 (number? x)))
                                              (assert x7493)))
                                           (g7492
                                            (letrec ((x7494 (modulo x 2)))
                                              (= 1 x7494))))
                                    g7492)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7495
                                            (letrec ((x7496
                                                      (letrec ((x7497
                                                                (letrec ((x7498
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7498))))
                                                        (car x7497))))
                                              (car x7496))))
                                    g7495)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7499
                                            (letrec ((x7502 (procedure? proc)))
                                              (assert x7502)))
                                           (g7500
                                            (letrec ((x7503 (list? args)))
                                              (assert x7503)))
                                           (g7501
                                            (if cnd
                                              (letrec ((g7504 (proc))) g7504)
                                              (if cnd
                                                (letrec ((g7505
                                                          (letrec ((x7506
                                                                    (car
                                                                     args)))
                                                            (proc x7506))))
                                                  g7505)
                                                (if cnd
                                                  (letrec ((g7507
                                                            (letrec ((x7509
                                                                      (car
                                                                       args))
                                                                     (x7508
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7509
                                                               x7508))))
                                                    g7507)
                                                  (if cnd
                                                    (letrec ((g7510
                                                              (letrec ((x7513
                                                                        (car
                                                                         args))
                                                                       (x7512
                                                                        (cadr
                                                                         args))
                                                                       (x7511
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7513
                                                                 x7512
                                                                 x7511))))
                                                      g7510)
                                                    (if cnd
                                                      (letrec ((g7514
                                                                (letrec ((x7518
                                                                          (car
                                                                           args))
                                                                         (x7517
                                                                          (cadr
                                                                           args))
                                                                         (x7516
                                                                          (caddr
                                                                           args))
                                                                         (x7515
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7518
                                                                   x7517
                                                                   x7516
                                                                   x7515))))
                                                        g7514)
                                                      (if cnd
                                                        (letrec ((g7519
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
                                                                             args))
                                                                           (x7520
                                                                            (letrec ((x7521
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7521))))
                                                                    (proc
                                                                     x7525
                                                                     x7524
                                                                     x7523
                                                                     x7522
                                                                     x7520))))
                                                          g7519)
                                                        (if cnd
                                                          (letrec ((g7526
                                                                    (letrec ((x7534
                                                                              (car
                                                                               args))
                                                                             (x7533
                                                                              (cadr
                                                                               args))
                                                                             (x7532
                                                                              (caddr
                                                                               args))
                                                                             (x7531
                                                                              (cadddr
                                                                               args))
                                                                             (x7529
                                                                              (letrec ((x7530
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7530)))
                                                                             (x7527
                                                                              (letrec ((x7528
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7528))))
                                                                      (proc
                                                                       x7534
                                                                       x7533
                                                                       x7532
                                                                       x7531
                                                                       x7529
                                                                       x7527))))
                                                            g7526)
                                                          (if cnd
                                                            (letrec ((g7535
                                                                      (letrec ((x7545
                                                                                (car
                                                                                 args))
                                                                               (x7544
                                                                                (cadr
                                                                                 args))
                                                                               (x7543
                                                                                (caddr
                                                                                 args))
                                                                               (x7542
                                                                                (cadddr
                                                                                 args))
                                                                               (x7540
                                                                                (letrec ((x7541
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7541)))
                                                                               (x7538
                                                                                (letrec ((x7539
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7539)))
                                                                               (x7536
                                                                                (letrec ((x7537
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7537))))
                                                                        (proc
                                                                         x7545
                                                                         x7544
                                                                         x7543
                                                                         x7542
                                                                         x7540
                                                                         x7538
                                                                         x7536))))
                                                              g7535)
                                                            (letrec ((g7546
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7546)))))))))))
                                    g7501)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7547
                                            (letrec ((x7549 (list? l)))
                                              (assert x7549)))
                                           (g7548
                                            (letrec ((x-cnd7550 (null? l)))
                                              (if x-cnd7550
                                                #f
                                                (letrec ((x-cnd7551
                                                          (letrec ((x7552
                                                                    (car l)))
                                                            (equal? x7552 e))))
                                                  (if x-cnd7551
                                                    l
                                                    (letrec ((x7553 (cdr l)))
                                                      (member e x7553))))))))
                                    g7548)))
                               (call-with-current-continuation call/cc)
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7554
                                            (letrec ((x7555
                                                      (letrec ((x7556
                                                                (letrec ((x7557
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7557))))
                                                        (cdr x7556))))
                                              (cdr x7555))))
                                    g7554)))
                               (cadddr
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
                                              (car x7559))))
                                    g7558)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7562 (random 42))) g7562)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7563
                                            (letrec ((x7565 (number? x)))
                                              (assert x7565)))
                                           (g7564 (= x 0)))
                                    g7564)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7566
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7567
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7567))))
                                    g7566)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7568
                                            (letrec ((x7569 (cdr x)))
                                              (car x7569))))
                                    g7568)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7570
                                            (letrec ((val7156
                                                      (letrec ((x7573
                                                                (pair? l))
                                                               (x7571
                                                                (letrec ((x7572
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7572))))
                                                        (and x7573 x7571))))
                                              (letrec ((g7574
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7574))))
                                    g7570)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7575
                                            (letrec ((x7576
                                                      (letrec ((x7577
                                                                (letrec ((x7578
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7578))))
                                                        (cdr x7577))))
                                              (cdr x7576))))
                                    g7575)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7579
                                            (letrec ((x-cnd7580
                                                      (letrec ((x7581 #\0))
                                                        (char<=? x7581 c))))
                                              (if x-cnd7580
                                                (letrec ((x7582 #\9))
                                                  (char<=? c x7582))
                                                #f))))
                                    g7579)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7583
                                            (letrec ((x7585 (list? l)))
                                              (assert x7585)))
                                           (g7584
                                            (letrec ((x-cnd7586 (null? l)))
                                              (if x-cnd7586
                                                #f
                                                (letrec ((x-cnd7587
                                                          (letrec ((x7588
                                                                    (caar l)))
                                                            (eqv? x7588 k))))
                                                  (if x-cnd7587
                                                    (car l)
                                                    (letrec ((x7589 (cdr l)))
                                                      (assq k x7589))))))))
                                    g7584)))
                               (not
                                (lambda (x)
                                  (letrec ((g7590 (if x #f #t))) g7590)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7591 (append l1 l2))) g7591)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7592
                                            (letrec ((x7594 (list? l)))
                                              (assert x7594)))
                                           (g7593
                                            (letrec ((x-cnd7595 (null? l)))
                                              (if x-cnd7595
                                                #f
                                                (letrec ((x-cnd7596
                                                          (letrec ((x7597
                                                                    (car l)))
                                                            (eq? x7597 e))))
                                                  (if x-cnd7596
                                                    l
                                                    (letrec ((x7598 (cdr l)))
                                                      (memq e x7598))))))))
                                    g7593)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7599
                                            (letrec ((x7600
                                                      (letrec ((x7601
                                                                (letrec ((x7602
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7602))))
                                                        (cdr x7601))))
                                              (car x7600))))
                                    g7599)))
                               (length
                                (lambda (l)
                                  (letrec ((g7603
                                            (letrec ((x7605 (list? l)))
                                              (assert x7605)))
                                           (g7604
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7606
                                                                  (letrec ((x-cnd7607
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7607
                                                                      0
                                                                      (letrec ((x7608
                                                                                (letrec ((x7609
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7609))))
                                                                        (+
                                                                         1
                                                                         x7608))))))
                                                          g7606))))
                                              (letrec ((g7610 (rec l)))
                                                g7610))))
                                    g7604)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7611
                                            (letrec ((x7614 (char? c1)))
                                              (assert x7614)))
                                           (g7612
                                            (letrec ((x7615 (char? c2)))
                                              (assert x7615)))
                                           (g7613
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7616
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7616))))
                                    g7613)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7617
                                            (letrec ((x7618 (string<=? s1 s2)))
                                              (not x7618))))
                                    g7617)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7619
                                            (letrec ((x7620
                                                      (letrec ((x7621 (cdr x)))
                                                        (car x7621))))
                                              (cdr x7620))))
                                    g7619)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7622
                                            (letrec ((x7624 (list? l)))
                                              (assert x7624)))
                                           (g7623
                                            (letrec ((x-cnd7625 (null? l)))
                                              (if x-cnd7625
                                                #f
                                                (letrec ((x-cnd7626
                                                          (letrec ((x7627
                                                                    (caar l)))
                                                            (equal? x7627 k))))
                                                  (if x-cnd7626
                                                    (car l)
                                                    (letrec ((x7628 (cdr l)))
                                                      (assoc k x7628))))))))
                                    g7623)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7629
                                            (letrec ((x7630 (car x)))
                                              (car x7630))))
                                    g7629)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7631
                                            (letrec ((x7634 (char? c1)))
                                              (assert x7634)))
                                           (g7632
                                            (letrec ((x7635 (char? c2)))
                                              (assert x7635)))
                                           (g7633
                                            (letrec ((x7636 (char<=? c1 c2)))
                                              (not x7636))))
                                    g7633)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7637
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7638
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7638))))
                                    g7637)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7639
                                            (letrec ((x7642 (procedure? f)))
                                              (assert x7642)))
                                           (g7640
                                            (letrec ((x7643 (list? l)))
                                              (assert x7643)))
                                           (g7641
                                            (letrec ((x-cnd7644 (null? l)))
                                              (if x-cnd7644
                                                #t
                                                (letrec ((x-cnd7645 (pair? l)))
                                                  (if x-cnd7645
                                                    (letrec ((g7646
                                                              (letrec ((x7648
                                                                        (car
                                                                         l)))
                                                                (f x7648)))
                                                             (g7647
                                                              (letrec ((x7649
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7649))))
                                                      g7647)
                                                    '()))))))
                                    g7641)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7650
                                            (letrec ((x7652 (number? x)))
                                              (assert x7652)))
                                           (g7651
                                            (letrec ((x-cnd7653 (< x 0)))
                                              (if x-cnd7653 (- 0 x) x))))
                                    g7651)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7654
                                            (letrec ((x7657 (char? c1)))
                                              (assert x7657)))
                                           (g7655
                                            (letrec ((x7658 (char? c2)))
                                              (assert x7658)))
                                           (g7656
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7659
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7659))))
                                    g7656)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7660
                                            (letrec ((x7661
                                                      (letrec ((x7662
                                                                (letrec ((x7663
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7663))))
                                                        (cdr x7662))))
                                              (car x7661))))
                                    g7660)))
                               (newline
                                (lambda () (letrec ((g7664 #f)) g7664)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7665
                                            (letrec ((x7667
                                                      (letrec ((x7668 (* m n)))
                                                        (abs x7668)))
                                                     (x7666 (gcd m n)))
                                              (/ x7667 x7666))))
                                    g7665)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7669
                                            (letrec ((x7671 (number? x)))
                                              (assert x7671)))
                                           (g7670
                                            (letrec ((x7672 (<= x y)))
                                              (not x7672))))
                                    g7670)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7673
                                            (letrec ((x7677 (list? l)))
                                              (assert x7677)))
                                           (g7674
                                            (letrec ((x7678 (number? index)))
                                              (assert x7678)))
                                           (g7675
                                            (letrec ((x7679
                                                      (letrec ((x7680
                                                                (length l)))
                                                        (< index x7680))))
                                              (assert x7679)))
                                           (g7676
                                            (letrec ((x-cnd7681 (= index 0)))
                                              (if x-cnd7681
                                                (car l)
                                                (letrec ((x7683 (cdr l))
                                                         (x7682 (- index 1)))
                                                  (list-ref x7683 x7682))))))
                                    g7676)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7684
                                            (letrec ((x-cnd7685 (= b 0)))
                                              (if x-cnd7685
                                                a
                                                (letrec ((x7686 (modulo a b)))
                                                  (gcd b x7686))))))
                                    g7684)))
                               (real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7687
                                            (letrec ((x-cnd7688 (real? g7162)))
                                              (if x-cnd7688
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7687)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7689
                                            (letrec ((x-cnd7690
                                                      (boolean? g7165)))
                                              (if x-cnd7690
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7689)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7691
                                            (letrec ((x-cnd7692
                                                      (number? g7168)))
                                              (if x-cnd7692
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7691)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7693
                                            (letrec ((x-cnd7694
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7694
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7693)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7695
                                            (letrec ((x-cnd7696
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7696
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7695)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7697
                                            (letrec ((x-cnd7698 (pair? g7177)))
                                              (if x-cnd7698
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7697)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7699
                                            (letrec ((x-cnd7700 (pair? g7180)))
                                              (if x-cnd7700
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7699)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7701
                                            (letrec ((x-cnd7702
                                                      (integer? g7183)))
                                              (if x-cnd7702
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7701)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7703
                                            (lambda (k j v)
                                              (letrec ((g7704
                                                        (letrec ((x-cnd7705
                                                                  (c1 k j v)))
                                                          (if x-cnd7705
                                                            (c2 k j v)
                                                            #f))))
                                                g7704))))
                                    g7703)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7706
                                            (lambda (k j v)
                                              (letrec ((g7707
                                                        (letrec ((x-cnd7708
                                                                  (null? v)))
                                                          (if x-cnd7708
                                                            '()
                                                            (letrec ((x7712
                                                                      (letrec ((x7713
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7713)))
                                                                     (x7709
                                                                      (letrec ((x7711
                                                                                (list-of
                                                                                 contract))
                                                                               (x7710
                                                                                (cdr
                                                                                 v)))
                                                                        (x7711
                                                                         k
                                                                         j
                                                                         x7710))))
                                                              (cons
                                                               x7712
                                                               x7709))))))
                                                g7707))))
                                    g7706)))
                               (any? (lambda (v) (letrec ((g7714 #t)) g7714)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7715
                                            (letrec ((x7716 (= v 0)))
                                              (not x7716))))
                                    g7715)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7717
                                            (letrec ((x-cnd7718
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7718
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7717)))
                               (meta (lambda (v) (letrec ((g7719 v)) g7719)))
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
                                (lambda (cnd) (letrec ((g7720 #t)) g7720)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7721
                                            (letrec ((x7722
                                                      (letrec ((x7723 (cdr x)))
                                                        (cdr x7723))))
                                              (cdr x7722))))
                                    g7721)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7724
                                            (letrec ((x7727 (procedure? f)))
                                              (assert x7727)))
                                           (g7725
                                            (letrec ((x7728 (list? l)))
                                              (assert x7728)))
                                           (g7726
                                            (letrec ((x-cnd7729 (null? l)))
                                              (if x-cnd7729
                                                '()
                                                (letrec ((x7732
                                                          (letrec ((x7733
                                                                    (car l)))
                                                            (f x7733)))
                                                         (x7730
                                                          (letrec ((x7731
                                                                    (cdr l)))
                                                            (map f x7731))))
                                                  (cons x7732 x7730))))))
                                    g7726)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7734
                                            (letrec ((x7735 (car x)))
                                              (cdr x7735))))
                                    g7734)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7736
                                            (letrec ((x7737
                                                      (letrec ((x7738
                                                                (letrec ((x7739
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7739))))
                                                        (cdr x7738))))
                                              (car x7737))))
                                    g7736)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7740
                                            (letrec ((x7741
                                                      (letrec ((x7742
                                                                (letrec ((x7743
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7743))))
                                                        (car x7742))))
                                              (cdr x7741))))
                                    g7740)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7744
                                            (letrec ((x7747
                                                      (string? filename)))
                                              (assert x7747)))
                                           (g7745
                                            (letrec ((x7748 (procedure? proc)))
                                              (assert x7748)))
                                           (g7746
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7749
                                                        (close-output-port
                                                         output-port))
                                                       (g7750 res))
                                                g7750))))
                                    g7746)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7751
                                            (letrec ((x7752
                                                      (letrec ((x7753 (cdr x)))
                                                        (cdr x7753))))
                                              (car x7752))))
                                    g7751)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7754
                                            (letrec ((x7755
                                                      (letrec ((x7756
                                                                (letrec ((x7757
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7757))))
                                                        (car x7756))))
                                              (cdr x7755))))
                                    g7754)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7758
                                            (letrec ((x7760 (list? l)))
                                              (assert x7760)))
                                           (g7759
                                            (letrec ((x-cnd7761 (null? l)))
                                              (if x-cnd7761
                                                #f
                                                (letrec ((x-cnd7762
                                                          (letrec ((x7763
                                                                    (caar l)))
                                                            (eq? x7763 k))))
                                                  (if x-cnd7762
                                                    (car l)
                                                    (letrec ((x7764 (cdr l)))
                                                      (assq k x7764))))))))
                                    g7759)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7765
                                            (letrec ((x7766 (modulo x 2)))
                                              (= 0 x7766))))
                                    g7765)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7767
                                            (letrec ((x7769 (list? l)))
                                              (assert x7769)))
                                           (g7768
                                            (letrec ((x-cnd7770 (null? l)))
                                              (if x-cnd7770
                                                ""
                                                (letrec ((x7773
                                                          (letrec ((x7774
                                                                    (car l)))
                                                            (char->string
                                                             x7774)))
                                                         (x7771
                                                          (letrec ((x7772
                                                                    (cdr l)))
                                                            (list->string
                                                             x7772))))
                                                  (string-append
                                                   x7773
                                                   x7771))))))
                                    g7768)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7775
                                            (letrec ((x7778 (char? c1)))
                                              (assert x7778)))
                                           (g7776
                                            (letrec ((x7779 (char? c2)))
                                              (assert x7779)))
                                           (g7777
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7780
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7780))))
                                    g7777)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7781
                                            (letrec ((x7782
                                                      (letrec ((x7783
                                                                (letrec ((x7784
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7784))))
                                                        (cdr x7783))))
                                              (cdr x7782))))
                                    g7781)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7785
                                            (letrec ((x7788 (list? l)))
                                              (assert x7788)))
                                           (g7786
                                            (letrec ((x7789 (numer?)))
                                              (assert x7789)))
                                           (g7787
                                            (letrec ((x-cnd7790 (zero? k)))
                                              (if x-cnd7790
                                                x
                                                (letrec ((x7792 (cdr x))
                                                         (x7791 (- k 1)))
                                                  (list-tail x7792 x7791))))))
                                    g7787)))
                               (halt (lambda () (letrec ((g7793 '())) g7793)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7794
                                            (letrec ((x-cnd7795
                                                      (letrec ((x7796 #\a))
                                                        (char-ci>=? c x7796))))
                                              (if x-cnd7795
                                                (letrec ((x7797 #\z))
                                                  (char-ci<=? c x7797))
                                                #f))))
                                    g7794)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7798
                                            (letrec ((x7800 (number? x)))
                                              (assert x7800)))
                                           (g7799
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7801
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7802
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7802)))))
                                                g7801))))
                                    g7799)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7803
                                            (letrec ((val7146
                                                      (letrec ((x7804
                                                                (char->integer
                                                                 c)))
                                                        (= x7804 9))))
                                              (letrec ((g7805
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7806
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7806
                                                                       10))))
                                                            (letrec ((g7807
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7808
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7808
                                                                           32)))))
                                                              g7807)))))
                                                g7805))))
                                    g7803)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7809
                                            (letrec ((x7810
                                                      (letrec ((x7811 (car x)))
                                                        (cdr x7811))))
                                              (cdr x7810))))
                                    g7809)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7812
                                            (letrec ((x7814 (number? x)))
                                              (assert x7814)))
                                           (g7813 (> x 0)))
                                    g7813)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7815 #f)) g7815)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7816
                                            (letrec ((x7817 (cdr x)))
                                              (cdr x7817))))
                                    g7816)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7818
                                            (letrec ((x7820 (number? x)))
                                              (assert x7820)))
                                           (g7819
                                            (letrec ((x-cnd7821 (< x 0)))
                                              (if x-cnd7821
                                                (ceiling x)
                                                (floor x)))))
                                    g7819)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7822
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7823
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7825
                                                                              (null?
                                                                               a))
                                                                             (x7824
                                                                              (null?
                                                                               b)))
                                                                      (and x7825
                                                                           x7824))))
                                                            (letrec ((g7826
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7829
                                                                                            (string?
                                                                                             a))
                                                                                           (x7828
                                                                                            (string?
                                                                                             b))
                                                                                           (x7827
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7829
                                                                                         x7828
                                                                                         x7827))))
                                                                          (letrec ((g7830
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7838
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7837
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7834
                                                                                                          (letrec ((x7836
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7835
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7836
                                                                                                             x7835)))
                                                                                                         (x7831
                                                                                                          (letrec ((x7833
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7832
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7833
                                                                                                             x7832))))
                                                                                                  (and x7838
                                                                                                       x7837
                                                                                                       x7834
                                                                                                       x7831))))
                                                                                        (letrec ((g7839
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7858
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7857
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7840
                                                                                                              (letrec ((x7854
                                                                                                                        (letrec ((x7855
                                                                                                                                  (letrec ((x7856
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7856))))
                                                                                                                          (x7855)))
                                                                                                                       (x7841
                                                                                                                        (letrec ((x7852
                                                                                                                                  (letrec ((x7853
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7853
                                                                                                                                     n)))
                                                                                                                                 (x7842
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7843
                                                                                                                                                        (letrec ((x7850
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7844
                                                                                                                                                                  (letrec ((x7847
                                                                                                                                                                            (letrec ((x7849
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7848
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7849
                                                                                                                                                                               x7848)))
                                                                                                                                                                           (x7845
                                                                                                                                                                            (letrec ((x7846
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7846))))
                                                                                                                                                                    (and x7847
                                                                                                                                                                         x7845))))
                                                                                                                                                          (or x7850
                                                                                                                                                              x7844))))
                                                                                                                                                g7843))))
                                                                                                                                    (letrec ((g7851
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7851))))
                                                                                                                          (and x7852
                                                                                                                               x7842))))
                                                                                                                (let x7854 x7841))))
                                                                                                      (and x7858
                                                                                                           x7857
                                                                                                           x7840)))))
                                                                                          g7839)))))
                                                                            g7830)))))
                                                              g7826)))))
                                                g7823))))
                                    g7822)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7859
                                            (letrec ((x7860
                                                      (letrec ((x7861
                                                                (letrec ((x7862
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7862))))
                                                        (car x7861))))
                                              (cdr x7860))))
                                    g7859)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7863
                                            (letrec ((x7864
                                                      (letrec ((x7865
                                                                (letrec ((x7866
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7866))))
                                                        (car x7865))))
                                              (car x7864))))
                                    g7863)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7867 (eq? x y))) g7867)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7868
                                            (letrec ((x7870 (number? x)))
                                              (assert x7870)))
                                           (g7869
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7871
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7872
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7872)))))
                                                g7871))))
                                    g7869)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7873
                                            (letrec ((x7876
                                                      (string? filename)))
                                              (assert x7876)))
                                           (g7874
                                            (letrec ((x7877 (procedure? proc)))
                                              (assert x7877)))
                                           (g7875
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7878
                                                        (close-input-port
                                                         input-port))
                                                       (g7879 res))
                                                g7879))))
                                    g7875)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7880 (cons x '()))) g7880)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7881
                                            (letrec ((x7884 (char? c1)))
                                              (assert x7884)))
                                           (g7882
                                            (letrec ((x7885 (char? c2)))
                                              (assert x7885)))
                                           (g7883
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7886
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7886))))
                                    g7883)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7887
                                            (letrec ((x7888
                                                      (letrec ((x7889 (car x)))
                                                        (car x7889))))
                                              (cdr x7888))))
                                    g7887)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7890
                                            (letrec ((x7891
                                                      (letrec ((x7892
                                                                (letrec ((x7893
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7893))))
                                                        (car x7892))))
                                              (cdr x7891))))
                                    g7890)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7894
                                            (letrec ((x7895
                                                      (letrec ((x7896 (car x)))
                                                        (cdr x7896))))
                                              (car x7895))))
                                    g7894)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7897
                                            (letrec ((x7898
                                                      (letrec ((x7899 (cdr x)))
                                                        (car x7899))))
                                              (car x7898))))
                                    g7897)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7900
                                            (letrec ((x7903 (char? c1)))
                                              (assert x7903)))
                                           (g7901
                                            (letrec ((x7904 (char? c2)))
                                              (assert x7904)))
                                           (g7902
                                            (letrec ((x7905
                                                      (char-ci<=? c1 c2)))
                                              (not x7905))))
                                    g7902)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7906
                                            (letrec ((x7907
                                                      (letrec ((x7908
                                                                (letrec ((x7909
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7909))))
                                                        (car x7908))))
                                              (car x7907))))
                                    g7906)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7910
                                            (letrec ((x7912 (number? x)))
                                              (assert x7912)))
                                           (g7911 (< x 0)))
                                    g7911)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7913 (memq e l))) g7913)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7914
                                            (letrec ((x7915
                                                      (letrec ((x7916 (car x)))
                                                        (car x7916))))
                                              (car x7915))))
                                    g7914)))
                               (debug
                                (lambda (e) (letrec ((g7917 '())) g7917)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7918
                                            (letrec ((x7920 (list? l)))
                                              (assert x7920)))
                                           (g7919
                                            (letrec ((x-cnd7921 (null? l)))
                                              (if x-cnd7921
                                                '()
                                                (letrec ((x7924
                                                          (letrec ((x7925
                                                                    (cdr l)))
                                                            (reverse x7925)))
                                                         (x7922
                                                          (letrec ((x7923
                                                                    (car l)))
                                                            (list x7923))))
                                                  (append x7924 x7922))))))
                                    g7919)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7926
                                            (letrec ((x7927
                                                      (letrec ((x7928
                                                                (letrec ((x7929
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7929))))
                                                        (car x7928))))
                                              (car x7927))))
                                    g7926)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7930
                                            (letrec ((x7931
                                                      (letrec ((x7932
                                                                (letrec ((x7933
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7933))))
                                                        (cdr x7932))))
                                              (cdr x7931))))
                                    g7930)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7934
                                            (letrec ((x7936 (number? x)))
                                              (assert x7936)))
                                           (g7935
                                            (letrec ((x7937 (modulo x 2)))
                                              (= 1 x7937))))
                                    g7935)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7938
                                            (letrec ((x7939
                                                      (letrec ((x7940
                                                                (letrec ((x7941
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7941))))
                                                        (car x7940))))
                                              (car x7939))))
                                    g7938)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7942
                                            (letrec ((x7945 (procedure? proc)))
                                              (assert x7945)))
                                           (g7943
                                            (letrec ((x7946 (list? args)))
                                              (assert x7946)))
                                           (g7944
                                            (if cnd
                                              (letrec ((g7947 (proc))) g7947)
                                              (if cnd
                                                (letrec ((g7948
                                                          (letrec ((x7949
                                                                    (car
                                                                     args)))
                                                            (proc x7949))))
                                                  g7948)
                                                (if cnd
                                                  (letrec ((g7950
                                                            (letrec ((x7952
                                                                      (car
                                                                       args))
                                                                     (x7951
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7952
                                                               x7951))))
                                                    g7950)
                                                  (if cnd
                                                    (letrec ((g7953
                                                              (letrec ((x7956
                                                                        (car
                                                                         args))
                                                                       (x7955
                                                                        (cadr
                                                                         args))
                                                                       (x7954
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7956
                                                                 x7955
                                                                 x7954))))
                                                      g7953)
                                                    (if cnd
                                                      (letrec ((g7957
                                                                (letrec ((x7961
                                                                          (car
                                                                           args))
                                                                         (x7960
                                                                          (cadr
                                                                           args))
                                                                         (x7959
                                                                          (caddr
                                                                           args))
                                                                         (x7958
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7961
                                                                   x7960
                                                                   x7959
                                                                   x7958))))
                                                        g7957)
                                                      (if cnd
                                                        (letrec ((g7962
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
                                                                             args))
                                                                           (x7963
                                                                            (letrec ((x7964
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7964))))
                                                                    (proc
                                                                     x7968
                                                                     x7967
                                                                     x7966
                                                                     x7965
                                                                     x7963))))
                                                          g7962)
                                                        (if cnd
                                                          (letrec ((g7969
                                                                    (letrec ((x7977
                                                                              (car
                                                                               args))
                                                                             (x7976
                                                                              (cadr
                                                                               args))
                                                                             (x7975
                                                                              (caddr
                                                                               args))
                                                                             (x7974
                                                                              (cadddr
                                                                               args))
                                                                             (x7972
                                                                              (letrec ((x7973
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7973)))
                                                                             (x7970
                                                                              (letrec ((x7971
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7971))))
                                                                      (proc
                                                                       x7977
                                                                       x7976
                                                                       x7975
                                                                       x7974
                                                                       x7972
                                                                       x7970))))
                                                            g7969)
                                                          (if cnd
                                                            (letrec ((g7978
                                                                      (letrec ((x7988
                                                                                (car
                                                                                 args))
                                                                               (x7987
                                                                                (cadr
                                                                                 args))
                                                                               (x7986
                                                                                (caddr
                                                                                 args))
                                                                               (x7985
                                                                                (cadddr
                                                                                 args))
                                                                               (x7983
                                                                                (letrec ((x7984
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7984)))
                                                                               (x7981
                                                                                (letrec ((x7982
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7982)))
                                                                               (x7979
                                                                                (letrec ((x7980
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7980))))
                                                                        (proc
                                                                         x7988
                                                                         x7987
                                                                         x7986
                                                                         x7985
                                                                         x7983
                                                                         x7981
                                                                         x7979))))
                                                              g7978)
                                                            (letrec ((g7989
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7989)))))))))))
                                    g7944)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7990
                                            (letrec ((x7992 (list? l)))
                                              (assert x7992)))
                                           (g7991
                                            (letrec ((x-cnd7993 (null? l)))
                                              (if x-cnd7993
                                                #f
                                                (letrec ((x-cnd7994
                                                          (letrec ((x7995
                                                                    (car l)))
                                                            (equal? x7995 e))))
                                                  (if x-cnd7994
                                                    l
                                                    (letrec ((x7996 (cdr l)))
                                                      (member e x7996))))))))
                                    g7991)))
                               (call-with-current-continuation call/cc)
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7997
                                            (letrec ((x7998
                                                      (letrec ((x7999
                                                                (letrec ((x8000
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8000))))
                                                        (cdr x7999))))
                                              (cdr x7998))))
                                    g7997)))
                               (cadddr
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
                                              (car x8002))))
                                    g8001)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8005 (random 42))) g8005)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8006
                                            (letrec ((x8008 (number? x)))
                                              (assert x8008)))
                                           (g8007 (= x 0)))
                                    g8007)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8009
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8010
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8010))))
                                    g8009)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8011
                                            (letrec ((x8012 (cdr x)))
                                              (car x8012))))
                                    g8011)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8013
                                            (letrec ((val7156
                                                      (letrec ((x8016
                                                                (pair? l))
                                                               (x8014
                                                                (letrec ((x8015
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8015))))
                                                        (and x8016 x8014))))
                                              (letrec ((g8017
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8017))))
                                    g8013)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8018
                                            (letrec ((x8019
                                                      (letrec ((x8020
                                                                (letrec ((x8021
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8021))))
                                                        (cdr x8020))))
                                              (cdr x8019))))
                                    g8018)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8022
                                            (letrec ((x-cnd8023
                                                      (letrec ((x8024 #\0))
                                                        (char<=? x8024 c))))
                                              (if x-cnd8023
                                                (letrec ((x8025 #\9))
                                                  (char<=? c x8025))
                                                #f))))
                                    g8022)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8026
                                            (letrec ((x8028 (list? l)))
                                              (assert x8028)))
                                           (g8027
                                            (letrec ((x-cnd8029 (null? l)))
                                              (if x-cnd8029
                                                #f
                                                (letrec ((x-cnd8030
                                                          (letrec ((x8031
                                                                    (caar l)))
                                                            (eqv? x8031 k))))
                                                  (if x-cnd8030
                                                    (car l)
                                                    (letrec ((x8032 (cdr l)))
                                                      (assq k x8032))))))))
                                    g8027)))
                               (not
                                (lambda (x)
                                  (letrec ((g8033 (if x #f #t))) g8033)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8034 (append l1 l2))) g8034)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8035
                                            (letrec ((x8037 (list? l)))
                                              (assert x8037)))
                                           (g8036
                                            (letrec ((x-cnd8038 (null? l)))
                                              (if x-cnd8038
                                                #f
                                                (letrec ((x-cnd8039
                                                          (letrec ((x8040
                                                                    (car l)))
                                                            (eq? x8040 e))))
                                                  (if x-cnd8039
                                                    l
                                                    (letrec ((x8041 (cdr l)))
                                                      (memq e x8041))))))))
                                    g8036)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8042
                                            (letrec ((x8043
                                                      (letrec ((x8044
                                                                (letrec ((x8045
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8045))))
                                                        (cdr x8044))))
                                              (car x8043))))
                                    g8042)))
                               (length
                                (lambda (l)
                                  (letrec ((g8046
                                            (letrec ((x8048 (list? l)))
                                              (assert x8048)))
                                           (g8047
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8049
                                                                  (letrec ((x-cnd8050
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8050
                                                                      0
                                                                      (letrec ((x8051
                                                                                (letrec ((x8052
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8052))))
                                                                        (+
                                                                         1
                                                                         x8051))))))
                                                          g8049))))
                                              (letrec ((g8053 (rec l)))
                                                g8053))))
                                    g8047)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8054
                                            (letrec ((x8057 (char? c1)))
                                              (assert x8057)))
                                           (g8055
                                            (letrec ((x8058 (char? c2)))
                                              (assert x8058)))
                                           (g8056
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8059
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8059))))
                                    g8056)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8060
                                            (letrec ((x8061 (string<=? s1 s2)))
                                              (not x8061))))
                                    g8060)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8062
                                            (letrec ((x8063
                                                      (letrec ((x8064 (cdr x)))
                                                        (car x8064))))
                                              (cdr x8063))))
                                    g8062)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8065
                                            (letrec ((x8067 (list? l)))
                                              (assert x8067)))
                                           (g8066
                                            (letrec ((x-cnd8068 (null? l)))
                                              (if x-cnd8068
                                                #f
                                                (letrec ((x-cnd8069
                                                          (letrec ((x8070
                                                                    (caar l)))
                                                            (equal? x8070 k))))
                                                  (if x-cnd8069
                                                    (car l)
                                                    (letrec ((x8071 (cdr l)))
                                                      (assoc k x8071))))))))
                                    g8066)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8072
                                            (letrec ((x8073 (car x)))
                                              (car x8073))))
                                    g8072)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8074
                                            (letrec ((x8077 (char? c1)))
                                              (assert x8077)))
                                           (g8075
                                            (letrec ((x8078 (char? c2)))
                                              (assert x8078)))
                                           (g8076
                                            (letrec ((x8079 (char<=? c1 c2)))
                                              (not x8079))))
                                    g8076)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8080
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8081
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8081))))
                                    g8080)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8082
                                            (letrec ((x8085 (procedure? f)))
                                              (assert x8085)))
                                           (g8083
                                            (letrec ((x8086 (list? l)))
                                              (assert x8086)))
                                           (g8084
                                            (letrec ((x-cnd8087 (null? l)))
                                              (if x-cnd8087
                                                #t
                                                (letrec ((x-cnd8088 (pair? l)))
                                                  (if x-cnd8088
                                                    (letrec ((g8089
                                                              (letrec ((x8091
                                                                        (car
                                                                         l)))
                                                                (f x8091)))
                                                             (g8090
                                                              (letrec ((x8092
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8092))))
                                                      g8090)
                                                    '()))))))
                                    g8084)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8093
                                            (letrec ((x8095 (number? x)))
                                              (assert x8095)))
                                           (g8094
                                            (letrec ((x-cnd8096 (< x 0)))
                                              (if x-cnd8096 (- 0 x) x))))
                                    g8094)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8097
                                            (letrec ((x8100 (char? c1)))
                                              (assert x8100)))
                                           (g8098
                                            (letrec ((x8101 (char? c2)))
                                              (assert x8101)))
                                           (g8099
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8102
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8102))))
                                    g8099)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8103
                                            (letrec ((x8104
                                                      (letrec ((x8105
                                                                (letrec ((x8106
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8106))))
                                                        (cdr x8105))))
                                              (car x8104))))
                                    g8103)))
                               (newline
                                (lambda () (letrec ((g8107 #f)) g8107)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8108
                                            (letrec ((x8110
                                                      (letrec ((x8111 (* m n)))
                                                        (abs x8111)))
                                                     (x8109 (gcd m n)))
                                              (/ x8110 x8109))))
                                    g8108)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8112
                                            (letrec ((x8114 (number? x)))
                                              (assert x8114)))
                                           (g8113
                                            (letrec ((x8115 (<= x y)))
                                              (not x8115))))
                                    g8113)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8116
                                            (letrec ((x8120 (list? l)))
                                              (assert x8120)))
                                           (g8117
                                            (letrec ((x8121 (number? index)))
                                              (assert x8121)))
                                           (g8118
                                            (letrec ((x8122
                                                      (letrec ((x8123
                                                                (length l)))
                                                        (< index x8123))))
                                              (assert x8122)))
                                           (g8119
                                            (letrec ((x-cnd8124 (= index 0)))
                                              (if x-cnd8124
                                                (car l)
                                                (letrec ((x8126 (cdr l))
                                                         (x8125 (- index 1)))
                                                  (list-ref x8126 x8125))))))
                                    g8119)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8127
                                            (letrec ((x-cnd8128 (= b 0)))
                                              (if x-cnd8128
                                                a
                                                (letrec ((x8129 (modulo a b)))
                                                  (gcd b x8129))))))
                                    g8127))))
                        (letrec ((g8130
                                  (letrec ((g8131
                                            (letrec ((member
                                                      (lambda (x l)
                                                        (letrec ((g8132
                                                                  (letrec ((x-cnd8133
                                                                            (empty?
                                                                             l)))
                                                                    (if x-cnd8133
                                                                      empty
                                                                      (letrec ((x-cnd8134
                                                                                (letrec ((x8135
                                                                                          (car
                                                                                           l)))
                                                                                  (equal?
                                                                                   x
                                                                                   x8135))))
                                                                        (if x-cnd8134
                                                                          l
                                                                          (letrec ((x8136
                                                                                    (cdr
                                                                                     l)))
                                                                            (member
                                                                             x
                                                                             x8136))))))))
                                                          g8132))))
                                              (letrec ((g8137
                                                        (letrec ((g8138
                                                                  (letrec ((g8139
                                                                            ((lambda (j7229
                                                                                      k7230
                                                                                      f7231)
                                                                               (lambda ()
                                                                                 ((any/c
                                                                                   (listof
                                                                                    any/c)
                                                                                   (listof
                                                                                    any/c))
                                                                                  j7229
                                                                                  k7230
                                                                                  (f7231))))
                                                                             'module
                                                                             'importer
                                                                             member)))
                                                                    g8139)))
                                                          g8138)))
                                                g8137))))
                                    g8131)))
                          g8130))))
              g7243)))
    g7242))
