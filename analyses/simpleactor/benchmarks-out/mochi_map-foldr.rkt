(letrec ((any? (lambda (v) (letrec ((g7249 #t)) g7249)))
         (meta (lambda (v) (letrec ((g7250 v)) g7250)))
         (member
          (lambda (v lst)
            (letrec ((g7251
                      (letrec ((g7252
                                (letrec ((x-e7253 lst))
                                  (match
                                   x-e7253
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7254 (eq? v v1)))
                                       (if x-cnd7254 #t (member v vs)))))))))
                        g7252)))
              g7251)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7255 (lambda (v) (letrec ((g7256 v)) g7256)))) g7255)))
         (nonzero?
          (lambda (v)
            (letrec ((g7257 (letrec ((x7258 (= v 0))) (not x7258)))) g7257))))
  (letrec ((g7259
            (letrec ((g7260
                      (letrec ((real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7261
                                            (letrec ((x-cnd7262 (real? g7162)))
                                              (if x-cnd7262
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7261)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7263
                                            (letrec ((x-cnd7264
                                                      (boolean? g7165)))
                                              (if x-cnd7264
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7263)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7265
                                            (letrec ((x-cnd7266
                                                      (number? g7168)))
                                              (if x-cnd7266
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7265)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7267
                                            (letrec ((x-cnd7268
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7268
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7267)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7269
                                            (letrec ((x-cnd7270
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7270
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7269)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7271
                                            (letrec ((x-cnd7272 (pair? g7177)))
                                              (if x-cnd7272
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7271)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7273
                                            (letrec ((x-cnd7274 (pair? g7180)))
                                              (if x-cnd7274
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7273)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7275
                                            (letrec ((x-cnd7276
                                                      (integer? g7183)))
                                              (if x-cnd7276
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7275)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7277
                                            (lambda (k j v)
                                              (letrec ((g7278
                                                        (letrec ((x-cnd7279
                                                                  (c1 k j v)))
                                                          (if x-cnd7279
                                                            (c2 k j v)
                                                            #f))))
                                                g7278))))
                                    g7277)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7280
                                            (lambda (k j v)
                                              (letrec ((g7281
                                                        (letrec ((x-cnd7282
                                                                  (null? v)))
                                                          (if x-cnd7282
                                                            '()
                                                            (letrec ((x7286
                                                                      (letrec ((x7287
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7287)))
                                                                     (x7283
                                                                      (letrec ((x7285
                                                                                (list-of
                                                                                 contract))
                                                                               (x7284
                                                                                (cdr
                                                                                 v)))
                                                                        (x7285
                                                                         k
                                                                         j
                                                                         x7284))))
                                                              (cons
                                                               x7286
                                                               x7283))))))
                                                g7281))))
                                    g7280)))
                               (any? (lambda (v) (letrec ((g7288 #t)) g7288)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7289
                                            (letrec ((x7290 (= v 0)))
                                              (not x7290))))
                                    g7289)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7291
                                            (letrec ((x-cnd7292
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7292
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7291)))
                               (meta (lambda (v) (letrec ((g7293 v)) g7293)))
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
                                (lambda (cnd) (letrec ((g7294 #t)) g7294)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7295
                                            (letrec ((x7296
                                                      (letrec ((x7297 (cdr x)))
                                                        (cdr x7297))))
                                              (cdr x7296))))
                                    g7295)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7298
                                            (letrec ((x7301 (procedure? f)))
                                              (assert x7301)))
                                           (g7299
                                            (letrec ((x7302 (list? l)))
                                              (assert x7302)))
                                           (g7300
                                            (letrec ((x-cnd7303 (null? l)))
                                              (if x-cnd7303
                                                '()
                                                (letrec ((x7306
                                                          (letrec ((x7307
                                                                    (car l)))
                                                            (f x7307)))
                                                         (x7304
                                                          (letrec ((x7305
                                                                    (cdr l)))
                                                            (map f x7305))))
                                                  (cons x7306 x7304))))))
                                    g7300)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7308
                                            (letrec ((x7309 (car x)))
                                              (cdr x7309))))
                                    g7308)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7310
                                            (letrec ((x7311
                                                      (letrec ((x7312
                                                                (letrec ((x7313
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7313))))
                                                        (cdr x7312))))
                                              (car x7311))))
                                    g7310)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7314
                                            (letrec ((x7315
                                                      (letrec ((x7316
                                                                (letrec ((x7317
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7317))))
                                                        (car x7316))))
                                              (cdr x7315))))
                                    g7314)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7318
                                            (letrec ((x7321
                                                      (string? filename)))
                                              (assert x7321)))
                                           (g7319
                                            (letrec ((x7322 (procedure? proc)))
                                              (assert x7322)))
                                           (g7320
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7323
                                                        (close-output-port
                                                         output-port))
                                                       (g7324 res))
                                                g7324))))
                                    g7320)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7325
                                            (letrec ((x7326
                                                      (letrec ((x7327 (cdr x)))
                                                        (cdr x7327))))
                                              (car x7326))))
                                    g7325)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7328
                                            (letrec ((x7329
                                                      (letrec ((x7330
                                                                (letrec ((x7331
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7331))))
                                                        (car x7330))))
                                              (cdr x7329))))
                                    g7328)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7332
                                            (letrec ((x7334 (list? l)))
                                              (assert x7334)))
                                           (g7333
                                            (letrec ((x-cnd7335 (null? l)))
                                              (if x-cnd7335
                                                #f
                                                (letrec ((x-cnd7336
                                                          (letrec ((x7337
                                                                    (caar l)))
                                                            (eq? x7337 k))))
                                                  (if x-cnd7336
                                                    (car l)
                                                    (letrec ((x7338 (cdr l)))
                                                      (assq k x7338))))))))
                                    g7333)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7339
                                            (letrec ((x7340 (modulo x 2)))
                                              (= 0 x7340))))
                                    g7339)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7341
                                            (letrec ((x7343 (list? l)))
                                              (assert x7343)))
                                           (g7342
                                            (letrec ((x-cnd7344 (null? l)))
                                              (if x-cnd7344
                                                ""
                                                (letrec ((x7347
                                                          (letrec ((x7348
                                                                    (car l)))
                                                            (char->string
                                                             x7348)))
                                                         (x7345
                                                          (letrec ((x7346
                                                                    (cdr l)))
                                                            (list->string
                                                             x7346))))
                                                  (string-append
                                                   x7347
                                                   x7345))))))
                                    g7342)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7349
                                            (letrec ((x7352 (char? c1)))
                                              (assert x7352)))
                                           (g7350
                                            (letrec ((x7353 (char? c2)))
                                              (assert x7353)))
                                           (g7351
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7354
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7354))))
                                    g7351)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7355
                                            (letrec ((x7356
                                                      (letrec ((x7357
                                                                (letrec ((x7358
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7358))))
                                                        (cdr x7357))))
                                              (cdr x7356))))
                                    g7355)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7359
                                            (letrec ((x7362 (list? l)))
                                              (assert x7362)))
                                           (g7360
                                            (letrec ((x7363 (numer?)))
                                              (assert x7363)))
                                           (g7361
                                            (letrec ((x-cnd7364 (zero? k)))
                                              (if x-cnd7364
                                                x
                                                (letrec ((x7366 (cdr x))
                                                         (x7365 (- k 1)))
                                                  (list-tail x7366 x7365))))))
                                    g7361)))
                               (halt (lambda () (letrec ((g7367 '())) g7367)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7368
                                            (letrec ((x-cnd7369
                                                      (letrec ((x7370 #\a))
                                                        (char-ci>=? c x7370))))
                                              (if x-cnd7369
                                                (letrec ((x7371 #\z))
                                                  (char-ci<=? c x7371))
                                                #f))))
                                    g7368)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7372
                                            (letrec ((x7374 (number? x)))
                                              (assert x7374)))
                                           (g7373
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7375
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7376
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7376)))))
                                                g7375))))
                                    g7373)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7377
                                            (letrec ((val7146
                                                      (letrec ((x7378
                                                                (char->integer
                                                                 c)))
                                                        (= x7378 9))))
                                              (letrec ((g7379
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7380
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7380
                                                                       10))))
                                                            (letrec ((g7381
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7382
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7382
                                                                           32)))))
                                                              g7381)))))
                                                g7379))))
                                    g7377)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7383
                                            (letrec ((x7384
                                                      (letrec ((x7385 (car x)))
                                                        (cdr x7385))))
                                              (cdr x7384))))
                                    g7383)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7386
                                            (letrec ((x7388 (number? x)))
                                              (assert x7388)))
                                           (g7387 (> x 0)))
                                    g7387)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7389 #f)) g7389)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7390
                                            (letrec ((x7391 (cdr x)))
                                              (cdr x7391))))
                                    g7390)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7392
                                            (letrec ((x7394 (number? x)))
                                              (assert x7394)))
                                           (g7393
                                            (letrec ((x-cnd7395 (< x 0)))
                                              (if x-cnd7395
                                                (ceiling x)
                                                (floor x)))))
                                    g7393)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7396
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7397
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7399
                                                                              (null?
                                                                               a))
                                                                             (x7398
                                                                              (null?
                                                                               b)))
                                                                      (and x7399
                                                                           x7398))))
                                                            (letrec ((g7400
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7403
                                                                                            (string?
                                                                                             a))
                                                                                           (x7402
                                                                                            (string?
                                                                                             b))
                                                                                           (x7401
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7403
                                                                                         x7402
                                                                                         x7401))))
                                                                          (letrec ((g7404
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7412
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7411
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7408
                                                                                                          (letrec ((x7410
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7409
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7410
                                                                                                             x7409)))
                                                                                                         (x7405
                                                                                                          (letrec ((x7407
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7406
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7407
                                                                                                             x7406))))
                                                                                                  (and x7412
                                                                                                       x7411
                                                                                                       x7408
                                                                                                       x7405))))
                                                                                        (letrec ((g7413
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7432
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7431
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7414
                                                                                                              (letrec ((x7428
                                                                                                                        (letrec ((x7429
                                                                                                                                  (letrec ((x7430
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7430))))
                                                                                                                          (x7429)))
                                                                                                                       (x7415
                                                                                                                        (letrec ((x7426
                                                                                                                                  (letrec ((x7427
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7427
                                                                                                                                     n)))
                                                                                                                                 (x7416
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7417
                                                                                                                                                        (letrec ((x7424
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7418
                                                                                                                                                                  (letrec ((x7421
                                                                                                                                                                            (letrec ((x7423
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7422
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7423
                                                                                                                                                                               x7422)))
                                                                                                                                                                           (x7419
                                                                                                                                                                            (letrec ((x7420
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7420))))
                                                                                                                                                                    (and x7421
                                                                                                                                                                         x7419))))
                                                                                                                                                          (or x7424
                                                                                                                                                              x7418))))
                                                                                                                                                g7417))))
                                                                                                                                    (letrec ((g7425
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7425))))
                                                                                                                          (and x7426
                                                                                                                               x7416))))
                                                                                                                (let x7428 x7415))))
                                                                                                      (and x7432
                                                                                                           x7431
                                                                                                           x7414)))))
                                                                                          g7413)))))
                                                                            g7404)))))
                                                              g7400)))))
                                                g7397))))
                                    g7396)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7433
                                            (letrec ((x7434
                                                      (letrec ((x7435
                                                                (letrec ((x7436
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7436))))
                                                        (car x7435))))
                                              (cdr x7434))))
                                    g7433)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7437
                                            (letrec ((x7438
                                                      (letrec ((x7439
                                                                (letrec ((x7440
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7440))))
                                                        (car x7439))))
                                              (car x7438))))
                                    g7437)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7441 (eq? x y))) g7441)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7442
                                            (letrec ((x7444 (number? x)))
                                              (assert x7444)))
                                           (g7443
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7445
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7446
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7446)))))
                                                g7445))))
                                    g7443)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7447
                                            (letrec ((x7450
                                                      (string? filename)))
                                              (assert x7450)))
                                           (g7448
                                            (letrec ((x7451 (procedure? proc)))
                                              (assert x7451)))
                                           (g7449
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7452
                                                        (close-input-port
                                                         input-port))
                                                       (g7453 res))
                                                g7453))))
                                    g7449)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7454 (cons x '()))) g7454)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7455
                                            (letrec ((x7458 (char? c1)))
                                              (assert x7458)))
                                           (g7456
                                            (letrec ((x7459 (char? c2)))
                                              (assert x7459)))
                                           (g7457
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7460
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7460))))
                                    g7457)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7461
                                            (letrec ((x7462
                                                      (letrec ((x7463 (car x)))
                                                        (car x7463))))
                                              (cdr x7462))))
                                    g7461)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7464
                                            (letrec ((x7465
                                                      (letrec ((x7466
                                                                (letrec ((x7467
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7467))))
                                                        (car x7466))))
                                              (cdr x7465))))
                                    g7464)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7468
                                            (letrec ((x7469
                                                      (letrec ((x7470 (car x)))
                                                        (cdr x7470))))
                                              (car x7469))))
                                    g7468)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7471
                                            (letrec ((x7472
                                                      (letrec ((x7473 (cdr x)))
                                                        (car x7473))))
                                              (car x7472))))
                                    g7471)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7474
                                            (letrec ((x7477 (char? c1)))
                                              (assert x7477)))
                                           (g7475
                                            (letrec ((x7478 (char? c2)))
                                              (assert x7478)))
                                           (g7476
                                            (letrec ((x7479
                                                      (char-ci<=? c1 c2)))
                                              (not x7479))))
                                    g7476)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7480
                                            (letrec ((x7481
                                                      (letrec ((x7482
                                                                (letrec ((x7483
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7483))))
                                                        (car x7482))))
                                              (car x7481))))
                                    g7480)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7484
                                            (letrec ((x7486 (number? x)))
                                              (assert x7486)))
                                           (g7485 (< x 0)))
                                    g7485)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7487 (memq e l))) g7487)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7488
                                            (letrec ((x7489
                                                      (letrec ((x7490 (car x)))
                                                        (car x7490))))
                                              (car x7489))))
                                    g7488)))
                               (debug
                                (lambda (e) (letrec ((g7491 '())) g7491)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7492
                                            (letrec ((x7494 (list? l)))
                                              (assert x7494)))
                                           (g7493
                                            (letrec ((x-cnd7495 (null? l)))
                                              (if x-cnd7495
                                                '()
                                                (letrec ((x7498
                                                          (letrec ((x7499
                                                                    (cdr l)))
                                                            (reverse x7499)))
                                                         (x7496
                                                          (letrec ((x7497
                                                                    (car l)))
                                                            (list x7497))))
                                                  (append x7498 x7496))))))
                                    g7493)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7500
                                            (letrec ((x7501
                                                      (letrec ((x7502
                                                                (letrec ((x7503
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7503))))
                                                        (car x7502))))
                                              (car x7501))))
                                    g7500)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7504
                                            (letrec ((x7505
                                                      (letrec ((x7506
                                                                (letrec ((x7507
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7507))))
                                                        (cdr x7506))))
                                              (cdr x7505))))
                                    g7504)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7508
                                            (letrec ((x7510 (number? x)))
                                              (assert x7510)))
                                           (g7509
                                            (letrec ((x7511 (modulo x 2)))
                                              (= 1 x7511))))
                                    g7509)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7512
                                            (letrec ((x7513
                                                      (letrec ((x7514
                                                                (letrec ((x7515
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7515))))
                                                        (car x7514))))
                                              (car x7513))))
                                    g7512)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7516
                                            (letrec ((x7519 (procedure? proc)))
                                              (assert x7519)))
                                           (g7517
                                            (letrec ((x7520 (list? args)))
                                              (assert x7520)))
                                           (g7518
                                            (if cnd
                                              (letrec ((g7521 (proc))) g7521)
                                              (if cnd
                                                (letrec ((g7522
                                                          (letrec ((x7523
                                                                    (car
                                                                     args)))
                                                            (proc x7523))))
                                                  g7522)
                                                (if cnd
                                                  (letrec ((g7524
                                                            (letrec ((x7526
                                                                      (car
                                                                       args))
                                                                     (x7525
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7526
                                                               x7525))))
                                                    g7524)
                                                  (if cnd
                                                    (letrec ((g7527
                                                              (letrec ((x7530
                                                                        (car
                                                                         args))
                                                                       (x7529
                                                                        (cadr
                                                                         args))
                                                                       (x7528
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7530
                                                                 x7529
                                                                 x7528))))
                                                      g7527)
                                                    (if cnd
                                                      (letrec ((g7531
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
                                                                           args)))
                                                                  (proc
                                                                   x7535
                                                                   x7534
                                                                   x7533
                                                                   x7532))))
                                                        g7531)
                                                      (if cnd
                                                        (letrec ((g7536
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
                                                                               x7538))))
                                                                    (proc
                                                                     x7542
                                                                     x7541
                                                                     x7540
                                                                     x7539
                                                                     x7537))))
                                                          g7536)
                                                        (if cnd
                                                          (letrec ((g7543
                                                                    (letrec ((x7551
                                                                              (car
                                                                               args))
                                                                             (x7550
                                                                              (cadr
                                                                               args))
                                                                             (x7549
                                                                              (caddr
                                                                               args))
                                                                             (x7548
                                                                              (cadddr
                                                                               args))
                                                                             (x7546
                                                                              (letrec ((x7547
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7547)))
                                                                             (x7544
                                                                              (letrec ((x7545
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7545))))
                                                                      (proc
                                                                       x7551
                                                                       x7550
                                                                       x7549
                                                                       x7548
                                                                       x7546
                                                                       x7544))))
                                                            g7543)
                                                          (if cnd
                                                            (letrec ((g7552
                                                                      (letrec ((x7562
                                                                                (car
                                                                                 args))
                                                                               (x7561
                                                                                (cadr
                                                                                 args))
                                                                               (x7560
                                                                                (caddr
                                                                                 args))
                                                                               (x7559
                                                                                (cadddr
                                                                                 args))
                                                                               (x7557
                                                                                (letrec ((x7558
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7558)))
                                                                               (x7555
                                                                                (letrec ((x7556
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7556)))
                                                                               (x7553
                                                                                (letrec ((x7554
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7554))))
                                                                        (proc
                                                                         x7562
                                                                         x7561
                                                                         x7560
                                                                         x7559
                                                                         x7557
                                                                         x7555
                                                                         x7553))))
                                                              g7552)
                                                            (letrec ((g7563
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7563)))))))))))
                                    g7518)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7564
                                            (letrec ((x7566 (list? l)))
                                              (assert x7566)))
                                           (g7565
                                            (letrec ((x-cnd7567 (null? l)))
                                              (if x-cnd7567
                                                #f
                                                (letrec ((x-cnd7568
                                                          (letrec ((x7569
                                                                    (car l)))
                                                            (equal? x7569 e))))
                                                  (if x-cnd7568
                                                    l
                                                    (letrec ((x7570 (cdr l)))
                                                      (member e x7570))))))))
                                    g7565)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7571
                                            (letrec ((x7572
                                                      (letrec ((x7573
                                                                (letrec ((x7574
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7574))))
                                                        (cdr x7573))))
                                              (cdr x7572))))
                                    g7571)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g7575
                                            (letrec ((x7576
                                                      (letrec ((x7577
                                                                (letrec ((x7578
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7578))))
                                                        (cdr x7577))))
                                              (car x7576))))
                                    g7575)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7579 (random 42))) g7579)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7580
                                            (letrec ((x7582 (number? x)))
                                              (assert x7582)))
                                           (g7581 (= x 0)))
                                    g7581)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7583
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7584
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7584))))
                                    g7583)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7585
                                            (letrec ((x7586 (cdr x)))
                                              (car x7586))))
                                    g7585)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7587
                                            (letrec ((val7156
                                                      (letrec ((x7590
                                                                (pair? l))
                                                               (x7588
                                                                (letrec ((x7589
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7589))))
                                                        (and x7590 x7588))))
                                              (letrec ((g7591
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7591))))
                                    g7587)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7592
                                            (letrec ((x7593
                                                      (letrec ((x7594
                                                                (letrec ((x7595
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7595))))
                                                        (cdr x7594))))
                                              (cdr x7593))))
                                    g7592)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7596
                                            (letrec ((x-cnd7597
                                                      (letrec ((x7598 #\0))
                                                        (char<=? x7598 c))))
                                              (if x-cnd7597
                                                (letrec ((x7599 #\9))
                                                  (char<=? c x7599))
                                                #f))))
                                    g7596)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7600
                                            (letrec ((x7602 (list? l)))
                                              (assert x7602)))
                                           (g7601
                                            (letrec ((x-cnd7603 (null? l)))
                                              (if x-cnd7603
                                                #f
                                                (letrec ((x-cnd7604
                                                          (letrec ((x7605
                                                                    (caar l)))
                                                            (eqv? x7605 k))))
                                                  (if x-cnd7604
                                                    (car l)
                                                    (letrec ((x7606 (cdr l)))
                                                      (assq k x7606))))))))
                                    g7601)))
                               (not
                                (lambda (x)
                                  (letrec ((g7607 (if x #f #t))) g7607)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7608 (append l1 l2))) g7608)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7609
                                            (letrec ((x7611 (list? l)))
                                              (assert x7611)))
                                           (g7610
                                            (letrec ((x-cnd7612 (null? l)))
                                              (if x-cnd7612
                                                #f
                                                (letrec ((x-cnd7613
                                                          (letrec ((x7614
                                                                    (car l)))
                                                            (eq? x7614 e))))
                                                  (if x-cnd7613
                                                    l
                                                    (letrec ((x7615 (cdr l)))
                                                      (memq e x7615))))))))
                                    g7610)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7616
                                            (letrec ((x7617
                                                      (letrec ((x7618
                                                                (letrec ((x7619
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7619))))
                                                        (cdr x7618))))
                                              (car x7617))))
                                    g7616)))
                               (length
                                (lambda (l)
                                  (letrec ((g7620
                                            (letrec ((x7622 (list? l)))
                                              (assert x7622)))
                                           (g7621
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7623
                                                                  (letrec ((x-cnd7624
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7624
                                                                      0
                                                                      (letrec ((x7625
                                                                                (letrec ((x7626
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7626))))
                                                                        (+
                                                                         1
                                                                         x7625))))))
                                                          g7623))))
                                              (letrec ((g7627 (rec l)))
                                                g7627))))
                                    g7621)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7628
                                            (letrec ((x7631 (char? c1)))
                                              (assert x7631)))
                                           (g7629
                                            (letrec ((x7632 (char? c2)))
                                              (assert x7632)))
                                           (g7630
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7633
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7633))))
                                    g7630)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7634
                                            (letrec ((x7635 (string<=? s1 s2)))
                                              (not x7635))))
                                    g7634)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7636
                                            (letrec ((x7637
                                                      (letrec ((x7638 (cdr x)))
                                                        (car x7638))))
                                              (cdr x7637))))
                                    g7636)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7639
                                            (letrec ((x7641 (list? l)))
                                              (assert x7641)))
                                           (g7640
                                            (letrec ((x-cnd7642 (null? l)))
                                              (if x-cnd7642
                                                #f
                                                (letrec ((x-cnd7643
                                                          (letrec ((x7644
                                                                    (caar l)))
                                                            (equal? x7644 k))))
                                                  (if x-cnd7643
                                                    (car l)
                                                    (letrec ((x7645 (cdr l)))
                                                      (assoc k x7645))))))))
                                    g7640)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7646
                                            (letrec ((x7647 (car x)))
                                              (car x7647))))
                                    g7646)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7648
                                            (letrec ((x7651 (char? c1)))
                                              (assert x7651)))
                                           (g7649
                                            (letrec ((x7652 (char? c2)))
                                              (assert x7652)))
                                           (g7650
                                            (letrec ((x7653 (char<=? c1 c2)))
                                              (not x7653))))
                                    g7650)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7654
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7655
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7655))))
                                    g7654)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7656
                                            (letrec ((x7659 (procedure? f)))
                                              (assert x7659)))
                                           (g7657
                                            (letrec ((x7660 (list? l)))
                                              (assert x7660)))
                                           (g7658
                                            (letrec ((x-cnd7661 (null? l)))
                                              (if x-cnd7661
                                                #t
                                                (letrec ((x-cnd7662 (pair? l)))
                                                  (if x-cnd7662
                                                    (letrec ((g7663
                                                              (letrec ((x7665
                                                                        (car
                                                                         l)))
                                                                (f x7665)))
                                                             (g7664
                                                              (letrec ((x7666
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7666))))
                                                      g7664)
                                                    '()))))))
                                    g7658)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7667
                                            (letrec ((x7669 (number? x)))
                                              (assert x7669)))
                                           (g7668
                                            (letrec ((x-cnd7670 (< x 0)))
                                              (if x-cnd7670 (- 0 x) x))))
                                    g7668)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7671
                                            (letrec ((x7674 (char? c1)))
                                              (assert x7674)))
                                           (g7672
                                            (letrec ((x7675 (char? c2)))
                                              (assert x7675)))
                                           (g7673
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7676
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7676))))
                                    g7673)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7677
                                            (letrec ((x7678
                                                      (letrec ((x7679
                                                                (letrec ((x7680
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7680))))
                                                        (cdr x7679))))
                                              (car x7678))))
                                    g7677)))
                               (newline
                                (lambda () (letrec ((g7681 #f)) g7681)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7682
                                            (letrec ((x7684
                                                      (letrec ((x7685 (* m n)))
                                                        (abs x7685)))
                                                     (x7683 (gcd m n)))
                                              (/ x7684 x7683))))
                                    g7682)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7686
                                            (letrec ((x7688 (number? x)))
                                              (assert x7688)))
                                           (g7687
                                            (letrec ((x7689 (<= x y)))
                                              (not x7689))))
                                    g7687)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7690
                                            (letrec ((x7694 (list? l)))
                                              (assert x7694)))
                                           (g7691
                                            (letrec ((x7695 (number? index)))
                                              (assert x7695)))
                                           (g7692
                                            (letrec ((x7696
                                                      (letrec ((x7697
                                                                (length l)))
                                                        (< index x7697))))
                                              (assert x7696)))
                                           (g7693
                                            (letrec ((x-cnd7698 (= index 0)))
                                              (if x-cnd7698
                                                (car l)
                                                (letrec ((x7700 (cdr l))
                                                         (x7699 (- index 1)))
                                                  (list-ref x7700 x7699))))))
                                    g7693)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7701
                                            (letrec ((x-cnd7702 (= b 0)))
                                              (if x-cnd7702
                                                a
                                                (letrec ((x7703 (modulo a b)))
                                                  (gcd b x7703))))))
                                    g7701)))
                               (real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7704
                                            (letrec ((x-cnd7705 (real? g7162)))
                                              (if x-cnd7705
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7704)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7706
                                            (letrec ((x-cnd7707
                                                      (boolean? g7165)))
                                              (if x-cnd7707
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7706)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7708
                                            (letrec ((x-cnd7709
                                                      (number? g7168)))
                                              (if x-cnd7709
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7708)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7710
                                            (letrec ((x-cnd7711
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7711
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7710)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7712
                                            (letrec ((x-cnd7713
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7713
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7712)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7714
                                            (letrec ((x-cnd7715 (pair? g7177)))
                                              (if x-cnd7715
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7714)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7716
                                            (letrec ((x-cnd7717 (pair? g7180)))
                                              (if x-cnd7717
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7716)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7718
                                            (letrec ((x-cnd7719
                                                      (integer? g7183)))
                                              (if x-cnd7719
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7718)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7720
                                            (lambda (k j v)
                                              (letrec ((g7721
                                                        (letrec ((x-cnd7722
                                                                  (c1 k j v)))
                                                          (if x-cnd7722
                                                            (c2 k j v)
                                                            #f))))
                                                g7721))))
                                    g7720)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7723
                                            (lambda (k j v)
                                              (letrec ((g7724
                                                        (letrec ((x-cnd7725
                                                                  (null? v)))
                                                          (if x-cnd7725
                                                            '()
                                                            (letrec ((x7729
                                                                      (letrec ((x7730
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7730)))
                                                                     (x7726
                                                                      (letrec ((x7728
                                                                                (list-of
                                                                                 contract))
                                                                               (x7727
                                                                                (cdr
                                                                                 v)))
                                                                        (x7728
                                                                         k
                                                                         j
                                                                         x7727))))
                                                              (cons
                                                               x7729
                                                               x7726))))))
                                                g7724))))
                                    g7723)))
                               (any? (lambda (v) (letrec ((g7731 #t)) g7731)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7732
                                            (letrec ((x7733 (= v 0)))
                                              (not x7733))))
                                    g7732)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7734
                                            (letrec ((x-cnd7735
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7735
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7734)))
                               (meta (lambda (v) (letrec ((g7736 v)) g7736)))
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
                                (lambda (cnd) (letrec ((g7737 #t)) g7737)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7738
                                            (letrec ((x7739
                                                      (letrec ((x7740 (cdr x)))
                                                        (cdr x7740))))
                                              (cdr x7739))))
                                    g7738)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7741
                                            (letrec ((x7744 (procedure? f)))
                                              (assert x7744)))
                                           (g7742
                                            (letrec ((x7745 (list? l)))
                                              (assert x7745)))
                                           (g7743
                                            (letrec ((x-cnd7746 (null? l)))
                                              (if x-cnd7746
                                                '()
                                                (letrec ((x7749
                                                          (letrec ((x7750
                                                                    (car l)))
                                                            (f x7750)))
                                                         (x7747
                                                          (letrec ((x7748
                                                                    (cdr l)))
                                                            (map f x7748))))
                                                  (cons x7749 x7747))))))
                                    g7743)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7751
                                            (letrec ((x7752 (car x)))
                                              (cdr x7752))))
                                    g7751)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7753
                                            (letrec ((x7754
                                                      (letrec ((x7755
                                                                (letrec ((x7756
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7756))))
                                                        (cdr x7755))))
                                              (car x7754))))
                                    g7753)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7757
                                            (letrec ((x7758
                                                      (letrec ((x7759
                                                                (letrec ((x7760
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7760))))
                                                        (car x7759))))
                                              (cdr x7758))))
                                    g7757)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7761
                                            (letrec ((x7764
                                                      (string? filename)))
                                              (assert x7764)))
                                           (g7762
                                            (letrec ((x7765 (procedure? proc)))
                                              (assert x7765)))
                                           (g7763
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7766
                                                        (close-output-port
                                                         output-port))
                                                       (g7767 res))
                                                g7767))))
                                    g7763)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7768
                                            (letrec ((x7769
                                                      (letrec ((x7770 (cdr x)))
                                                        (cdr x7770))))
                                              (car x7769))))
                                    g7768)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7771
                                            (letrec ((x7772
                                                      (letrec ((x7773
                                                                (letrec ((x7774
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7774))))
                                                        (car x7773))))
                                              (cdr x7772))))
                                    g7771)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7775
                                            (letrec ((x7777 (list? l)))
                                              (assert x7777)))
                                           (g7776
                                            (letrec ((x-cnd7778 (null? l)))
                                              (if x-cnd7778
                                                #f
                                                (letrec ((x-cnd7779
                                                          (letrec ((x7780
                                                                    (caar l)))
                                                            (eq? x7780 k))))
                                                  (if x-cnd7779
                                                    (car l)
                                                    (letrec ((x7781 (cdr l)))
                                                      (assq k x7781))))))))
                                    g7776)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7782
                                            (letrec ((x7783 (modulo x 2)))
                                              (= 0 x7783))))
                                    g7782)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7784
                                            (letrec ((x7786 (list? l)))
                                              (assert x7786)))
                                           (g7785
                                            (letrec ((x-cnd7787 (null? l)))
                                              (if x-cnd7787
                                                ""
                                                (letrec ((x7790
                                                          (letrec ((x7791
                                                                    (car l)))
                                                            (char->string
                                                             x7791)))
                                                         (x7788
                                                          (letrec ((x7789
                                                                    (cdr l)))
                                                            (list->string
                                                             x7789))))
                                                  (string-append
                                                   x7790
                                                   x7788))))))
                                    g7785)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7792
                                            (letrec ((x7795 (char? c1)))
                                              (assert x7795)))
                                           (g7793
                                            (letrec ((x7796 (char? c2)))
                                              (assert x7796)))
                                           (g7794
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7797
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7797))))
                                    g7794)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7798
                                            (letrec ((x7799
                                                      (letrec ((x7800
                                                                (letrec ((x7801
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7801))))
                                                        (cdr x7800))))
                                              (cdr x7799))))
                                    g7798)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7802
                                            (letrec ((x7805 (list? l)))
                                              (assert x7805)))
                                           (g7803
                                            (letrec ((x7806 (numer?)))
                                              (assert x7806)))
                                           (g7804
                                            (letrec ((x-cnd7807 (zero? k)))
                                              (if x-cnd7807
                                                x
                                                (letrec ((x7809 (cdr x))
                                                         (x7808 (- k 1)))
                                                  (list-tail x7809 x7808))))))
                                    g7804)))
                               (halt (lambda () (letrec ((g7810 '())) g7810)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7811
                                            (letrec ((x-cnd7812
                                                      (letrec ((x7813 #\a))
                                                        (char-ci>=? c x7813))))
                                              (if x-cnd7812
                                                (letrec ((x7814 #\z))
                                                  (char-ci<=? c x7814))
                                                #f))))
                                    g7811)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7815
                                            (letrec ((x7817 (number? x)))
                                              (assert x7817)))
                                           (g7816
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7818
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7819
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7819)))))
                                                g7818))))
                                    g7816)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7820
                                            (letrec ((val7146
                                                      (letrec ((x7821
                                                                (char->integer
                                                                 c)))
                                                        (= x7821 9))))
                                              (letrec ((g7822
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7823
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7823
                                                                       10))))
                                                            (letrec ((g7824
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7825
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7825
                                                                           32)))))
                                                              g7824)))))
                                                g7822))))
                                    g7820)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7826
                                            (letrec ((x7827
                                                      (letrec ((x7828 (car x)))
                                                        (cdr x7828))))
                                              (cdr x7827))))
                                    g7826)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7829
                                            (letrec ((x7831 (number? x)))
                                              (assert x7831)))
                                           (g7830 (> x 0)))
                                    g7830)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7832 #f)) g7832)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7833
                                            (letrec ((x7834 (cdr x)))
                                              (cdr x7834))))
                                    g7833)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7835
                                            (letrec ((x7837 (number? x)))
                                              (assert x7837)))
                                           (g7836
                                            (letrec ((x-cnd7838 (< x 0)))
                                              (if x-cnd7838
                                                (ceiling x)
                                                (floor x)))))
                                    g7836)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7839
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7840
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7842
                                                                              (null?
                                                                               a))
                                                                             (x7841
                                                                              (null?
                                                                               b)))
                                                                      (and x7842
                                                                           x7841))))
                                                            (letrec ((g7843
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7846
                                                                                            (string?
                                                                                             a))
                                                                                           (x7845
                                                                                            (string?
                                                                                             b))
                                                                                           (x7844
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7846
                                                                                         x7845
                                                                                         x7844))))
                                                                          (letrec ((g7847
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7855
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7854
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7851
                                                                                                          (letrec ((x7853
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7852
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7853
                                                                                                             x7852)))
                                                                                                         (x7848
                                                                                                          (letrec ((x7850
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7849
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7850
                                                                                                             x7849))))
                                                                                                  (and x7855
                                                                                                       x7854
                                                                                                       x7851
                                                                                                       x7848))))
                                                                                        (letrec ((g7856
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7875
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7874
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7857
                                                                                                              (letrec ((x7871
                                                                                                                        (letrec ((x7872
                                                                                                                                  (letrec ((x7873
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7873))))
                                                                                                                          (x7872)))
                                                                                                                       (x7858
                                                                                                                        (letrec ((x7869
                                                                                                                                  (letrec ((x7870
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7870
                                                                                                                                     n)))
                                                                                                                                 (x7859
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7860
                                                                                                                                                        (letrec ((x7867
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7861
                                                                                                                                                                  (letrec ((x7864
                                                                                                                                                                            (letrec ((x7866
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7865
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7866
                                                                                                                                                                               x7865)))
                                                                                                                                                                           (x7862
                                                                                                                                                                            (letrec ((x7863
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7863))))
                                                                                                                                                                    (and x7864
                                                                                                                                                                         x7862))))
                                                                                                                                                          (or x7867
                                                                                                                                                              x7861))))
                                                                                                                                                g7860))))
                                                                                                                                    (letrec ((g7868
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7868))))
                                                                                                                          (and x7869
                                                                                                                               x7859))))
                                                                                                                (let x7871 x7858))))
                                                                                                      (and x7875
                                                                                                           x7874
                                                                                                           x7857)))))
                                                                                          g7856)))))
                                                                            g7847)))))
                                                              g7843)))))
                                                g7840))))
                                    g7839)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7876
                                            (letrec ((x7877
                                                      (letrec ((x7878
                                                                (letrec ((x7879
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7879))))
                                                        (car x7878))))
                                              (cdr x7877))))
                                    g7876)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7880
                                            (letrec ((x7881
                                                      (letrec ((x7882
                                                                (letrec ((x7883
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7883))))
                                                        (car x7882))))
                                              (car x7881))))
                                    g7880)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7884 (eq? x y))) g7884)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7885
                                            (letrec ((x7887 (number? x)))
                                              (assert x7887)))
                                           (g7886
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7888
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7889
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7889)))))
                                                g7888))))
                                    g7886)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7890
                                            (letrec ((x7893
                                                      (string? filename)))
                                              (assert x7893)))
                                           (g7891
                                            (letrec ((x7894 (procedure? proc)))
                                              (assert x7894)))
                                           (g7892
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7895
                                                        (close-input-port
                                                         input-port))
                                                       (g7896 res))
                                                g7896))))
                                    g7892)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7897 (cons x '()))) g7897)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7898
                                            (letrec ((x7901 (char? c1)))
                                              (assert x7901)))
                                           (g7899
                                            (letrec ((x7902 (char? c2)))
                                              (assert x7902)))
                                           (g7900
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7903
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7903))))
                                    g7900)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7904
                                            (letrec ((x7905
                                                      (letrec ((x7906 (car x)))
                                                        (car x7906))))
                                              (cdr x7905))))
                                    g7904)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7907
                                            (letrec ((x7908
                                                      (letrec ((x7909
                                                                (letrec ((x7910
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7910))))
                                                        (car x7909))))
                                              (cdr x7908))))
                                    g7907)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7911
                                            (letrec ((x7912
                                                      (letrec ((x7913 (car x)))
                                                        (cdr x7913))))
                                              (car x7912))))
                                    g7911)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7914
                                            (letrec ((x7915
                                                      (letrec ((x7916 (cdr x)))
                                                        (car x7916))))
                                              (car x7915))))
                                    g7914)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7917
                                            (letrec ((x7920 (char? c1)))
                                              (assert x7920)))
                                           (g7918
                                            (letrec ((x7921 (char? c2)))
                                              (assert x7921)))
                                           (g7919
                                            (letrec ((x7922
                                                      (char-ci<=? c1 c2)))
                                              (not x7922))))
                                    g7919)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7923
                                            (letrec ((x7924
                                                      (letrec ((x7925
                                                                (letrec ((x7926
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7926))))
                                                        (car x7925))))
                                              (car x7924))))
                                    g7923)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7927
                                            (letrec ((x7929 (number? x)))
                                              (assert x7929)))
                                           (g7928 (< x 0)))
                                    g7928)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7930 (memq e l))) g7930)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7931
                                            (letrec ((x7932
                                                      (letrec ((x7933 (car x)))
                                                        (car x7933))))
                                              (car x7932))))
                                    g7931)))
                               (debug
                                (lambda (e) (letrec ((g7934 '())) g7934)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7935
                                            (letrec ((x7937 (list? l)))
                                              (assert x7937)))
                                           (g7936
                                            (letrec ((x-cnd7938 (null? l)))
                                              (if x-cnd7938
                                                '()
                                                (letrec ((x7941
                                                          (letrec ((x7942
                                                                    (cdr l)))
                                                            (reverse x7942)))
                                                         (x7939
                                                          (letrec ((x7940
                                                                    (car l)))
                                                            (list x7940))))
                                                  (append x7941 x7939))))))
                                    g7936)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7943
                                            (letrec ((x7944
                                                      (letrec ((x7945
                                                                (letrec ((x7946
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7946))))
                                                        (car x7945))))
                                              (car x7944))))
                                    g7943)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7947
                                            (letrec ((x7948
                                                      (letrec ((x7949
                                                                (letrec ((x7950
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7950))))
                                                        (cdr x7949))))
                                              (cdr x7948))))
                                    g7947)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7951
                                            (letrec ((x7953 (number? x)))
                                              (assert x7953)))
                                           (g7952
                                            (letrec ((x7954 (modulo x 2)))
                                              (= 1 x7954))))
                                    g7952)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7955
                                            (letrec ((x7956
                                                      (letrec ((x7957
                                                                (letrec ((x7958
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7958))))
                                                        (car x7957))))
                                              (car x7956))))
                                    g7955)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7959
                                            (letrec ((x7962 (procedure? proc)))
                                              (assert x7962)))
                                           (g7960
                                            (letrec ((x7963 (list? args)))
                                              (assert x7963)))
                                           (g7961
                                            (if cnd
                                              (letrec ((g7964 (proc))) g7964)
                                              (if cnd
                                                (letrec ((g7965
                                                          (letrec ((x7966
                                                                    (car
                                                                     args)))
                                                            (proc x7966))))
                                                  g7965)
                                                (if cnd
                                                  (letrec ((g7967
                                                            (letrec ((x7969
                                                                      (car
                                                                       args))
                                                                     (x7968
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7969
                                                               x7968))))
                                                    g7967)
                                                  (if cnd
                                                    (letrec ((g7970
                                                              (letrec ((x7973
                                                                        (car
                                                                         args))
                                                                       (x7972
                                                                        (cadr
                                                                         args))
                                                                       (x7971
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7973
                                                                 x7972
                                                                 x7971))))
                                                      g7970)
                                                    (if cnd
                                                      (letrec ((g7974
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
                                                                           args)))
                                                                  (proc
                                                                   x7978
                                                                   x7977
                                                                   x7976
                                                                   x7975))))
                                                        g7974)
                                                      (if cnd
                                                        (letrec ((g7979
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
                                                                               x7981))))
                                                                    (proc
                                                                     x7985
                                                                     x7984
                                                                     x7983
                                                                     x7982
                                                                     x7980))))
                                                          g7979)
                                                        (if cnd
                                                          (letrec ((g7986
                                                                    (letrec ((x7994
                                                                              (car
                                                                               args))
                                                                             (x7993
                                                                              (cadr
                                                                               args))
                                                                             (x7992
                                                                              (caddr
                                                                               args))
                                                                             (x7991
                                                                              (cadddr
                                                                               args))
                                                                             (x7989
                                                                              (letrec ((x7990
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7990)))
                                                                             (x7987
                                                                              (letrec ((x7988
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7988))))
                                                                      (proc
                                                                       x7994
                                                                       x7993
                                                                       x7992
                                                                       x7991
                                                                       x7989
                                                                       x7987))))
                                                            g7986)
                                                          (if cnd
                                                            (letrec ((g7995
                                                                      (letrec ((x8005
                                                                                (car
                                                                                 args))
                                                                               (x8004
                                                                                (cadr
                                                                                 args))
                                                                               (x8003
                                                                                (caddr
                                                                                 args))
                                                                               (x8002
                                                                                (cadddr
                                                                                 args))
                                                                               (x8000
                                                                                (letrec ((x8001
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x8001)))
                                                                               (x7998
                                                                                (letrec ((x7999
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7999)))
                                                                               (x7996
                                                                                (letrec ((x7997
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7997))))
                                                                        (proc
                                                                         x8005
                                                                         x8004
                                                                         x8003
                                                                         x8002
                                                                         x8000
                                                                         x7998
                                                                         x7996))))
                                                              g7995)
                                                            (letrec ((g8006
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g8006)))))))))))
                                    g7961)))
                               (member
                                (lambda (e l)
                                  (letrec ((g8007
                                            (letrec ((x8009 (list? l)))
                                              (assert x8009)))
                                           (g8008
                                            (letrec ((x-cnd8010 (null? l)))
                                              (if x-cnd8010
                                                #f
                                                (letrec ((x-cnd8011
                                                          (letrec ((x8012
                                                                    (car l)))
                                                            (equal? x8012 e))))
                                                  (if x-cnd8011
                                                    l
                                                    (letrec ((x8013 (cdr l)))
                                                      (member e x8013))))))))
                                    g8008)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g8014
                                            (letrec ((x8015
                                                      (letrec ((x8016
                                                                (letrec ((x8017
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8017))))
                                                        (cdr x8016))))
                                              (cdr x8015))))
                                    g8014)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g8018
                                            (letrec ((x8019
                                                      (letrec ((x8020
                                                                (letrec ((x8021
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8021))))
                                                        (cdr x8020))))
                                              (car x8019))))
                                    g8018)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8022 (random 42))) g8022)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8023
                                            (letrec ((x8025 (number? x)))
                                              (assert x8025)))
                                           (g8024 (= x 0)))
                                    g8024)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8026
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8027
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8027))))
                                    g8026)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8028
                                            (letrec ((x8029 (cdr x)))
                                              (car x8029))))
                                    g8028)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8030
                                            (letrec ((val7156
                                                      (letrec ((x8033
                                                                (pair? l))
                                                               (x8031
                                                                (letrec ((x8032
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8032))))
                                                        (and x8033 x8031))))
                                              (letrec ((g8034
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8034))))
                                    g8030)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8035
                                            (letrec ((x8036
                                                      (letrec ((x8037
                                                                (letrec ((x8038
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8038))))
                                                        (cdr x8037))))
                                              (cdr x8036))))
                                    g8035)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8039
                                            (letrec ((x-cnd8040
                                                      (letrec ((x8041 #\0))
                                                        (char<=? x8041 c))))
                                              (if x-cnd8040
                                                (letrec ((x8042 #\9))
                                                  (char<=? c x8042))
                                                #f))))
                                    g8039)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8043
                                            (letrec ((x8045 (list? l)))
                                              (assert x8045)))
                                           (g8044
                                            (letrec ((x-cnd8046 (null? l)))
                                              (if x-cnd8046
                                                #f
                                                (letrec ((x-cnd8047
                                                          (letrec ((x8048
                                                                    (caar l)))
                                                            (eqv? x8048 k))))
                                                  (if x-cnd8047
                                                    (car l)
                                                    (letrec ((x8049 (cdr l)))
                                                      (assq k x8049))))))))
                                    g8044)))
                               (not
                                (lambda (x)
                                  (letrec ((g8050 (if x #f #t))) g8050)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8051 (append l1 l2))) g8051)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8052
                                            (letrec ((x8054 (list? l)))
                                              (assert x8054)))
                                           (g8053
                                            (letrec ((x-cnd8055 (null? l)))
                                              (if x-cnd8055
                                                #f
                                                (letrec ((x-cnd8056
                                                          (letrec ((x8057
                                                                    (car l)))
                                                            (eq? x8057 e))))
                                                  (if x-cnd8056
                                                    l
                                                    (letrec ((x8058 (cdr l)))
                                                      (memq e x8058))))))))
                                    g8053)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8059
                                            (letrec ((x8060
                                                      (letrec ((x8061
                                                                (letrec ((x8062
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8062))))
                                                        (cdr x8061))))
                                              (car x8060))))
                                    g8059)))
                               (length
                                (lambda (l)
                                  (letrec ((g8063
                                            (letrec ((x8065 (list? l)))
                                              (assert x8065)))
                                           (g8064
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8066
                                                                  (letrec ((x-cnd8067
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8067
                                                                      0
                                                                      (letrec ((x8068
                                                                                (letrec ((x8069
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8069))))
                                                                        (+
                                                                         1
                                                                         x8068))))))
                                                          g8066))))
                                              (letrec ((g8070 (rec l)))
                                                g8070))))
                                    g8064)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8071
                                            (letrec ((x8074 (char? c1)))
                                              (assert x8074)))
                                           (g8072
                                            (letrec ((x8075 (char? c2)))
                                              (assert x8075)))
                                           (g8073
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8076
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8076))))
                                    g8073)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8077
                                            (letrec ((x8078 (string<=? s1 s2)))
                                              (not x8078))))
                                    g8077)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8079
                                            (letrec ((x8080
                                                      (letrec ((x8081 (cdr x)))
                                                        (car x8081))))
                                              (cdr x8080))))
                                    g8079)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8082
                                            (letrec ((x8084 (list? l)))
                                              (assert x8084)))
                                           (g8083
                                            (letrec ((x-cnd8085 (null? l)))
                                              (if x-cnd8085
                                                #f
                                                (letrec ((x-cnd8086
                                                          (letrec ((x8087
                                                                    (caar l)))
                                                            (equal? x8087 k))))
                                                  (if x-cnd8086
                                                    (car l)
                                                    (letrec ((x8088 (cdr l)))
                                                      (assoc k x8088))))))))
                                    g8083)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8089
                                            (letrec ((x8090 (car x)))
                                              (car x8090))))
                                    g8089)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8091
                                            (letrec ((x8094 (char? c1)))
                                              (assert x8094)))
                                           (g8092
                                            (letrec ((x8095 (char? c2)))
                                              (assert x8095)))
                                           (g8093
                                            (letrec ((x8096 (char<=? c1 c2)))
                                              (not x8096))))
                                    g8093)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8097
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8098
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8098))))
                                    g8097)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8099
                                            (letrec ((x8102 (procedure? f)))
                                              (assert x8102)))
                                           (g8100
                                            (letrec ((x8103 (list? l)))
                                              (assert x8103)))
                                           (g8101
                                            (letrec ((x-cnd8104 (null? l)))
                                              (if x-cnd8104
                                                #t
                                                (letrec ((x-cnd8105 (pair? l)))
                                                  (if x-cnd8105
                                                    (letrec ((g8106
                                                              (letrec ((x8108
                                                                        (car
                                                                         l)))
                                                                (f x8108)))
                                                             (g8107
                                                              (letrec ((x8109
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8109))))
                                                      g8107)
                                                    '()))))))
                                    g8101)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8110
                                            (letrec ((x8112 (number? x)))
                                              (assert x8112)))
                                           (g8111
                                            (letrec ((x-cnd8113 (< x 0)))
                                              (if x-cnd8113 (- 0 x) x))))
                                    g8111)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8114
                                            (letrec ((x8117 (char? c1)))
                                              (assert x8117)))
                                           (g8115
                                            (letrec ((x8118 (char? c2)))
                                              (assert x8118)))
                                           (g8116
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8119
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8119))))
                                    g8116)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8120
                                            (letrec ((x8121
                                                      (letrec ((x8122
                                                                (letrec ((x8123
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8123))))
                                                        (cdr x8122))))
                                              (car x8121))))
                                    g8120)))
                               (newline
                                (lambda () (letrec ((g8124 #f)) g8124)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8125
                                            (letrec ((x8127
                                                      (letrec ((x8128 (* m n)))
                                                        (abs x8128)))
                                                     (x8126 (gcd m n)))
                                              (/ x8127 x8126))))
                                    g8125)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8129
                                            (letrec ((x8131 (number? x)))
                                              (assert x8131)))
                                           (g8130
                                            (letrec ((x8132 (<= x y)))
                                              (not x8132))))
                                    g8130)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8133
                                            (letrec ((x8137 (list? l)))
                                              (assert x8137)))
                                           (g8134
                                            (letrec ((x8138 (number? index)))
                                              (assert x8138)))
                                           (g8135
                                            (letrec ((x8139
                                                      (letrec ((x8140
                                                                (length l)))
                                                        (< index x8140))))
                                              (assert x8139)))
                                           (g8136
                                            (letrec ((x-cnd8141 (= index 0)))
                                              (if x-cnd8141
                                                (car l)
                                                (letrec ((x8143 (cdr l))
                                                         (x8142 (- index 1)))
                                                  (list-ref x8143 x8142))))))
                                    g8136)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8144
                                            (letrec ((x-cnd8145 (= b 0)))
                                              (if x-cnd8145
                                                a
                                                (letrec ((x8146 (modulo a b)))
                                                  (gcd b x8146))))))
                                    g8144))))
                        (letrec ((g8147
                                  (letrec ((g8148
                                            (letrec ((foldr
                                                      (lambda (f z xs)
                                                        (letrec ((g8149
                                                                  (letrec ((x-cnd8150
                                                                            (empty?
                                                                             xs)))
                                                                    (if x-cnd8150
                                                                      z
                                                                      (letrec ((x8153
                                                                                (car
                                                                                 xs))
                                                                               (x8151
                                                                                (letrec ((x8152
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (foldr
                                                                                   f
                                                                                   z
                                                                                   x8152))))
                                                                        (f
                                                                         x8153
                                                                         x8151))))))
                                                          g8149)))
                                                     (map
                                                      (lambda (f xs)
                                                        (letrec ((g8154
                                                                  (letrec ((x8155
                                                                            (letrec ((x8158
                                                                                      (x
                                                                                       ys))
                                                                                     (x8156
                                                                                      (letrec ((x8157
                                                                                                (f
                                                                                                 x)))
                                                                                        (cons
                                                                                         x8157
                                                                                         ys))))
                                                                              (λ x8158
                                                                                x8156))))
                                                                    (foldr
                                                                     x8155
                                                                     empty
                                                                     xs))))
                                                          g8154))))
                                              (letrec ((g8159
                                                        (letrec ((g8160
                                                                  (letrec ((g8161
                                                                            (letrec ((x8166
                                                                                      ((lambda (j7232
                                                                                                k7233
                                                                                                f7234)
                                                                                         (lambda (g7229
                                                                                                  g7230
                                                                                                  g7231)
                                                                                           (any/c
                                                                                            j7232
                                                                                            k7233
                                                                                            (f7234
                                                                                             ((lambda (j7237
                                                                                                       k7238
                                                                                                       f7239)
                                                                                                (lambda (g7235
                                                                                                         g7236)
                                                                                                  (any/c
                                                                                                   j7237
                                                                                                   k7238
                                                                                                   (f7239
                                                                                                    (any/c
                                                                                                     j7237
                                                                                                     k7238
                                                                                                     g7235)
                                                                                                    (any/c
                                                                                                     j7237
                                                                                                     k7238
                                                                                                     g7236)))))
                                                                                              j7232
                                                                                              k7233
                                                                                              g7229)
                                                                                             (any/c
                                                                                              j7232
                                                                                              k7233
                                                                                              g7230)
                                                                                             ((listof
                                                                                               any/c)
                                                                                              j7232
                                                                                              k7233
                                                                                              g7231)))))
                                                                                       'module
                                                                                       'importer
                                                                                       foldr))
                                                                                     (x8165
                                                                                      (input))
                                                                                     (x8164
                                                                                      (input))
                                                                                     (x8163
                                                                                      (input)))
                                                                              (x8166
                                                                               x8165
                                                                               x8164
                                                                               x8163)))
                                                                           (g8162
                                                                            (letrec ((x8169
                                                                                      ((lambda (j7242
                                                                                                k7243
                                                                                                f7244)
                                                                                         (lambda (g7240
                                                                                                  g7241)
                                                                                           ((listof
                                                                                             any/c)
                                                                                            j7242
                                                                                            k7243
                                                                                            (f7244
                                                                                             ((lambda (j7246
                                                                                                       k7247
                                                                                                       f7248)
                                                                                                (lambda (g7245)
                                                                                                  (any/c
                                                                                                   j7246
                                                                                                   k7247
                                                                                                   (f7248
                                                                                                    (any/c
                                                                                                     j7246
                                                                                                     k7247
                                                                                                     g7245)))))
                                                                                              j7242
                                                                                              k7243
                                                                                              g7240)
                                                                                             ((listof
                                                                                               any/c)
                                                                                              j7242
                                                                                              k7243
                                                                                              g7241)))))
                                                                                       'module
                                                                                       'importer
                                                                                       map))
                                                                                     (x8168
                                                                                      (input))
                                                                                     (x8167
                                                                                      (input)))
                                                                              (x8169
                                                                               x8168
                                                                               x8167))))
                                                                    g8162)))
                                                          g8160)))
                                                g8159))))
                                    g8148)))
                          g8147))))
              g7260)))
    g7259))
