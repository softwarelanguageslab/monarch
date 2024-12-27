(letrec ((any? (lambda (v) (letrec ((g7235 #t)) g7235)))
         (meta (lambda (v) (letrec ((g7236 v)) g7236)))
         (member
          (lambda (v lst)
            (letrec ((g7237
                      (letrec ((g7238
                                (letrec ((x-e7239 lst))
                                  (match
                                   x-e7239
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7240 (eq? v v1)))
                                       (if x-cnd7240 #t (member v vs)))))))))
                        g7238)))
              g7237)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7241 (lambda (v) (letrec ((g7242 v)) g7242)))) g7241)))
         (nonzero?
          (lambda (v)
            (letrec ((g7243 (letrec ((x7244 (= v 0))) (not x7244)))) g7243))))
  (letrec ((g7245
            (letrec ((g7246
                      (letrec ((real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7247
                                            (letrec ((x-cnd7248 (real? g7162)))
                                              (if x-cnd7248
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7247)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7249
                                            (letrec ((x-cnd7250
                                                      (boolean? g7165)))
                                              (if x-cnd7250
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7249)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7251
                                            (letrec ((x-cnd7252
                                                      (number? g7168)))
                                              (if x-cnd7252
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7251)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7253
                                            (letrec ((x-cnd7254
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7254
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7253)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7255
                                            (letrec ((x-cnd7256
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7256
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7255)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7257
                                            (letrec ((x-cnd7258 (pair? g7177)))
                                              (if x-cnd7258
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7257)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7259
                                            (letrec ((x-cnd7260 (pair? g7180)))
                                              (if x-cnd7260
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7259)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7261
                                            (letrec ((x-cnd7262
                                                      (integer? g7183)))
                                              (if x-cnd7262
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7261)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7263
                                            (lambda (k j v)
                                              (letrec ((g7264
                                                        (letrec ((x-cnd7265
                                                                  (c1 k j v)))
                                                          (if x-cnd7265
                                                            (c2 k j v)
                                                            #f))))
                                                g7264))))
                                    g7263)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7266
                                            (lambda (k j v)
                                              (letrec ((g7267
                                                        (letrec ((x-cnd7268
                                                                  (null? v)))
                                                          (if x-cnd7268
                                                            '()
                                                            (letrec ((x7272
                                                                      (letrec ((x7273
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7273)))
                                                                     (x7269
                                                                      (letrec ((x7271
                                                                                (list-of
                                                                                 contract))
                                                                               (x7270
                                                                                (cdr
                                                                                 v)))
                                                                        (x7271
                                                                         k
                                                                         j
                                                                         x7270))))
                                                              (cons
                                                               x7272
                                                               x7269))))))
                                                g7267))))
                                    g7266)))
                               (any? (lambda (v) (letrec ((g7274 #t)) g7274)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7275
                                            (letrec ((x7276 (= v 0)))
                                              (not x7276))))
                                    g7275)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7277
                                            (letrec ((x-cnd7278
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7278
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7277)))
                               (meta (lambda (v) (letrec ((g7279 v)) g7279)))
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
                                (lambda (cnd) (letrec ((g7280 #t)) g7280)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7281
                                            (letrec ((x7282
                                                      (letrec ((x7283 (cdr x)))
                                                        (cdr x7283))))
                                              (cdr x7282))))
                                    g7281)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7284
                                            (letrec ((x7287 (procedure? f)))
                                              (assert x7287)))
                                           (g7285
                                            (letrec ((x7288 (list? l)))
                                              (assert x7288)))
                                           (g7286
                                            (letrec ((x-cnd7289 (null? l)))
                                              (if x-cnd7289
                                                '()
                                                (letrec ((x7292
                                                          (letrec ((x7293
                                                                    (car l)))
                                                            (f x7293)))
                                                         (x7290
                                                          (letrec ((x7291
                                                                    (cdr l)))
                                                            (map f x7291))))
                                                  (cons x7292 x7290))))))
                                    g7286)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7294
                                            (letrec ((x7295 (car x)))
                                              (cdr x7295))))
                                    g7294)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7296
                                            (letrec ((x7297
                                                      (letrec ((x7298
                                                                (letrec ((x7299
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7299))))
                                                        (cdr x7298))))
                                              (car x7297))))
                                    g7296)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7300
                                            (letrec ((x7301
                                                      (letrec ((x7302
                                                                (letrec ((x7303
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7303))))
                                                        (car x7302))))
                                              (cdr x7301))))
                                    g7300)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7304
                                            (letrec ((x7307
                                                      (string? filename)))
                                              (assert x7307)))
                                           (g7305
                                            (letrec ((x7308 (procedure? proc)))
                                              (assert x7308)))
                                           (g7306
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7309
                                                        (close-output-port
                                                         output-port))
                                                       (g7310 res))
                                                g7310))))
                                    g7306)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7311
                                            (letrec ((x7312
                                                      (letrec ((x7313 (cdr x)))
                                                        (cdr x7313))))
                                              (car x7312))))
                                    g7311)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7314
                                            (letrec ((x7315
                                                      (letrec ((x7316
                                                                (letrec ((x7317
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7317))))
                                                        (car x7316))))
                                              (cdr x7315))))
                                    g7314)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7318
                                            (letrec ((x7320 (list? l)))
                                              (assert x7320)))
                                           (g7319
                                            (letrec ((x-cnd7321 (null? l)))
                                              (if x-cnd7321
                                                #f
                                                (letrec ((x-cnd7322
                                                          (letrec ((x7323
                                                                    (caar l)))
                                                            (eq? x7323 k))))
                                                  (if x-cnd7322
                                                    (car l)
                                                    (letrec ((x7324 (cdr l)))
                                                      (assq k x7324))))))))
                                    g7319)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7325
                                            (letrec ((x7326 (modulo x 2)))
                                              (= 0 x7326))))
                                    g7325)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7327
                                            (letrec ((x7329 (list? l)))
                                              (assert x7329)))
                                           (g7328
                                            (letrec ((x-cnd7330 (null? l)))
                                              (if x-cnd7330
                                                ""
                                                (letrec ((x7333
                                                          (letrec ((x7334
                                                                    (car l)))
                                                            (char->string
                                                             x7334)))
                                                         (x7331
                                                          (letrec ((x7332
                                                                    (cdr l)))
                                                            (list->string
                                                             x7332))))
                                                  (string-append
                                                   x7333
                                                   x7331))))))
                                    g7328)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7335
                                            (letrec ((x7338 (char? c1)))
                                              (assert x7338)))
                                           (g7336
                                            (letrec ((x7339 (char? c2)))
                                              (assert x7339)))
                                           (g7337
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7340
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7340))))
                                    g7337)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7341
                                            (letrec ((x7342
                                                      (letrec ((x7343
                                                                (letrec ((x7344
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7344))))
                                                        (cdr x7343))))
                                              (cdr x7342))))
                                    g7341)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7345
                                            (letrec ((x7348 (list? l)))
                                              (assert x7348)))
                                           (g7346
                                            (letrec ((x7349 (numer?)))
                                              (assert x7349)))
                                           (g7347
                                            (letrec ((x-cnd7350 (zero? k)))
                                              (if x-cnd7350
                                                x
                                                (letrec ((x7352 (cdr x))
                                                         (x7351 (- k 1)))
                                                  (list-tail x7352 x7351))))))
                                    g7347)))
                               (halt (lambda () (letrec ((g7353 '())) g7353)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7354
                                            (letrec ((x-cnd7355
                                                      (letrec ((x7356 #\a))
                                                        (char-ci>=? c x7356))))
                                              (if x-cnd7355
                                                (letrec ((x7357 #\z))
                                                  (char-ci<=? c x7357))
                                                #f))))
                                    g7354)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7358
                                            (letrec ((x7360 (number? x)))
                                              (assert x7360)))
                                           (g7359
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7361
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7362
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7362)))))
                                                g7361))))
                                    g7359)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7363
                                            (letrec ((val7146
                                                      (letrec ((x7364
                                                                (char->integer
                                                                 c)))
                                                        (= x7364 9))))
                                              (letrec ((g7365
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7366
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7366
                                                                       10))))
                                                            (letrec ((g7367
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7368
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7368
                                                                           32)))))
                                                              g7367)))))
                                                g7365))))
                                    g7363)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7369
                                            (letrec ((x7370
                                                      (letrec ((x7371 (car x)))
                                                        (cdr x7371))))
                                              (cdr x7370))))
                                    g7369)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7372
                                            (letrec ((x7374 (number? x)))
                                              (assert x7374)))
                                           (g7373 (> x 0)))
                                    g7373)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7375 #f)) g7375)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7376
                                            (letrec ((x7377 (cdr x)))
                                              (cdr x7377))))
                                    g7376)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7378
                                            (letrec ((x7380 (number? x)))
                                              (assert x7380)))
                                           (g7379
                                            (letrec ((x-cnd7381 (< x 0)))
                                              (if x-cnd7381
                                                (ceiling x)
                                                (floor x)))))
                                    g7379)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7382
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7383
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7385
                                                                              (null?
                                                                               a))
                                                                             (x7384
                                                                              (null?
                                                                               b)))
                                                                      (and x7385
                                                                           x7384))))
                                                            (letrec ((g7386
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7389
                                                                                            (string?
                                                                                             a))
                                                                                           (x7388
                                                                                            (string?
                                                                                             b))
                                                                                           (x7387
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7389
                                                                                         x7388
                                                                                         x7387))))
                                                                          (letrec ((g7390
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7398
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7397
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7394
                                                                                                          (letrec ((x7396
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7395
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7396
                                                                                                             x7395)))
                                                                                                         (x7391
                                                                                                          (letrec ((x7393
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7392
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7393
                                                                                                             x7392))))
                                                                                                  (and x7398
                                                                                                       x7397
                                                                                                       x7394
                                                                                                       x7391))))
                                                                                        (letrec ((g7399
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7418
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7417
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7400
                                                                                                              (letrec ((x7414
                                                                                                                        (letrec ((x7415
                                                                                                                                  (letrec ((x7416
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7416))))
                                                                                                                          (x7415)))
                                                                                                                       (x7401
                                                                                                                        (letrec ((x7412
                                                                                                                                  (letrec ((x7413
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7413
                                                                                                                                     n)))
                                                                                                                                 (x7402
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7403
                                                                                                                                                        (letrec ((x7410
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7404
                                                                                                                                                                  (letrec ((x7407
                                                                                                                                                                            (letrec ((x7409
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7408
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7409
                                                                                                                                                                               x7408)))
                                                                                                                                                                           (x7405
                                                                                                                                                                            (letrec ((x7406
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7406))))
                                                                                                                                                                    (and x7407
                                                                                                                                                                         x7405))))
                                                                                                                                                          (or x7410
                                                                                                                                                              x7404))))
                                                                                                                                                g7403))))
                                                                                                                                    (letrec ((g7411
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7411))))
                                                                                                                          (and x7412
                                                                                                                               x7402))))
                                                                                                                (let x7414 x7401))))
                                                                                                      (and x7418
                                                                                                           x7417
                                                                                                           x7400)))))
                                                                                          g7399)))))
                                                                            g7390)))))
                                                              g7386)))))
                                                g7383))))
                                    g7382)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7419
                                            (letrec ((x7420
                                                      (letrec ((x7421
                                                                (letrec ((x7422
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7422))))
                                                        (car x7421))))
                                              (cdr x7420))))
                                    g7419)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7423
                                            (letrec ((x7424
                                                      (letrec ((x7425
                                                                (letrec ((x7426
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7426))))
                                                        (car x7425))))
                                              (car x7424))))
                                    g7423)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7427 (eq? x y))) g7427)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7428
                                            (letrec ((x7430 (number? x)))
                                              (assert x7430)))
                                           (g7429
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7431
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7432
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7432)))))
                                                g7431))))
                                    g7429)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7433
                                            (letrec ((x7436
                                                      (string? filename)))
                                              (assert x7436)))
                                           (g7434
                                            (letrec ((x7437 (procedure? proc)))
                                              (assert x7437)))
                                           (g7435
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7438
                                                        (close-input-port
                                                         input-port))
                                                       (g7439 res))
                                                g7439))))
                                    g7435)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7440 (cons x '()))) g7440)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7441
                                            (letrec ((x7444 (char? c1)))
                                              (assert x7444)))
                                           (g7442
                                            (letrec ((x7445 (char? c2)))
                                              (assert x7445)))
                                           (g7443
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7446
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7446))))
                                    g7443)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7447
                                            (letrec ((x7448
                                                      (letrec ((x7449 (car x)))
                                                        (car x7449))))
                                              (cdr x7448))))
                                    g7447)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7450
                                            (letrec ((x7451
                                                      (letrec ((x7452
                                                                (letrec ((x7453
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7453))))
                                                        (car x7452))))
                                              (cdr x7451))))
                                    g7450)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7454
                                            (letrec ((x7455
                                                      (letrec ((x7456 (car x)))
                                                        (cdr x7456))))
                                              (car x7455))))
                                    g7454)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7457
                                            (letrec ((x7458
                                                      (letrec ((x7459 (cdr x)))
                                                        (car x7459))))
                                              (car x7458))))
                                    g7457)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7460
                                            (letrec ((x7463 (char? c1)))
                                              (assert x7463)))
                                           (g7461
                                            (letrec ((x7464 (char? c2)))
                                              (assert x7464)))
                                           (g7462
                                            (letrec ((x7465
                                                      (char-ci<=? c1 c2)))
                                              (not x7465))))
                                    g7462)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7466
                                            (letrec ((x7467
                                                      (letrec ((x7468
                                                                (letrec ((x7469
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7469))))
                                                        (car x7468))))
                                              (car x7467))))
                                    g7466)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7470
                                            (letrec ((x7472 (number? x)))
                                              (assert x7472)))
                                           (g7471 (< x 0)))
                                    g7471)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7473 (memq e l))) g7473)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7474
                                            (letrec ((x7475
                                                      (letrec ((x7476 (car x)))
                                                        (car x7476))))
                                              (car x7475))))
                                    g7474)))
                               (debug
                                (lambda (e) (letrec ((g7477 '())) g7477)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7478
                                            (letrec ((x7480 (list? l)))
                                              (assert x7480)))
                                           (g7479
                                            (letrec ((x-cnd7481 (null? l)))
                                              (if x-cnd7481
                                                '()
                                                (letrec ((x7484
                                                          (letrec ((x7485
                                                                    (cdr l)))
                                                            (reverse x7485)))
                                                         (x7482
                                                          (letrec ((x7483
                                                                    (car l)))
                                                            (list x7483))))
                                                  (append x7484 x7482))))))
                                    g7479)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7486
                                            (letrec ((x7487
                                                      (letrec ((x7488
                                                                (letrec ((x7489
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7489))))
                                                        (car x7488))))
                                              (car x7487))))
                                    g7486)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7490
                                            (letrec ((x7491
                                                      (letrec ((x7492
                                                                (letrec ((x7493
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7493))))
                                                        (cdr x7492))))
                                              (cdr x7491))))
                                    g7490)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7494
                                            (letrec ((x7496 (number? x)))
                                              (assert x7496)))
                                           (g7495
                                            (letrec ((x7497 (modulo x 2)))
                                              (= 1 x7497))))
                                    g7495)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7498
                                            (letrec ((x7499
                                                      (letrec ((x7500
                                                                (letrec ((x7501
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7501))))
                                                        (car x7500))))
                                              (car x7499))))
                                    g7498)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7502
                                            (letrec ((x7505 (procedure? proc)))
                                              (assert x7505)))
                                           (g7503
                                            (letrec ((x7506 (list? args)))
                                              (assert x7506)))
                                           (g7504
                                            (if cnd
                                              (letrec ((g7507 (proc))) g7507)
                                              (if cnd
                                                (letrec ((g7508
                                                          (letrec ((x7509
                                                                    (car
                                                                     args)))
                                                            (proc x7509))))
                                                  g7508)
                                                (if cnd
                                                  (letrec ((g7510
                                                            (letrec ((x7512
                                                                      (car
                                                                       args))
                                                                     (x7511
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7512
                                                               x7511))))
                                                    g7510)
                                                  (if cnd
                                                    (letrec ((g7513
                                                              (letrec ((x7516
                                                                        (car
                                                                         args))
                                                                       (x7515
                                                                        (cadr
                                                                         args))
                                                                       (x7514
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7516
                                                                 x7515
                                                                 x7514))))
                                                      g7513)
                                                    (if cnd
                                                      (letrec ((g7517
                                                                (letrec ((x7521
                                                                          (car
                                                                           args))
                                                                         (x7520
                                                                          (cadr
                                                                           args))
                                                                         (x7519
                                                                          (caddr
                                                                           args))
                                                                         (x7518
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7521
                                                                   x7520
                                                                   x7519
                                                                   x7518))))
                                                        g7517)
                                                      (if cnd
                                                        (letrec ((g7522
                                                                  (letrec ((x7528
                                                                            (car
                                                                             args))
                                                                           (x7527
                                                                            (cadr
                                                                             args))
                                                                           (x7526
                                                                            (caddr
                                                                             args))
                                                                           (x7525
                                                                            (cadddr
                                                                             args))
                                                                           (x7523
                                                                            (letrec ((x7524
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7524))))
                                                                    (proc
                                                                     x7528
                                                                     x7527
                                                                     x7526
                                                                     x7525
                                                                     x7523))))
                                                          g7522)
                                                        (if cnd
                                                          (letrec ((g7529
                                                                    (letrec ((x7537
                                                                              (car
                                                                               args))
                                                                             (x7536
                                                                              (cadr
                                                                               args))
                                                                             (x7535
                                                                              (caddr
                                                                               args))
                                                                             (x7534
                                                                              (cadddr
                                                                               args))
                                                                             (x7532
                                                                              (letrec ((x7533
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7533)))
                                                                             (x7530
                                                                              (letrec ((x7531
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7531))))
                                                                      (proc
                                                                       x7537
                                                                       x7536
                                                                       x7535
                                                                       x7534
                                                                       x7532
                                                                       x7530))))
                                                            g7529)
                                                          (if cnd
                                                            (letrec ((g7538
                                                                      (letrec ((x7548
                                                                                (car
                                                                                 args))
                                                                               (x7547
                                                                                (cadr
                                                                                 args))
                                                                               (x7546
                                                                                (caddr
                                                                                 args))
                                                                               (x7545
                                                                                (cadddr
                                                                                 args))
                                                                               (x7543
                                                                                (letrec ((x7544
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7544)))
                                                                               (x7541
                                                                                (letrec ((x7542
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7542)))
                                                                               (x7539
                                                                                (letrec ((x7540
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7540))))
                                                                        (proc
                                                                         x7548
                                                                         x7547
                                                                         x7546
                                                                         x7545
                                                                         x7543
                                                                         x7541
                                                                         x7539))))
                                                              g7538)
                                                            (letrec ((g7549
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7549)))))))))))
                                    g7504)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7550
                                            (letrec ((x7552 (list? l)))
                                              (assert x7552)))
                                           (g7551
                                            (letrec ((x-cnd7553 (null? l)))
                                              (if x-cnd7553
                                                #f
                                                (letrec ((x-cnd7554
                                                          (letrec ((x7555
                                                                    (car l)))
                                                            (equal? x7555 e))))
                                                  (if x-cnd7554
                                                    l
                                                    (letrec ((x7556 (cdr l)))
                                                      (member e x7556))))))))
                                    g7551)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7557
                                            (letrec ((x7558
                                                      (letrec ((x7559
                                                                (letrec ((x7560
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7560))))
                                                        (cdr x7559))))
                                              (cdr x7558))))
                                    g7557)))
                               (cadddr
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
                                              (car x7562))))
                                    g7561)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7565 (random 42))) g7565)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7566
                                            (letrec ((x7568 (number? x)))
                                              (assert x7568)))
                                           (g7567 (= x 0)))
                                    g7567)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7569
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7570
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7570))))
                                    g7569)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7571
                                            (letrec ((x7572 (cdr x)))
                                              (car x7572))))
                                    g7571)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7573
                                            (letrec ((val7156
                                                      (letrec ((x7576
                                                                (pair? l))
                                                               (x7574
                                                                (letrec ((x7575
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7575))))
                                                        (and x7576 x7574))))
                                              (letrec ((g7577
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7577))))
                                    g7573)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7578
                                            (letrec ((x7579
                                                      (letrec ((x7580
                                                                (letrec ((x7581
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7581))))
                                                        (cdr x7580))))
                                              (cdr x7579))))
                                    g7578)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7582
                                            (letrec ((x-cnd7583
                                                      (letrec ((x7584 #\0))
                                                        (char<=? x7584 c))))
                                              (if x-cnd7583
                                                (letrec ((x7585 #\9))
                                                  (char<=? c x7585))
                                                #f))))
                                    g7582)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7586
                                            (letrec ((x7588 (list? l)))
                                              (assert x7588)))
                                           (g7587
                                            (letrec ((x-cnd7589 (null? l)))
                                              (if x-cnd7589
                                                #f
                                                (letrec ((x-cnd7590
                                                          (letrec ((x7591
                                                                    (caar l)))
                                                            (eqv? x7591 k))))
                                                  (if x-cnd7590
                                                    (car l)
                                                    (letrec ((x7592 (cdr l)))
                                                      (assq k x7592))))))))
                                    g7587)))
                               (not
                                (lambda (x)
                                  (letrec ((g7593 (if x #f #t))) g7593)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7594 (append l1 l2))) g7594)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7595
                                            (letrec ((x7597 (list? l)))
                                              (assert x7597)))
                                           (g7596
                                            (letrec ((x-cnd7598 (null? l)))
                                              (if x-cnd7598
                                                #f
                                                (letrec ((x-cnd7599
                                                          (letrec ((x7600
                                                                    (car l)))
                                                            (eq? x7600 e))))
                                                  (if x-cnd7599
                                                    l
                                                    (letrec ((x7601 (cdr l)))
                                                      (memq e x7601))))))))
                                    g7596)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7602
                                            (letrec ((x7603
                                                      (letrec ((x7604
                                                                (letrec ((x7605
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7605))))
                                                        (cdr x7604))))
                                              (car x7603))))
                                    g7602)))
                               (length
                                (lambda (l)
                                  (letrec ((g7606
                                            (letrec ((x7608 (list? l)))
                                              (assert x7608)))
                                           (g7607
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7609
                                                                  (letrec ((x-cnd7610
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7610
                                                                      0
                                                                      (letrec ((x7611
                                                                                (letrec ((x7612
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7612))))
                                                                        (+
                                                                         1
                                                                         x7611))))))
                                                          g7609))))
                                              (letrec ((g7613 (rec l)))
                                                g7613))))
                                    g7607)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7614
                                            (letrec ((x7617 (char? c1)))
                                              (assert x7617)))
                                           (g7615
                                            (letrec ((x7618 (char? c2)))
                                              (assert x7618)))
                                           (g7616
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7619
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7619))))
                                    g7616)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7620
                                            (letrec ((x7621 (string<=? s1 s2)))
                                              (not x7621))))
                                    g7620)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7622
                                            (letrec ((x7623
                                                      (letrec ((x7624 (cdr x)))
                                                        (car x7624))))
                                              (cdr x7623))))
                                    g7622)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7625
                                            (letrec ((x7627 (list? l)))
                                              (assert x7627)))
                                           (g7626
                                            (letrec ((x-cnd7628 (null? l)))
                                              (if x-cnd7628
                                                #f
                                                (letrec ((x-cnd7629
                                                          (letrec ((x7630
                                                                    (caar l)))
                                                            (equal? x7630 k))))
                                                  (if x-cnd7629
                                                    (car l)
                                                    (letrec ((x7631 (cdr l)))
                                                      (assoc k x7631))))))))
                                    g7626)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7632
                                            (letrec ((x7633 (car x)))
                                              (car x7633))))
                                    g7632)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7634
                                            (letrec ((x7637 (char? c1)))
                                              (assert x7637)))
                                           (g7635
                                            (letrec ((x7638 (char? c2)))
                                              (assert x7638)))
                                           (g7636
                                            (letrec ((x7639 (char<=? c1 c2)))
                                              (not x7639))))
                                    g7636)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7640
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7641
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7641))))
                                    g7640)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7642
                                            (letrec ((x7645 (procedure? f)))
                                              (assert x7645)))
                                           (g7643
                                            (letrec ((x7646 (list? l)))
                                              (assert x7646)))
                                           (g7644
                                            (letrec ((x-cnd7647 (null? l)))
                                              (if x-cnd7647
                                                #t
                                                (letrec ((x-cnd7648 (pair? l)))
                                                  (if x-cnd7648
                                                    (letrec ((g7649
                                                              (letrec ((x7651
                                                                        (car
                                                                         l)))
                                                                (f x7651)))
                                                             (g7650
                                                              (letrec ((x7652
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7652))))
                                                      g7650)
                                                    '()))))))
                                    g7644)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7653
                                            (letrec ((x7655 (number? x)))
                                              (assert x7655)))
                                           (g7654
                                            (letrec ((x-cnd7656 (< x 0)))
                                              (if x-cnd7656 (- 0 x) x))))
                                    g7654)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7657
                                            (letrec ((x7660 (char? c1)))
                                              (assert x7660)))
                                           (g7658
                                            (letrec ((x7661 (char? c2)))
                                              (assert x7661)))
                                           (g7659
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7662
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7662))))
                                    g7659)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7663
                                            (letrec ((x7664
                                                      (letrec ((x7665
                                                                (letrec ((x7666
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7666))))
                                                        (cdr x7665))))
                                              (car x7664))))
                                    g7663)))
                               (newline
                                (lambda () (letrec ((g7667 #f)) g7667)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7668
                                            (letrec ((x7670
                                                      (letrec ((x7671 (* m n)))
                                                        (abs x7671)))
                                                     (x7669 (gcd m n)))
                                              (/ x7670 x7669))))
                                    g7668)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7672
                                            (letrec ((x7674 (number? x)))
                                              (assert x7674)))
                                           (g7673
                                            (letrec ((x7675 (<= x y)))
                                              (not x7675))))
                                    g7673)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7676
                                            (letrec ((x7680 (list? l)))
                                              (assert x7680)))
                                           (g7677
                                            (letrec ((x7681 (number? index)))
                                              (assert x7681)))
                                           (g7678
                                            (letrec ((x7682
                                                      (letrec ((x7683
                                                                (length l)))
                                                        (< index x7683))))
                                              (assert x7682)))
                                           (g7679
                                            (letrec ((x-cnd7684 (= index 0)))
                                              (if x-cnd7684
                                                (car l)
                                                (letrec ((x7686 (cdr l))
                                                         (x7685 (- index 1)))
                                                  (list-ref x7686 x7685))))))
                                    g7679)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7687
                                            (letrec ((x-cnd7688 (= b 0)))
                                              (if x-cnd7688
                                                a
                                                (letrec ((x7689 (modulo a b)))
                                                  (gcd b x7689))))))
                                    g7687)))
                               (real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7690
                                            (letrec ((x-cnd7691 (real? g7162)))
                                              (if x-cnd7691
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7690)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7692
                                            (letrec ((x-cnd7693
                                                      (boolean? g7165)))
                                              (if x-cnd7693
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7692)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7694
                                            (letrec ((x-cnd7695
                                                      (number? g7168)))
                                              (if x-cnd7695
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7694)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7696
                                            (letrec ((x-cnd7697
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7697
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7696)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7698
                                            (letrec ((x-cnd7699
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7699
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7698)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7700
                                            (letrec ((x-cnd7701 (pair? g7177)))
                                              (if x-cnd7701
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7700)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7702
                                            (letrec ((x-cnd7703 (pair? g7180)))
                                              (if x-cnd7703
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7702)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7704
                                            (letrec ((x-cnd7705
                                                      (integer? g7183)))
                                              (if x-cnd7705
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7704)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7706
                                            (lambda (k j v)
                                              (letrec ((g7707
                                                        (letrec ((x-cnd7708
                                                                  (c1 k j v)))
                                                          (if x-cnd7708
                                                            (c2 k j v)
                                                            #f))))
                                                g7707))))
                                    g7706)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7709
                                            (lambda (k j v)
                                              (letrec ((g7710
                                                        (letrec ((x-cnd7711
                                                                  (null? v)))
                                                          (if x-cnd7711
                                                            '()
                                                            (letrec ((x7715
                                                                      (letrec ((x7716
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7716)))
                                                                     (x7712
                                                                      (letrec ((x7714
                                                                                (list-of
                                                                                 contract))
                                                                               (x7713
                                                                                (cdr
                                                                                 v)))
                                                                        (x7714
                                                                         k
                                                                         j
                                                                         x7713))))
                                                              (cons
                                                               x7715
                                                               x7712))))))
                                                g7710))))
                                    g7709)))
                               (any? (lambda (v) (letrec ((g7717 #t)) g7717)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7718
                                            (letrec ((x7719 (= v 0)))
                                              (not x7719))))
                                    g7718)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7720
                                            (letrec ((x-cnd7721
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7721
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7720)))
                               (meta (lambda (v) (letrec ((g7722 v)) g7722)))
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
                                (lambda (cnd) (letrec ((g7723 #t)) g7723)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7724
                                            (letrec ((x7725
                                                      (letrec ((x7726 (cdr x)))
                                                        (cdr x7726))))
                                              (cdr x7725))))
                                    g7724)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7727
                                            (letrec ((x7730 (procedure? f)))
                                              (assert x7730)))
                                           (g7728
                                            (letrec ((x7731 (list? l)))
                                              (assert x7731)))
                                           (g7729
                                            (letrec ((x-cnd7732 (null? l)))
                                              (if x-cnd7732
                                                '()
                                                (letrec ((x7735
                                                          (letrec ((x7736
                                                                    (car l)))
                                                            (f x7736)))
                                                         (x7733
                                                          (letrec ((x7734
                                                                    (cdr l)))
                                                            (map f x7734))))
                                                  (cons x7735 x7733))))))
                                    g7729)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7737
                                            (letrec ((x7738 (car x)))
                                              (cdr x7738))))
                                    g7737)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7739
                                            (letrec ((x7740
                                                      (letrec ((x7741
                                                                (letrec ((x7742
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7742))))
                                                        (cdr x7741))))
                                              (car x7740))))
                                    g7739)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7743
                                            (letrec ((x7744
                                                      (letrec ((x7745
                                                                (letrec ((x7746
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7746))))
                                                        (car x7745))))
                                              (cdr x7744))))
                                    g7743)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7747
                                            (letrec ((x7750
                                                      (string? filename)))
                                              (assert x7750)))
                                           (g7748
                                            (letrec ((x7751 (procedure? proc)))
                                              (assert x7751)))
                                           (g7749
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7752
                                                        (close-output-port
                                                         output-port))
                                                       (g7753 res))
                                                g7753))))
                                    g7749)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7754
                                            (letrec ((x7755
                                                      (letrec ((x7756 (cdr x)))
                                                        (cdr x7756))))
                                              (car x7755))))
                                    g7754)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7757
                                            (letrec ((x7758
                                                      (letrec ((x7759
                                                                (letrec ((x7760
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7760))))
                                                        (car x7759))))
                                              (cdr x7758))))
                                    g7757)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7761
                                            (letrec ((x7763 (list? l)))
                                              (assert x7763)))
                                           (g7762
                                            (letrec ((x-cnd7764 (null? l)))
                                              (if x-cnd7764
                                                #f
                                                (letrec ((x-cnd7765
                                                          (letrec ((x7766
                                                                    (caar l)))
                                                            (eq? x7766 k))))
                                                  (if x-cnd7765
                                                    (car l)
                                                    (letrec ((x7767 (cdr l)))
                                                      (assq k x7767))))))))
                                    g7762)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7768
                                            (letrec ((x7769 (modulo x 2)))
                                              (= 0 x7769))))
                                    g7768)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7770
                                            (letrec ((x7772 (list? l)))
                                              (assert x7772)))
                                           (g7771
                                            (letrec ((x-cnd7773 (null? l)))
                                              (if x-cnd7773
                                                ""
                                                (letrec ((x7776
                                                          (letrec ((x7777
                                                                    (car l)))
                                                            (char->string
                                                             x7777)))
                                                         (x7774
                                                          (letrec ((x7775
                                                                    (cdr l)))
                                                            (list->string
                                                             x7775))))
                                                  (string-append
                                                   x7776
                                                   x7774))))))
                                    g7771)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7778
                                            (letrec ((x7781 (char? c1)))
                                              (assert x7781)))
                                           (g7779
                                            (letrec ((x7782 (char? c2)))
                                              (assert x7782)))
                                           (g7780
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7783
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7783))))
                                    g7780)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7784
                                            (letrec ((x7785
                                                      (letrec ((x7786
                                                                (letrec ((x7787
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7787))))
                                                        (cdr x7786))))
                                              (cdr x7785))))
                                    g7784)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7788
                                            (letrec ((x7791 (list? l)))
                                              (assert x7791)))
                                           (g7789
                                            (letrec ((x7792 (numer?)))
                                              (assert x7792)))
                                           (g7790
                                            (letrec ((x-cnd7793 (zero? k)))
                                              (if x-cnd7793
                                                x
                                                (letrec ((x7795 (cdr x))
                                                         (x7794 (- k 1)))
                                                  (list-tail x7795 x7794))))))
                                    g7790)))
                               (halt (lambda () (letrec ((g7796 '())) g7796)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7797
                                            (letrec ((x-cnd7798
                                                      (letrec ((x7799 #\a))
                                                        (char-ci>=? c x7799))))
                                              (if x-cnd7798
                                                (letrec ((x7800 #\z))
                                                  (char-ci<=? c x7800))
                                                #f))))
                                    g7797)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7801
                                            (letrec ((x7803 (number? x)))
                                              (assert x7803)))
                                           (g7802
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7804
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7805
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7805)))))
                                                g7804))))
                                    g7802)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7806
                                            (letrec ((val7146
                                                      (letrec ((x7807
                                                                (char->integer
                                                                 c)))
                                                        (= x7807 9))))
                                              (letrec ((g7808
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7809
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7809
                                                                       10))))
                                                            (letrec ((g7810
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7811
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7811
                                                                           32)))))
                                                              g7810)))))
                                                g7808))))
                                    g7806)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7812
                                            (letrec ((x7813
                                                      (letrec ((x7814 (car x)))
                                                        (cdr x7814))))
                                              (cdr x7813))))
                                    g7812)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7815
                                            (letrec ((x7817 (number? x)))
                                              (assert x7817)))
                                           (g7816 (> x 0)))
                                    g7816)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7818 #f)) g7818)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7819
                                            (letrec ((x7820 (cdr x)))
                                              (cdr x7820))))
                                    g7819)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7821
                                            (letrec ((x7823 (number? x)))
                                              (assert x7823)))
                                           (g7822
                                            (letrec ((x-cnd7824 (< x 0)))
                                              (if x-cnd7824
                                                (ceiling x)
                                                (floor x)))))
                                    g7822)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7825
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7826
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7828
                                                                              (null?
                                                                               a))
                                                                             (x7827
                                                                              (null?
                                                                               b)))
                                                                      (and x7828
                                                                           x7827))))
                                                            (letrec ((g7829
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7832
                                                                                            (string?
                                                                                             a))
                                                                                           (x7831
                                                                                            (string?
                                                                                             b))
                                                                                           (x7830
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7832
                                                                                         x7831
                                                                                         x7830))))
                                                                          (letrec ((g7833
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7841
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7840
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7837
                                                                                                          (letrec ((x7839
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7838
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7839
                                                                                                             x7838)))
                                                                                                         (x7834
                                                                                                          (letrec ((x7836
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7835
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7836
                                                                                                             x7835))))
                                                                                                  (and x7841
                                                                                                       x7840
                                                                                                       x7837
                                                                                                       x7834))))
                                                                                        (letrec ((g7842
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7861
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7860
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7843
                                                                                                              (letrec ((x7857
                                                                                                                        (letrec ((x7858
                                                                                                                                  (letrec ((x7859
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7859))))
                                                                                                                          (x7858)))
                                                                                                                       (x7844
                                                                                                                        (letrec ((x7855
                                                                                                                                  (letrec ((x7856
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7856
                                                                                                                                     n)))
                                                                                                                                 (x7845
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7846
                                                                                                                                                        (letrec ((x7853
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7847
                                                                                                                                                                  (letrec ((x7850
                                                                                                                                                                            (letrec ((x7852
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7851
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7852
                                                                                                                                                                               x7851)))
                                                                                                                                                                           (x7848
                                                                                                                                                                            (letrec ((x7849
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7849))))
                                                                                                                                                                    (and x7850
                                                                                                                                                                         x7848))))
                                                                                                                                                          (or x7853
                                                                                                                                                              x7847))))
                                                                                                                                                g7846))))
                                                                                                                                    (letrec ((g7854
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7854))))
                                                                                                                          (and x7855
                                                                                                                               x7845))))
                                                                                                                (let x7857 x7844))))
                                                                                                      (and x7861
                                                                                                           x7860
                                                                                                           x7843)))))
                                                                                          g7842)))))
                                                                            g7833)))))
                                                              g7829)))))
                                                g7826))))
                                    g7825)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7862
                                            (letrec ((x7863
                                                      (letrec ((x7864
                                                                (letrec ((x7865
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7865))))
                                                        (car x7864))))
                                              (cdr x7863))))
                                    g7862)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7866
                                            (letrec ((x7867
                                                      (letrec ((x7868
                                                                (letrec ((x7869
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7869))))
                                                        (car x7868))))
                                              (car x7867))))
                                    g7866)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7870 (eq? x y))) g7870)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7871
                                            (letrec ((x7873 (number? x)))
                                              (assert x7873)))
                                           (g7872
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7874
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7875
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7875)))))
                                                g7874))))
                                    g7872)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7876
                                            (letrec ((x7879
                                                      (string? filename)))
                                              (assert x7879)))
                                           (g7877
                                            (letrec ((x7880 (procedure? proc)))
                                              (assert x7880)))
                                           (g7878
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7881
                                                        (close-input-port
                                                         input-port))
                                                       (g7882 res))
                                                g7882))))
                                    g7878)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7883 (cons x '()))) g7883)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7884
                                            (letrec ((x7887 (char? c1)))
                                              (assert x7887)))
                                           (g7885
                                            (letrec ((x7888 (char? c2)))
                                              (assert x7888)))
                                           (g7886
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7889
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7889))))
                                    g7886)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7890
                                            (letrec ((x7891
                                                      (letrec ((x7892 (car x)))
                                                        (car x7892))))
                                              (cdr x7891))))
                                    g7890)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7893
                                            (letrec ((x7894
                                                      (letrec ((x7895
                                                                (letrec ((x7896
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7896))))
                                                        (car x7895))))
                                              (cdr x7894))))
                                    g7893)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7897
                                            (letrec ((x7898
                                                      (letrec ((x7899 (car x)))
                                                        (cdr x7899))))
                                              (car x7898))))
                                    g7897)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7900
                                            (letrec ((x7901
                                                      (letrec ((x7902 (cdr x)))
                                                        (car x7902))))
                                              (car x7901))))
                                    g7900)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7903
                                            (letrec ((x7906 (char? c1)))
                                              (assert x7906)))
                                           (g7904
                                            (letrec ((x7907 (char? c2)))
                                              (assert x7907)))
                                           (g7905
                                            (letrec ((x7908
                                                      (char-ci<=? c1 c2)))
                                              (not x7908))))
                                    g7905)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7909
                                            (letrec ((x7910
                                                      (letrec ((x7911
                                                                (letrec ((x7912
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7912))))
                                                        (car x7911))))
                                              (car x7910))))
                                    g7909)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7913
                                            (letrec ((x7915 (number? x)))
                                              (assert x7915)))
                                           (g7914 (< x 0)))
                                    g7914)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7916 (memq e l))) g7916)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7917
                                            (letrec ((x7918
                                                      (letrec ((x7919 (car x)))
                                                        (car x7919))))
                                              (car x7918))))
                                    g7917)))
                               (debug
                                (lambda (e) (letrec ((g7920 '())) g7920)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7921
                                            (letrec ((x7923 (list? l)))
                                              (assert x7923)))
                                           (g7922
                                            (letrec ((x-cnd7924 (null? l)))
                                              (if x-cnd7924
                                                '()
                                                (letrec ((x7927
                                                          (letrec ((x7928
                                                                    (cdr l)))
                                                            (reverse x7928)))
                                                         (x7925
                                                          (letrec ((x7926
                                                                    (car l)))
                                                            (list x7926))))
                                                  (append x7927 x7925))))))
                                    g7922)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7929
                                            (letrec ((x7930
                                                      (letrec ((x7931
                                                                (letrec ((x7932
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7932))))
                                                        (car x7931))))
                                              (car x7930))))
                                    g7929)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7933
                                            (letrec ((x7934
                                                      (letrec ((x7935
                                                                (letrec ((x7936
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7936))))
                                                        (cdr x7935))))
                                              (cdr x7934))))
                                    g7933)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7937
                                            (letrec ((x7939 (number? x)))
                                              (assert x7939)))
                                           (g7938
                                            (letrec ((x7940 (modulo x 2)))
                                              (= 1 x7940))))
                                    g7938)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7941
                                            (letrec ((x7942
                                                      (letrec ((x7943
                                                                (letrec ((x7944
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7944))))
                                                        (car x7943))))
                                              (car x7942))))
                                    g7941)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7945
                                            (letrec ((x7948 (procedure? proc)))
                                              (assert x7948)))
                                           (g7946
                                            (letrec ((x7949 (list? args)))
                                              (assert x7949)))
                                           (g7947
                                            (if cnd
                                              (letrec ((g7950 (proc))) g7950)
                                              (if cnd
                                                (letrec ((g7951
                                                          (letrec ((x7952
                                                                    (car
                                                                     args)))
                                                            (proc x7952))))
                                                  g7951)
                                                (if cnd
                                                  (letrec ((g7953
                                                            (letrec ((x7955
                                                                      (car
                                                                       args))
                                                                     (x7954
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7955
                                                               x7954))))
                                                    g7953)
                                                  (if cnd
                                                    (letrec ((g7956
                                                              (letrec ((x7959
                                                                        (car
                                                                         args))
                                                                       (x7958
                                                                        (cadr
                                                                         args))
                                                                       (x7957
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7959
                                                                 x7958
                                                                 x7957))))
                                                      g7956)
                                                    (if cnd
                                                      (letrec ((g7960
                                                                (letrec ((x7964
                                                                          (car
                                                                           args))
                                                                         (x7963
                                                                          (cadr
                                                                           args))
                                                                         (x7962
                                                                          (caddr
                                                                           args))
                                                                         (x7961
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7964
                                                                   x7963
                                                                   x7962
                                                                   x7961))))
                                                        g7960)
                                                      (if cnd
                                                        (letrec ((g7965
                                                                  (letrec ((x7971
                                                                            (car
                                                                             args))
                                                                           (x7970
                                                                            (cadr
                                                                             args))
                                                                           (x7969
                                                                            (caddr
                                                                             args))
                                                                           (x7968
                                                                            (cadddr
                                                                             args))
                                                                           (x7966
                                                                            (letrec ((x7967
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7967))))
                                                                    (proc
                                                                     x7971
                                                                     x7970
                                                                     x7969
                                                                     x7968
                                                                     x7966))))
                                                          g7965)
                                                        (if cnd
                                                          (letrec ((g7972
                                                                    (letrec ((x7980
                                                                              (car
                                                                               args))
                                                                             (x7979
                                                                              (cadr
                                                                               args))
                                                                             (x7978
                                                                              (caddr
                                                                               args))
                                                                             (x7977
                                                                              (cadddr
                                                                               args))
                                                                             (x7975
                                                                              (letrec ((x7976
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7976)))
                                                                             (x7973
                                                                              (letrec ((x7974
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7974))))
                                                                      (proc
                                                                       x7980
                                                                       x7979
                                                                       x7978
                                                                       x7977
                                                                       x7975
                                                                       x7973))))
                                                            g7972)
                                                          (if cnd
                                                            (letrec ((g7981
                                                                      (letrec ((x7991
                                                                                (car
                                                                                 args))
                                                                               (x7990
                                                                                (cadr
                                                                                 args))
                                                                               (x7989
                                                                                (caddr
                                                                                 args))
                                                                               (x7988
                                                                                (cadddr
                                                                                 args))
                                                                               (x7986
                                                                                (letrec ((x7987
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7987)))
                                                                               (x7984
                                                                                (letrec ((x7985
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7985)))
                                                                               (x7982
                                                                                (letrec ((x7983
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7983))))
                                                                        (proc
                                                                         x7991
                                                                         x7990
                                                                         x7989
                                                                         x7988
                                                                         x7986
                                                                         x7984
                                                                         x7982))))
                                                              g7981)
                                                            (letrec ((g7992
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7992)))))))))))
                                    g7947)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7993
                                            (letrec ((x7995 (list? l)))
                                              (assert x7995)))
                                           (g7994
                                            (letrec ((x-cnd7996 (null? l)))
                                              (if x-cnd7996
                                                #f
                                                (letrec ((x-cnd7997
                                                          (letrec ((x7998
                                                                    (car l)))
                                                            (equal? x7998 e))))
                                                  (if x-cnd7997
                                                    l
                                                    (letrec ((x7999 (cdr l)))
                                                      (member e x7999))))))))
                                    g7994)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g8000
                                            (letrec ((x8001
                                                      (letrec ((x8002
                                                                (letrec ((x8003
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8003))))
                                                        (cdr x8002))))
                                              (cdr x8001))))
                                    g8000)))
                               (cadddr
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
                                              (car x8005))))
                                    g8004)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8008 (random 42))) g8008)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8009
                                            (letrec ((x8011 (number? x)))
                                              (assert x8011)))
                                           (g8010 (= x 0)))
                                    g8010)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8012
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8013
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8013))))
                                    g8012)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8014
                                            (letrec ((x8015 (cdr x)))
                                              (car x8015))))
                                    g8014)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8016
                                            (letrec ((val7156
                                                      (letrec ((x8019
                                                                (pair? l))
                                                               (x8017
                                                                (letrec ((x8018
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8018))))
                                                        (and x8019 x8017))))
                                              (letrec ((g8020
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8020))))
                                    g8016)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8021
                                            (letrec ((x8022
                                                      (letrec ((x8023
                                                                (letrec ((x8024
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8024))))
                                                        (cdr x8023))))
                                              (cdr x8022))))
                                    g8021)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8025
                                            (letrec ((x-cnd8026
                                                      (letrec ((x8027 #\0))
                                                        (char<=? x8027 c))))
                                              (if x-cnd8026
                                                (letrec ((x8028 #\9))
                                                  (char<=? c x8028))
                                                #f))))
                                    g8025)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8029
                                            (letrec ((x8031 (list? l)))
                                              (assert x8031)))
                                           (g8030
                                            (letrec ((x-cnd8032 (null? l)))
                                              (if x-cnd8032
                                                #f
                                                (letrec ((x-cnd8033
                                                          (letrec ((x8034
                                                                    (caar l)))
                                                            (eqv? x8034 k))))
                                                  (if x-cnd8033
                                                    (car l)
                                                    (letrec ((x8035 (cdr l)))
                                                      (assq k x8035))))))))
                                    g8030)))
                               (not
                                (lambda (x)
                                  (letrec ((g8036 (if x #f #t))) g8036)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8037 (append l1 l2))) g8037)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8038
                                            (letrec ((x8040 (list? l)))
                                              (assert x8040)))
                                           (g8039
                                            (letrec ((x-cnd8041 (null? l)))
                                              (if x-cnd8041
                                                #f
                                                (letrec ((x-cnd8042
                                                          (letrec ((x8043
                                                                    (car l)))
                                                            (eq? x8043 e))))
                                                  (if x-cnd8042
                                                    l
                                                    (letrec ((x8044 (cdr l)))
                                                      (memq e x8044))))))))
                                    g8039)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8045
                                            (letrec ((x8046
                                                      (letrec ((x8047
                                                                (letrec ((x8048
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8048))))
                                                        (cdr x8047))))
                                              (car x8046))))
                                    g8045)))
                               (length
                                (lambda (l)
                                  (letrec ((g8049
                                            (letrec ((x8051 (list? l)))
                                              (assert x8051)))
                                           (g8050
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8052
                                                                  (letrec ((x-cnd8053
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8053
                                                                      0
                                                                      (letrec ((x8054
                                                                                (letrec ((x8055
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8055))))
                                                                        (+
                                                                         1
                                                                         x8054))))))
                                                          g8052))))
                                              (letrec ((g8056 (rec l)))
                                                g8056))))
                                    g8050)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8057
                                            (letrec ((x8060 (char? c1)))
                                              (assert x8060)))
                                           (g8058
                                            (letrec ((x8061 (char? c2)))
                                              (assert x8061)))
                                           (g8059
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8062
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8062))))
                                    g8059)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8063
                                            (letrec ((x8064 (string<=? s1 s2)))
                                              (not x8064))))
                                    g8063)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8065
                                            (letrec ((x8066
                                                      (letrec ((x8067 (cdr x)))
                                                        (car x8067))))
                                              (cdr x8066))))
                                    g8065)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8068
                                            (letrec ((x8070 (list? l)))
                                              (assert x8070)))
                                           (g8069
                                            (letrec ((x-cnd8071 (null? l)))
                                              (if x-cnd8071
                                                #f
                                                (letrec ((x-cnd8072
                                                          (letrec ((x8073
                                                                    (caar l)))
                                                            (equal? x8073 k))))
                                                  (if x-cnd8072
                                                    (car l)
                                                    (letrec ((x8074 (cdr l)))
                                                      (assoc k x8074))))))))
                                    g8069)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8075
                                            (letrec ((x8076 (car x)))
                                              (car x8076))))
                                    g8075)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8077
                                            (letrec ((x8080 (char? c1)))
                                              (assert x8080)))
                                           (g8078
                                            (letrec ((x8081 (char? c2)))
                                              (assert x8081)))
                                           (g8079
                                            (letrec ((x8082 (char<=? c1 c2)))
                                              (not x8082))))
                                    g8079)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8083
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8084
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8084))))
                                    g8083)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8085
                                            (letrec ((x8088 (procedure? f)))
                                              (assert x8088)))
                                           (g8086
                                            (letrec ((x8089 (list? l)))
                                              (assert x8089)))
                                           (g8087
                                            (letrec ((x-cnd8090 (null? l)))
                                              (if x-cnd8090
                                                #t
                                                (letrec ((x-cnd8091 (pair? l)))
                                                  (if x-cnd8091
                                                    (letrec ((g8092
                                                              (letrec ((x8094
                                                                        (car
                                                                         l)))
                                                                (f x8094)))
                                                             (g8093
                                                              (letrec ((x8095
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8095))))
                                                      g8093)
                                                    '()))))))
                                    g8087)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8096
                                            (letrec ((x8098 (number? x)))
                                              (assert x8098)))
                                           (g8097
                                            (letrec ((x-cnd8099 (< x 0)))
                                              (if x-cnd8099 (- 0 x) x))))
                                    g8097)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8100
                                            (letrec ((x8103 (char? c1)))
                                              (assert x8103)))
                                           (g8101
                                            (letrec ((x8104 (char? c2)))
                                              (assert x8104)))
                                           (g8102
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8105
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8105))))
                                    g8102)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8106
                                            (letrec ((x8107
                                                      (letrec ((x8108
                                                                (letrec ((x8109
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8109))))
                                                        (cdr x8108))))
                                              (car x8107))))
                                    g8106)))
                               (newline
                                (lambda () (letrec ((g8110 #f)) g8110)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8111
                                            (letrec ((x8113
                                                      (letrec ((x8114 (* m n)))
                                                        (abs x8114)))
                                                     (x8112 (gcd m n)))
                                              (/ x8113 x8112))))
                                    g8111)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8115
                                            (letrec ((x8117 (number? x)))
                                              (assert x8117)))
                                           (g8116
                                            (letrec ((x8118 (<= x y)))
                                              (not x8118))))
                                    g8116)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8119
                                            (letrec ((x8123 (list? l)))
                                              (assert x8123)))
                                           (g8120
                                            (letrec ((x8124 (number? index)))
                                              (assert x8124)))
                                           (g8121
                                            (letrec ((x8125
                                                      (letrec ((x8126
                                                                (length l)))
                                                        (< index x8126))))
                                              (assert x8125)))
                                           (g8122
                                            (letrec ((x-cnd8127 (= index 0)))
                                              (if x-cnd8127
                                                (car l)
                                                (letrec ((x8129 (cdr l))
                                                         (x8128 (- index 1)))
                                                  (list-ref x8129 x8128))))))
                                    g8122)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8130
                                            (letrec ((x-cnd8131 (= b 0)))
                                              (if x-cnd8131
                                                a
                                                (letrec ((x8132 (modulo a b)))
                                                  (gcd b x8132))))))
                                    g8130))))
                        (letrec ((g8133
                                  (letrec ((g8134
                                            (letrec ((tak
                                                      (lambda (x y z k)
                                                        (letrec ((g8135
                                                                  (letrec ((x-cnd8136
                                                                            (letrec ((x8137
                                                                                      (<
                                                                                       y
                                                                                       x)))
                                                                              (not
                                                                               x8137))))
                                                                    (if x-cnd8136
                                                                      (k z)
                                                                      (letrec ((x8138
                                                                                (-
                                                                                 x
                                                                                 1)))
                                                                        (tak
                                                                         x8138
                                                                         y
                                                                         z
                                                                         (lambda (v1)
                                                                           (tak
                                                                            (-
                                                                             y
                                                                             1)
                                                                            z
                                                                            x
                                                                            (lambda (v2)
                                                                              (tak
                                                                               (-
                                                                                z
                                                                                1)
                                                                               x
                                                                               y
                                                                               (lambda (v3)
                                                                                 (tak
                                                                                  v1
                                                                                  v2
                                                                                  v3
                                                                                  k))))))))))))
                                                          g8135)))
                                                     (tak-main
                                                      (lambda (x y z)
                                                        (letrec ((g8139
                                                                  (letrec ((x8140
                                                                            (letrec ((x8141
                                                                                      (x)))
                                                                              (λ x8141
                                                                                x))))
                                                                    (tak
                                                                     x
                                                                     y
                                                                     z
                                                                     x8140))))
                                                          g8139))))
                                              (letrec ((g8142
                                                        (letrec ((g8143
                                                                  (letrec ((g8144
                                                                            (letrec ((x8148
                                                                                      ((lambda (j7232
                                                                                                k7233
                                                                                                f7234)
                                                                                         (lambda (g7229
                                                                                                  g7230
                                                                                                  g7231)
                                                                                           (integer?/c
                                                                                            j7232
                                                                                            k7233
                                                                                            (f7234
                                                                                             (integer?/c
                                                                                              j7232
                                                                                              k7233
                                                                                              g7229)
                                                                                             (integer?/c
                                                                                              j7232
                                                                                              k7233
                                                                                              g7230)
                                                                                             (integer?/c
                                                                                              j7232
                                                                                              k7233
                                                                                              g7231)))))
                                                                                       'module
                                                                                       'importer
                                                                                       tak-main))
                                                                                     (x8147
                                                                                      (input))
                                                                                     (x8146
                                                                                      (input))
                                                                                     (x8145
                                                                                      (input)))
                                                                              (x8148
                                                                               x8147
                                                                               x8146
                                                                               x8145))))
                                                                    g8144)))
                                                          g8143)))
                                                g8142))))
                                    g8134)))
                          g8133))))
              g7246)))
    g7245))
