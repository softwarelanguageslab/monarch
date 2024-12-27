(letrec ((any? (lambda (v) (letrec ((g7247 #t)) g7247)))
         (meta (lambda (v) (letrec ((g7248 v)) g7248)))
         (member
          (lambda (v lst)
            (letrec ((g7249
                      (letrec ((g7250
                                (letrec ((x-e7251 lst))
                                  (match
                                   x-e7251
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7252 (eq? v v1)))
                                       (if x-cnd7252 #t (member v vs)))))))))
                        g7250)))
              g7249)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7253 (lambda (v) (letrec ((g7254 v)) g7254)))) g7253)))
         (nonzero?
          (lambda (v)
            (letrec ((g7255 (letrec ((x7256 (= v 0))) (not x7256)))) g7255))))
  (letrec ((g7257
            (letrec ((g7258
                      (letrec ((real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7259
                                            (letrec ((x-cnd7260 (real? g7162)))
                                              (if x-cnd7260
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7259)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7261
                                            (letrec ((x-cnd7262
                                                      (boolean? g7165)))
                                              (if x-cnd7262
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7261)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7263
                                            (letrec ((x-cnd7264
                                                      (number? g7168)))
                                              (if x-cnd7264
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7263)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7265
                                            (letrec ((x-cnd7266
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7266
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7265)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7267
                                            (letrec ((x-cnd7268
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7268
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7267)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7269
                                            (letrec ((x-cnd7270 (pair? g7177)))
                                              (if x-cnd7270
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7269)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7271
                                            (letrec ((x-cnd7272 (pair? g7180)))
                                              (if x-cnd7272
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7271)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7273
                                            (letrec ((x-cnd7274
                                                      (integer? g7183)))
                                              (if x-cnd7274
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7273)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7275
                                            (lambda (k j v)
                                              (letrec ((g7276
                                                        (letrec ((x-cnd7277
                                                                  (c1 k j v)))
                                                          (if x-cnd7277
                                                            (c2 k j v)
                                                            #f))))
                                                g7276))))
                                    g7275)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7278
                                            (lambda (k j v)
                                              (letrec ((g7279
                                                        (letrec ((x-cnd7280
                                                                  (null? v)))
                                                          (if x-cnd7280
                                                            '()
                                                            (letrec ((x7284
                                                                      (letrec ((x7285
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7285)))
                                                                     (x7281
                                                                      (letrec ((x7283
                                                                                (list-of
                                                                                 contract))
                                                                               (x7282
                                                                                (cdr
                                                                                 v)))
                                                                        (x7283
                                                                         k
                                                                         j
                                                                         x7282))))
                                                              (cons
                                                               x7284
                                                               x7281))))))
                                                g7279))))
                                    g7278)))
                               (any? (lambda (v) (letrec ((g7286 #t)) g7286)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7287
                                            (letrec ((x7288 (= v 0)))
                                              (not x7288))))
                                    g7287)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7289
                                            (letrec ((x-cnd7290
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7290
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7289)))
                               (meta (lambda (v) (letrec ((g7291 v)) g7291)))
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
                                (lambda (cnd) (letrec ((g7292 #t)) g7292)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7293
                                            (letrec ((x7294
                                                      (letrec ((x7295 (cdr x)))
                                                        (cdr x7295))))
                                              (cdr x7294))))
                                    g7293)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7296
                                            (letrec ((x7299 (procedure? f)))
                                              (assert x7299)))
                                           (g7297
                                            (letrec ((x7300 (list? l)))
                                              (assert x7300)))
                                           (g7298
                                            (letrec ((x-cnd7301 (null? l)))
                                              (if x-cnd7301
                                                '()
                                                (letrec ((x7304
                                                          (letrec ((x7305
                                                                    (car l)))
                                                            (f x7305)))
                                                         (x7302
                                                          (letrec ((x7303
                                                                    (cdr l)))
                                                            (map f x7303))))
                                                  (cons x7304 x7302))))))
                                    g7298)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7306
                                            (letrec ((x7307 (car x)))
                                              (cdr x7307))))
                                    g7306)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7308
                                            (letrec ((x7309
                                                      (letrec ((x7310
                                                                (letrec ((x7311
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7311))))
                                                        (cdr x7310))))
                                              (car x7309))))
                                    g7308)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7312
                                            (letrec ((x7313
                                                      (letrec ((x7314
                                                                (letrec ((x7315
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7315))))
                                                        (car x7314))))
                                              (cdr x7313))))
                                    g7312)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7316
                                            (letrec ((x7319
                                                      (string? filename)))
                                              (assert x7319)))
                                           (g7317
                                            (letrec ((x7320 (procedure? proc)))
                                              (assert x7320)))
                                           (g7318
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7321
                                                        (close-output-port
                                                         output-port))
                                                       (g7322 res))
                                                g7322))))
                                    g7318)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7323
                                            (letrec ((x7324
                                                      (letrec ((x7325 (cdr x)))
                                                        (cdr x7325))))
                                              (car x7324))))
                                    g7323)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7326
                                            (letrec ((x7327
                                                      (letrec ((x7328
                                                                (letrec ((x7329
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7329))))
                                                        (car x7328))))
                                              (cdr x7327))))
                                    g7326)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7330
                                            (letrec ((x7332 (list? l)))
                                              (assert x7332)))
                                           (g7331
                                            (letrec ((x-cnd7333 (null? l)))
                                              (if x-cnd7333
                                                #f
                                                (letrec ((x-cnd7334
                                                          (letrec ((x7335
                                                                    (caar l)))
                                                            (eq? x7335 k))))
                                                  (if x-cnd7334
                                                    (car l)
                                                    (letrec ((x7336 (cdr l)))
                                                      (assq k x7336))))))))
                                    g7331)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7337
                                            (letrec ((x7338 (modulo x 2)))
                                              (= 0 x7338))))
                                    g7337)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7339
                                            (letrec ((x7341 (list? l)))
                                              (assert x7341)))
                                           (g7340
                                            (letrec ((x-cnd7342 (null? l)))
                                              (if x-cnd7342
                                                ""
                                                (letrec ((x7345
                                                          (letrec ((x7346
                                                                    (car l)))
                                                            (char->string
                                                             x7346)))
                                                         (x7343
                                                          (letrec ((x7344
                                                                    (cdr l)))
                                                            (list->string
                                                             x7344))))
                                                  (string-append
                                                   x7345
                                                   x7343))))))
                                    g7340)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7347
                                            (letrec ((x7350 (char? c1)))
                                              (assert x7350)))
                                           (g7348
                                            (letrec ((x7351 (char? c2)))
                                              (assert x7351)))
                                           (g7349
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7352
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7352))))
                                    g7349)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7353
                                            (letrec ((x7354
                                                      (letrec ((x7355
                                                                (letrec ((x7356
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7356))))
                                                        (cdr x7355))))
                                              (cdr x7354))))
                                    g7353)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7357
                                            (letrec ((x7360 (list? l)))
                                              (assert x7360)))
                                           (g7358
                                            (letrec ((x7361 (numer?)))
                                              (assert x7361)))
                                           (g7359
                                            (letrec ((x-cnd7362 (zero? k)))
                                              (if x-cnd7362
                                                x
                                                (letrec ((x7364 (cdr x))
                                                         (x7363 (- k 1)))
                                                  (list-tail x7364 x7363))))))
                                    g7359)))
                               (halt (lambda () (letrec ((g7365 '())) g7365)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7366
                                            (letrec ((x-cnd7367
                                                      (letrec ((x7368 #\a))
                                                        (char-ci>=? c x7368))))
                                              (if x-cnd7367
                                                (letrec ((x7369 #\z))
                                                  (char-ci<=? c x7369))
                                                #f))))
                                    g7366)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7370
                                            (letrec ((x7372 (number? x)))
                                              (assert x7372)))
                                           (g7371
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7373
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7374
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7374)))))
                                                g7373))))
                                    g7371)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7375
                                            (letrec ((val7146
                                                      (letrec ((x7376
                                                                (char->integer
                                                                 c)))
                                                        (= x7376 9))))
                                              (letrec ((g7377
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7378
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7378
                                                                       10))))
                                                            (letrec ((g7379
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7380
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7380
                                                                           32)))))
                                                              g7379)))))
                                                g7377))))
                                    g7375)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7381
                                            (letrec ((x7382
                                                      (letrec ((x7383 (car x)))
                                                        (cdr x7383))))
                                              (cdr x7382))))
                                    g7381)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7384
                                            (letrec ((x7386 (number? x)))
                                              (assert x7386)))
                                           (g7385 (> x 0)))
                                    g7385)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7387 #f)) g7387)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7388
                                            (letrec ((x7389 (cdr x)))
                                              (cdr x7389))))
                                    g7388)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7390
                                            (letrec ((x7392 (number? x)))
                                              (assert x7392)))
                                           (g7391
                                            (letrec ((x-cnd7393 (< x 0)))
                                              (if x-cnd7393
                                                (ceiling x)
                                                (floor x)))))
                                    g7391)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7394
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7395
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7397
                                                                              (null?
                                                                               a))
                                                                             (x7396
                                                                              (null?
                                                                               b)))
                                                                      (and x7397
                                                                           x7396))))
                                                            (letrec ((g7398
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7401
                                                                                            (string?
                                                                                             a))
                                                                                           (x7400
                                                                                            (string?
                                                                                             b))
                                                                                           (x7399
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7401
                                                                                         x7400
                                                                                         x7399))))
                                                                          (letrec ((g7402
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7410
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7409
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7406
                                                                                                          (letrec ((x7408
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7407
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7408
                                                                                                             x7407)))
                                                                                                         (x7403
                                                                                                          (letrec ((x7405
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7404
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7405
                                                                                                             x7404))))
                                                                                                  (and x7410
                                                                                                       x7409
                                                                                                       x7406
                                                                                                       x7403))))
                                                                                        (letrec ((g7411
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7430
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7429
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7412
                                                                                                              (letrec ((x7426
                                                                                                                        (letrec ((x7427
                                                                                                                                  (letrec ((x7428
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7428))))
                                                                                                                          (x7427)))
                                                                                                                       (x7413
                                                                                                                        (letrec ((x7424
                                                                                                                                  (letrec ((x7425
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7425
                                                                                                                                     n)))
                                                                                                                                 (x7414
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7415
                                                                                                                                                        (letrec ((x7422
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7416
                                                                                                                                                                  (letrec ((x7419
                                                                                                                                                                            (letrec ((x7421
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7420
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7421
                                                                                                                                                                               x7420)))
                                                                                                                                                                           (x7417
                                                                                                                                                                            (letrec ((x7418
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7418))))
                                                                                                                                                                    (and x7419
                                                                                                                                                                         x7417))))
                                                                                                                                                          (or x7422
                                                                                                                                                              x7416))))
                                                                                                                                                g7415))))
                                                                                                                                    (letrec ((g7423
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7423))))
                                                                                                                          (and x7424
                                                                                                                               x7414))))
                                                                                                                (let x7426 x7413))))
                                                                                                      (and x7430
                                                                                                           x7429
                                                                                                           x7412)))))
                                                                                          g7411)))))
                                                                            g7402)))))
                                                              g7398)))))
                                                g7395))))
                                    g7394)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7431
                                            (letrec ((x7432
                                                      (letrec ((x7433
                                                                (letrec ((x7434
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7434))))
                                                        (car x7433))))
                                              (cdr x7432))))
                                    g7431)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7435
                                            (letrec ((x7436
                                                      (letrec ((x7437
                                                                (letrec ((x7438
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7438))))
                                                        (car x7437))))
                                              (car x7436))))
                                    g7435)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7439 (eq? x y))) g7439)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7440
                                            (letrec ((x7442 (number? x)))
                                              (assert x7442)))
                                           (g7441
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7443
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7444
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7444)))))
                                                g7443))))
                                    g7441)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7445
                                            (letrec ((x7448
                                                      (string? filename)))
                                              (assert x7448)))
                                           (g7446
                                            (letrec ((x7449 (procedure? proc)))
                                              (assert x7449)))
                                           (g7447
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7450
                                                        (close-input-port
                                                         input-port))
                                                       (g7451 res))
                                                g7451))))
                                    g7447)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7452 (cons x '()))) g7452)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7453
                                            (letrec ((x7456 (char? c1)))
                                              (assert x7456)))
                                           (g7454
                                            (letrec ((x7457 (char? c2)))
                                              (assert x7457)))
                                           (g7455
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7458
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7458))))
                                    g7455)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7459
                                            (letrec ((x7460
                                                      (letrec ((x7461 (car x)))
                                                        (car x7461))))
                                              (cdr x7460))))
                                    g7459)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7462
                                            (letrec ((x7463
                                                      (letrec ((x7464
                                                                (letrec ((x7465
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7465))))
                                                        (car x7464))))
                                              (cdr x7463))))
                                    g7462)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7466
                                            (letrec ((x7467
                                                      (letrec ((x7468 (car x)))
                                                        (cdr x7468))))
                                              (car x7467))))
                                    g7466)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7469
                                            (letrec ((x7470
                                                      (letrec ((x7471 (cdr x)))
                                                        (car x7471))))
                                              (car x7470))))
                                    g7469)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7472
                                            (letrec ((x7475 (char? c1)))
                                              (assert x7475)))
                                           (g7473
                                            (letrec ((x7476 (char? c2)))
                                              (assert x7476)))
                                           (g7474
                                            (letrec ((x7477
                                                      (char-ci<=? c1 c2)))
                                              (not x7477))))
                                    g7474)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7478
                                            (letrec ((x7479
                                                      (letrec ((x7480
                                                                (letrec ((x7481
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7481))))
                                                        (car x7480))))
                                              (car x7479))))
                                    g7478)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7482
                                            (letrec ((x7484 (number? x)))
                                              (assert x7484)))
                                           (g7483 (< x 0)))
                                    g7483)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7485 (memq e l))) g7485)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7486
                                            (letrec ((x7487
                                                      (letrec ((x7488 (car x)))
                                                        (car x7488))))
                                              (car x7487))))
                                    g7486)))
                               (debug
                                (lambda (e) (letrec ((g7489 '())) g7489)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7490
                                            (letrec ((x7492 (list? l)))
                                              (assert x7492)))
                                           (g7491
                                            (letrec ((x-cnd7493 (null? l)))
                                              (if x-cnd7493
                                                '()
                                                (letrec ((x7496
                                                          (letrec ((x7497
                                                                    (cdr l)))
                                                            (reverse x7497)))
                                                         (x7494
                                                          (letrec ((x7495
                                                                    (car l)))
                                                            (list x7495))))
                                                  (append x7496 x7494))))))
                                    g7491)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7498
                                            (letrec ((x7499
                                                      (letrec ((x7500
                                                                (letrec ((x7501
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7501))))
                                                        (car x7500))))
                                              (car x7499))))
                                    g7498)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7502
                                            (letrec ((x7503
                                                      (letrec ((x7504
                                                                (letrec ((x7505
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7505))))
                                                        (cdr x7504))))
                                              (cdr x7503))))
                                    g7502)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7506
                                            (letrec ((x7508 (number? x)))
                                              (assert x7508)))
                                           (g7507
                                            (letrec ((x7509 (modulo x 2)))
                                              (= 1 x7509))))
                                    g7507)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7510
                                            (letrec ((x7511
                                                      (letrec ((x7512
                                                                (letrec ((x7513
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7513))))
                                                        (car x7512))))
                                              (car x7511))))
                                    g7510)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7514
                                            (letrec ((x7517 (procedure? proc)))
                                              (assert x7517)))
                                           (g7515
                                            (letrec ((x7518 (list? args)))
                                              (assert x7518)))
                                           (g7516
                                            (if cnd
                                              (letrec ((g7519 (proc))) g7519)
                                              (if cnd
                                                (letrec ((g7520
                                                          (letrec ((x7521
                                                                    (car
                                                                     args)))
                                                            (proc x7521))))
                                                  g7520)
                                                (if cnd
                                                  (letrec ((g7522
                                                            (letrec ((x7524
                                                                      (car
                                                                       args))
                                                                     (x7523
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7524
                                                               x7523))))
                                                    g7522)
                                                  (if cnd
                                                    (letrec ((g7525
                                                              (letrec ((x7528
                                                                        (car
                                                                         args))
                                                                       (x7527
                                                                        (cadr
                                                                         args))
                                                                       (x7526
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7528
                                                                 x7527
                                                                 x7526))))
                                                      g7525)
                                                    (if cnd
                                                      (letrec ((g7529
                                                                (letrec ((x7533
                                                                          (car
                                                                           args))
                                                                         (x7532
                                                                          (cadr
                                                                           args))
                                                                         (x7531
                                                                          (caddr
                                                                           args))
                                                                         (x7530
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7533
                                                                   x7532
                                                                   x7531
                                                                   x7530))))
                                                        g7529)
                                                      (if cnd
                                                        (letrec ((g7534
                                                                  (letrec ((x7540
                                                                            (car
                                                                             args))
                                                                           (x7539
                                                                            (cadr
                                                                             args))
                                                                           (x7538
                                                                            (caddr
                                                                             args))
                                                                           (x7537
                                                                            (cadddr
                                                                             args))
                                                                           (x7535
                                                                            (letrec ((x7536
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7536))))
                                                                    (proc
                                                                     x7540
                                                                     x7539
                                                                     x7538
                                                                     x7537
                                                                     x7535))))
                                                          g7534)
                                                        (if cnd
                                                          (letrec ((g7541
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
                                                                                 x7543))))
                                                                      (proc
                                                                       x7549
                                                                       x7548
                                                                       x7547
                                                                       x7546
                                                                       x7544
                                                                       x7542))))
                                                            g7541)
                                                          (if cnd
                                                            (letrec ((g7550
                                                                      (letrec ((x7560
                                                                                (car
                                                                                 args))
                                                                               (x7559
                                                                                (cadr
                                                                                 args))
                                                                               (x7558
                                                                                (caddr
                                                                                 args))
                                                                               (x7557
                                                                                (cadddr
                                                                                 args))
                                                                               (x7555
                                                                                (letrec ((x7556
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7556)))
                                                                               (x7553
                                                                                (letrec ((x7554
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7554)))
                                                                               (x7551
                                                                                (letrec ((x7552
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7552))))
                                                                        (proc
                                                                         x7560
                                                                         x7559
                                                                         x7558
                                                                         x7557
                                                                         x7555
                                                                         x7553
                                                                         x7551))))
                                                              g7550)
                                                            (letrec ((g7561
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7561)))))))))))
                                    g7516)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7562
                                            (letrec ((x7564 (list? l)))
                                              (assert x7564)))
                                           (g7563
                                            (letrec ((x-cnd7565 (null? l)))
                                              (if x-cnd7565
                                                #f
                                                (letrec ((x-cnd7566
                                                          (letrec ((x7567
                                                                    (car l)))
                                                            (equal? x7567 e))))
                                                  (if x-cnd7566
                                                    l
                                                    (letrec ((x7568 (cdr l)))
                                                      (member e x7568))))))))
                                    g7563)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7569
                                            (letrec ((x7570
                                                      (letrec ((x7571
                                                                (letrec ((x7572
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7572))))
                                                        (cdr x7571))))
                                              (cdr x7570))))
                                    g7569)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g7573
                                            (letrec ((x7574
                                                      (letrec ((x7575
                                                                (letrec ((x7576
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7576))))
                                                        (cdr x7575))))
                                              (car x7574))))
                                    g7573)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7577 (random 42))) g7577)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7578
                                            (letrec ((x7580 (number? x)))
                                              (assert x7580)))
                                           (g7579 (= x 0)))
                                    g7579)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7581
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7582
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7582))))
                                    g7581)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7583
                                            (letrec ((x7584 (cdr x)))
                                              (car x7584))))
                                    g7583)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7585
                                            (letrec ((val7156
                                                      (letrec ((x7588
                                                                (pair? l))
                                                               (x7586
                                                                (letrec ((x7587
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7587))))
                                                        (and x7588 x7586))))
                                              (letrec ((g7589
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7589))))
                                    g7585)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7590
                                            (letrec ((x7591
                                                      (letrec ((x7592
                                                                (letrec ((x7593
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7593))))
                                                        (cdr x7592))))
                                              (cdr x7591))))
                                    g7590)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7594
                                            (letrec ((x-cnd7595
                                                      (letrec ((x7596 #\0))
                                                        (char<=? x7596 c))))
                                              (if x-cnd7595
                                                (letrec ((x7597 #\9))
                                                  (char<=? c x7597))
                                                #f))))
                                    g7594)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7598
                                            (letrec ((x7600 (list? l)))
                                              (assert x7600)))
                                           (g7599
                                            (letrec ((x-cnd7601 (null? l)))
                                              (if x-cnd7601
                                                #f
                                                (letrec ((x-cnd7602
                                                          (letrec ((x7603
                                                                    (caar l)))
                                                            (eqv? x7603 k))))
                                                  (if x-cnd7602
                                                    (car l)
                                                    (letrec ((x7604 (cdr l)))
                                                      (assq k x7604))))))))
                                    g7599)))
                               (not
                                (lambda (x)
                                  (letrec ((g7605 (if x #f #t))) g7605)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7606 (append l1 l2))) g7606)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7607
                                            (letrec ((x7609 (list? l)))
                                              (assert x7609)))
                                           (g7608
                                            (letrec ((x-cnd7610 (null? l)))
                                              (if x-cnd7610
                                                #f
                                                (letrec ((x-cnd7611
                                                          (letrec ((x7612
                                                                    (car l)))
                                                            (eq? x7612 e))))
                                                  (if x-cnd7611
                                                    l
                                                    (letrec ((x7613 (cdr l)))
                                                      (memq e x7613))))))))
                                    g7608)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7614
                                            (letrec ((x7615
                                                      (letrec ((x7616
                                                                (letrec ((x7617
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7617))))
                                                        (cdr x7616))))
                                              (car x7615))))
                                    g7614)))
                               (length
                                (lambda (l)
                                  (letrec ((g7618
                                            (letrec ((x7620 (list? l)))
                                              (assert x7620)))
                                           (g7619
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7621
                                                                  (letrec ((x-cnd7622
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7622
                                                                      0
                                                                      (letrec ((x7623
                                                                                (letrec ((x7624
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7624))))
                                                                        (+
                                                                         1
                                                                         x7623))))))
                                                          g7621))))
                                              (letrec ((g7625 (rec l)))
                                                g7625))))
                                    g7619)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7626
                                            (letrec ((x7629 (char? c1)))
                                              (assert x7629)))
                                           (g7627
                                            (letrec ((x7630 (char? c2)))
                                              (assert x7630)))
                                           (g7628
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7631
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7631))))
                                    g7628)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7632
                                            (letrec ((x7633 (string<=? s1 s2)))
                                              (not x7633))))
                                    g7632)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7634
                                            (letrec ((x7635
                                                      (letrec ((x7636 (cdr x)))
                                                        (car x7636))))
                                              (cdr x7635))))
                                    g7634)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7637
                                            (letrec ((x7639 (list? l)))
                                              (assert x7639)))
                                           (g7638
                                            (letrec ((x-cnd7640 (null? l)))
                                              (if x-cnd7640
                                                #f
                                                (letrec ((x-cnd7641
                                                          (letrec ((x7642
                                                                    (caar l)))
                                                            (equal? x7642 k))))
                                                  (if x-cnd7641
                                                    (car l)
                                                    (letrec ((x7643 (cdr l)))
                                                      (assoc k x7643))))))))
                                    g7638)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7644
                                            (letrec ((x7645 (car x)))
                                              (car x7645))))
                                    g7644)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7646
                                            (letrec ((x7649 (char? c1)))
                                              (assert x7649)))
                                           (g7647
                                            (letrec ((x7650 (char? c2)))
                                              (assert x7650)))
                                           (g7648
                                            (letrec ((x7651 (char<=? c1 c2)))
                                              (not x7651))))
                                    g7648)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7652
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7653
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7653))))
                                    g7652)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7654
                                            (letrec ((x7657 (procedure? f)))
                                              (assert x7657)))
                                           (g7655
                                            (letrec ((x7658 (list? l)))
                                              (assert x7658)))
                                           (g7656
                                            (letrec ((x-cnd7659 (null? l)))
                                              (if x-cnd7659
                                                #t
                                                (letrec ((x-cnd7660 (pair? l)))
                                                  (if x-cnd7660
                                                    (letrec ((g7661
                                                              (letrec ((x7663
                                                                        (car
                                                                         l)))
                                                                (f x7663)))
                                                             (g7662
                                                              (letrec ((x7664
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7664))))
                                                      g7662)
                                                    '()))))))
                                    g7656)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7665
                                            (letrec ((x7667 (number? x)))
                                              (assert x7667)))
                                           (g7666
                                            (letrec ((x-cnd7668 (< x 0)))
                                              (if x-cnd7668 (- 0 x) x))))
                                    g7666)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7669
                                            (letrec ((x7672 (char? c1)))
                                              (assert x7672)))
                                           (g7670
                                            (letrec ((x7673 (char? c2)))
                                              (assert x7673)))
                                           (g7671
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7674
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7674))))
                                    g7671)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7675
                                            (letrec ((x7676
                                                      (letrec ((x7677
                                                                (letrec ((x7678
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7678))))
                                                        (cdr x7677))))
                                              (car x7676))))
                                    g7675)))
                               (newline
                                (lambda () (letrec ((g7679 #f)) g7679)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7680
                                            (letrec ((x7682
                                                      (letrec ((x7683 (* m n)))
                                                        (abs x7683)))
                                                     (x7681 (gcd m n)))
                                              (/ x7682 x7681))))
                                    g7680)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7684
                                            (letrec ((x7686 (number? x)))
                                              (assert x7686)))
                                           (g7685
                                            (letrec ((x7687 (<= x y)))
                                              (not x7687))))
                                    g7685)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7688
                                            (letrec ((x7692 (list? l)))
                                              (assert x7692)))
                                           (g7689
                                            (letrec ((x7693 (number? index)))
                                              (assert x7693)))
                                           (g7690
                                            (letrec ((x7694
                                                      (letrec ((x7695
                                                                (length l)))
                                                        (< index x7695))))
                                              (assert x7694)))
                                           (g7691
                                            (letrec ((x-cnd7696 (= index 0)))
                                              (if x-cnd7696
                                                (car l)
                                                (letrec ((x7698 (cdr l))
                                                         (x7697 (- index 1)))
                                                  (list-ref x7698 x7697))))))
                                    g7691)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7699
                                            (letrec ((x-cnd7700 (= b 0)))
                                              (if x-cnd7700
                                                a
                                                (letrec ((x7701 (modulo a b)))
                                                  (gcd b x7701))))))
                                    g7699)))
                               (real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7702
                                            (letrec ((x-cnd7703 (real? g7162)))
                                              (if x-cnd7703
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7702)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7704
                                            (letrec ((x-cnd7705
                                                      (boolean? g7165)))
                                              (if x-cnd7705
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7704)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7706
                                            (letrec ((x-cnd7707
                                                      (number? g7168)))
                                              (if x-cnd7707
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7706)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7708
                                            (letrec ((x-cnd7709
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7709
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7708)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7710
                                            (letrec ((x-cnd7711
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7711
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7710)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7712
                                            (letrec ((x-cnd7713 (pair? g7177)))
                                              (if x-cnd7713
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7712)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7714
                                            (letrec ((x-cnd7715 (pair? g7180)))
                                              (if x-cnd7715
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7714)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7716
                                            (letrec ((x-cnd7717
                                                      (integer? g7183)))
                                              (if x-cnd7717
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7716)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7718
                                            (lambda (k j v)
                                              (letrec ((g7719
                                                        (letrec ((x-cnd7720
                                                                  (c1 k j v)))
                                                          (if x-cnd7720
                                                            (c2 k j v)
                                                            #f))))
                                                g7719))))
                                    g7718)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7721
                                            (lambda (k j v)
                                              (letrec ((g7722
                                                        (letrec ((x-cnd7723
                                                                  (null? v)))
                                                          (if x-cnd7723
                                                            '()
                                                            (letrec ((x7727
                                                                      (letrec ((x7728
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7728)))
                                                                     (x7724
                                                                      (letrec ((x7726
                                                                                (list-of
                                                                                 contract))
                                                                               (x7725
                                                                                (cdr
                                                                                 v)))
                                                                        (x7726
                                                                         k
                                                                         j
                                                                         x7725))))
                                                              (cons
                                                               x7727
                                                               x7724))))))
                                                g7722))))
                                    g7721)))
                               (any? (lambda (v) (letrec ((g7729 #t)) g7729)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7730
                                            (letrec ((x7731 (= v 0)))
                                              (not x7731))))
                                    g7730)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7732
                                            (letrec ((x-cnd7733
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7733
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7732)))
                               (meta (lambda (v) (letrec ((g7734 v)) g7734)))
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
                                (lambda (cnd) (letrec ((g7735 #t)) g7735)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7736
                                            (letrec ((x7737
                                                      (letrec ((x7738 (cdr x)))
                                                        (cdr x7738))))
                                              (cdr x7737))))
                                    g7736)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7739
                                            (letrec ((x7742 (procedure? f)))
                                              (assert x7742)))
                                           (g7740
                                            (letrec ((x7743 (list? l)))
                                              (assert x7743)))
                                           (g7741
                                            (letrec ((x-cnd7744 (null? l)))
                                              (if x-cnd7744
                                                '()
                                                (letrec ((x7747
                                                          (letrec ((x7748
                                                                    (car l)))
                                                            (f x7748)))
                                                         (x7745
                                                          (letrec ((x7746
                                                                    (cdr l)))
                                                            (map f x7746))))
                                                  (cons x7747 x7745))))))
                                    g7741)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7749
                                            (letrec ((x7750 (car x)))
                                              (cdr x7750))))
                                    g7749)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7751
                                            (letrec ((x7752
                                                      (letrec ((x7753
                                                                (letrec ((x7754
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7754))))
                                                        (cdr x7753))))
                                              (car x7752))))
                                    g7751)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7755
                                            (letrec ((x7756
                                                      (letrec ((x7757
                                                                (letrec ((x7758
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7758))))
                                                        (car x7757))))
                                              (cdr x7756))))
                                    g7755)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7759
                                            (letrec ((x7762
                                                      (string? filename)))
                                              (assert x7762)))
                                           (g7760
                                            (letrec ((x7763 (procedure? proc)))
                                              (assert x7763)))
                                           (g7761
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7764
                                                        (close-output-port
                                                         output-port))
                                                       (g7765 res))
                                                g7765))))
                                    g7761)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7766
                                            (letrec ((x7767
                                                      (letrec ((x7768 (cdr x)))
                                                        (cdr x7768))))
                                              (car x7767))))
                                    g7766)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7769
                                            (letrec ((x7770
                                                      (letrec ((x7771
                                                                (letrec ((x7772
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7772))))
                                                        (car x7771))))
                                              (cdr x7770))))
                                    g7769)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7773
                                            (letrec ((x7775 (list? l)))
                                              (assert x7775)))
                                           (g7774
                                            (letrec ((x-cnd7776 (null? l)))
                                              (if x-cnd7776
                                                #f
                                                (letrec ((x-cnd7777
                                                          (letrec ((x7778
                                                                    (caar l)))
                                                            (eq? x7778 k))))
                                                  (if x-cnd7777
                                                    (car l)
                                                    (letrec ((x7779 (cdr l)))
                                                      (assq k x7779))))))))
                                    g7774)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7780
                                            (letrec ((x7781 (modulo x 2)))
                                              (= 0 x7781))))
                                    g7780)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7782
                                            (letrec ((x7784 (list? l)))
                                              (assert x7784)))
                                           (g7783
                                            (letrec ((x-cnd7785 (null? l)))
                                              (if x-cnd7785
                                                ""
                                                (letrec ((x7788
                                                          (letrec ((x7789
                                                                    (car l)))
                                                            (char->string
                                                             x7789)))
                                                         (x7786
                                                          (letrec ((x7787
                                                                    (cdr l)))
                                                            (list->string
                                                             x7787))))
                                                  (string-append
                                                   x7788
                                                   x7786))))))
                                    g7783)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7790
                                            (letrec ((x7793 (char? c1)))
                                              (assert x7793)))
                                           (g7791
                                            (letrec ((x7794 (char? c2)))
                                              (assert x7794)))
                                           (g7792
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7795
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7795))))
                                    g7792)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7796
                                            (letrec ((x7797
                                                      (letrec ((x7798
                                                                (letrec ((x7799
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7799))))
                                                        (cdr x7798))))
                                              (cdr x7797))))
                                    g7796)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7800
                                            (letrec ((x7803 (list? l)))
                                              (assert x7803)))
                                           (g7801
                                            (letrec ((x7804 (numer?)))
                                              (assert x7804)))
                                           (g7802
                                            (letrec ((x-cnd7805 (zero? k)))
                                              (if x-cnd7805
                                                x
                                                (letrec ((x7807 (cdr x))
                                                         (x7806 (- k 1)))
                                                  (list-tail x7807 x7806))))))
                                    g7802)))
                               (halt (lambda () (letrec ((g7808 '())) g7808)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7809
                                            (letrec ((x-cnd7810
                                                      (letrec ((x7811 #\a))
                                                        (char-ci>=? c x7811))))
                                              (if x-cnd7810
                                                (letrec ((x7812 #\z))
                                                  (char-ci<=? c x7812))
                                                #f))))
                                    g7809)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7813
                                            (letrec ((x7815 (number? x)))
                                              (assert x7815)))
                                           (g7814
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7816
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7817
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7817)))))
                                                g7816))))
                                    g7814)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7818
                                            (letrec ((val7146
                                                      (letrec ((x7819
                                                                (char->integer
                                                                 c)))
                                                        (= x7819 9))))
                                              (letrec ((g7820
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7821
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7821
                                                                       10))))
                                                            (letrec ((g7822
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7823
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7823
                                                                           32)))))
                                                              g7822)))))
                                                g7820))))
                                    g7818)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7824
                                            (letrec ((x7825
                                                      (letrec ((x7826 (car x)))
                                                        (cdr x7826))))
                                              (cdr x7825))))
                                    g7824)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7827
                                            (letrec ((x7829 (number? x)))
                                              (assert x7829)))
                                           (g7828 (> x 0)))
                                    g7828)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7830 #f)) g7830)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7831
                                            (letrec ((x7832 (cdr x)))
                                              (cdr x7832))))
                                    g7831)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7833
                                            (letrec ((x7835 (number? x)))
                                              (assert x7835)))
                                           (g7834
                                            (letrec ((x-cnd7836 (< x 0)))
                                              (if x-cnd7836
                                                (ceiling x)
                                                (floor x)))))
                                    g7834)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7837
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7838
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7840
                                                                              (null?
                                                                               a))
                                                                             (x7839
                                                                              (null?
                                                                               b)))
                                                                      (and x7840
                                                                           x7839))))
                                                            (letrec ((g7841
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7844
                                                                                            (string?
                                                                                             a))
                                                                                           (x7843
                                                                                            (string?
                                                                                             b))
                                                                                           (x7842
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7844
                                                                                         x7843
                                                                                         x7842))))
                                                                          (letrec ((g7845
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7853
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7852
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7849
                                                                                                          (letrec ((x7851
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7850
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7851
                                                                                                             x7850)))
                                                                                                         (x7846
                                                                                                          (letrec ((x7848
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7847
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7848
                                                                                                             x7847))))
                                                                                                  (and x7853
                                                                                                       x7852
                                                                                                       x7849
                                                                                                       x7846))))
                                                                                        (letrec ((g7854
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7873
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7872
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7855
                                                                                                              (letrec ((x7869
                                                                                                                        (letrec ((x7870
                                                                                                                                  (letrec ((x7871
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7871))))
                                                                                                                          (x7870)))
                                                                                                                       (x7856
                                                                                                                        (letrec ((x7867
                                                                                                                                  (letrec ((x7868
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7868
                                                                                                                                     n)))
                                                                                                                                 (x7857
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7858
                                                                                                                                                        (letrec ((x7865
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7859
                                                                                                                                                                  (letrec ((x7862
                                                                                                                                                                            (letrec ((x7864
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7863
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7864
                                                                                                                                                                               x7863)))
                                                                                                                                                                           (x7860
                                                                                                                                                                            (letrec ((x7861
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7861))))
                                                                                                                                                                    (and x7862
                                                                                                                                                                         x7860))))
                                                                                                                                                          (or x7865
                                                                                                                                                              x7859))))
                                                                                                                                                g7858))))
                                                                                                                                    (letrec ((g7866
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7866))))
                                                                                                                          (and x7867
                                                                                                                               x7857))))
                                                                                                                (let x7869 x7856))))
                                                                                                      (and x7873
                                                                                                           x7872
                                                                                                           x7855)))))
                                                                                          g7854)))))
                                                                            g7845)))))
                                                              g7841)))))
                                                g7838))))
                                    g7837)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7874
                                            (letrec ((x7875
                                                      (letrec ((x7876
                                                                (letrec ((x7877
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7877))))
                                                        (car x7876))))
                                              (cdr x7875))))
                                    g7874)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7878
                                            (letrec ((x7879
                                                      (letrec ((x7880
                                                                (letrec ((x7881
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7881))))
                                                        (car x7880))))
                                              (car x7879))))
                                    g7878)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7882 (eq? x y))) g7882)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7883
                                            (letrec ((x7885 (number? x)))
                                              (assert x7885)))
                                           (g7884
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7886
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7887
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7887)))))
                                                g7886))))
                                    g7884)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7888
                                            (letrec ((x7891
                                                      (string? filename)))
                                              (assert x7891)))
                                           (g7889
                                            (letrec ((x7892 (procedure? proc)))
                                              (assert x7892)))
                                           (g7890
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7893
                                                        (close-input-port
                                                         input-port))
                                                       (g7894 res))
                                                g7894))))
                                    g7890)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7895 (cons x '()))) g7895)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7896
                                            (letrec ((x7899 (char? c1)))
                                              (assert x7899)))
                                           (g7897
                                            (letrec ((x7900 (char? c2)))
                                              (assert x7900)))
                                           (g7898
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7901
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7901))))
                                    g7898)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7902
                                            (letrec ((x7903
                                                      (letrec ((x7904 (car x)))
                                                        (car x7904))))
                                              (cdr x7903))))
                                    g7902)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7905
                                            (letrec ((x7906
                                                      (letrec ((x7907
                                                                (letrec ((x7908
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7908))))
                                                        (car x7907))))
                                              (cdr x7906))))
                                    g7905)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7909
                                            (letrec ((x7910
                                                      (letrec ((x7911 (car x)))
                                                        (cdr x7911))))
                                              (car x7910))))
                                    g7909)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7912
                                            (letrec ((x7913
                                                      (letrec ((x7914 (cdr x)))
                                                        (car x7914))))
                                              (car x7913))))
                                    g7912)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7915
                                            (letrec ((x7918 (char? c1)))
                                              (assert x7918)))
                                           (g7916
                                            (letrec ((x7919 (char? c2)))
                                              (assert x7919)))
                                           (g7917
                                            (letrec ((x7920
                                                      (char-ci<=? c1 c2)))
                                              (not x7920))))
                                    g7917)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7921
                                            (letrec ((x7922
                                                      (letrec ((x7923
                                                                (letrec ((x7924
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7924))))
                                                        (car x7923))))
                                              (car x7922))))
                                    g7921)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7925
                                            (letrec ((x7927 (number? x)))
                                              (assert x7927)))
                                           (g7926 (< x 0)))
                                    g7926)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7928 (memq e l))) g7928)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7929
                                            (letrec ((x7930
                                                      (letrec ((x7931 (car x)))
                                                        (car x7931))))
                                              (car x7930))))
                                    g7929)))
                               (debug
                                (lambda (e) (letrec ((g7932 '())) g7932)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7933
                                            (letrec ((x7935 (list? l)))
                                              (assert x7935)))
                                           (g7934
                                            (letrec ((x-cnd7936 (null? l)))
                                              (if x-cnd7936
                                                '()
                                                (letrec ((x7939
                                                          (letrec ((x7940
                                                                    (cdr l)))
                                                            (reverse x7940)))
                                                         (x7937
                                                          (letrec ((x7938
                                                                    (car l)))
                                                            (list x7938))))
                                                  (append x7939 x7937))))))
                                    g7934)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7941
                                            (letrec ((x7942
                                                      (letrec ((x7943
                                                                (letrec ((x7944
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7944))))
                                                        (car x7943))))
                                              (car x7942))))
                                    g7941)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7945
                                            (letrec ((x7946
                                                      (letrec ((x7947
                                                                (letrec ((x7948
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7948))))
                                                        (cdr x7947))))
                                              (cdr x7946))))
                                    g7945)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7949
                                            (letrec ((x7951 (number? x)))
                                              (assert x7951)))
                                           (g7950
                                            (letrec ((x7952 (modulo x 2)))
                                              (= 1 x7952))))
                                    g7950)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7953
                                            (letrec ((x7954
                                                      (letrec ((x7955
                                                                (letrec ((x7956
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7956))))
                                                        (car x7955))))
                                              (car x7954))))
                                    g7953)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7957
                                            (letrec ((x7960 (procedure? proc)))
                                              (assert x7960)))
                                           (g7958
                                            (letrec ((x7961 (list? args)))
                                              (assert x7961)))
                                           (g7959
                                            (if cnd
                                              (letrec ((g7962 (proc))) g7962)
                                              (if cnd
                                                (letrec ((g7963
                                                          (letrec ((x7964
                                                                    (car
                                                                     args)))
                                                            (proc x7964))))
                                                  g7963)
                                                (if cnd
                                                  (letrec ((g7965
                                                            (letrec ((x7967
                                                                      (car
                                                                       args))
                                                                     (x7966
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7967
                                                               x7966))))
                                                    g7965)
                                                  (if cnd
                                                    (letrec ((g7968
                                                              (letrec ((x7971
                                                                        (car
                                                                         args))
                                                                       (x7970
                                                                        (cadr
                                                                         args))
                                                                       (x7969
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7971
                                                                 x7970
                                                                 x7969))))
                                                      g7968)
                                                    (if cnd
                                                      (letrec ((g7972
                                                                (letrec ((x7976
                                                                          (car
                                                                           args))
                                                                         (x7975
                                                                          (cadr
                                                                           args))
                                                                         (x7974
                                                                          (caddr
                                                                           args))
                                                                         (x7973
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7976
                                                                   x7975
                                                                   x7974
                                                                   x7973))))
                                                        g7972)
                                                      (if cnd
                                                        (letrec ((g7977
                                                                  (letrec ((x7983
                                                                            (car
                                                                             args))
                                                                           (x7982
                                                                            (cadr
                                                                             args))
                                                                           (x7981
                                                                            (caddr
                                                                             args))
                                                                           (x7980
                                                                            (cadddr
                                                                             args))
                                                                           (x7978
                                                                            (letrec ((x7979
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7979))))
                                                                    (proc
                                                                     x7983
                                                                     x7982
                                                                     x7981
                                                                     x7980
                                                                     x7978))))
                                                          g7977)
                                                        (if cnd
                                                          (letrec ((g7984
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
                                                                                 x7986))))
                                                                      (proc
                                                                       x7992
                                                                       x7991
                                                                       x7990
                                                                       x7989
                                                                       x7987
                                                                       x7985))))
                                                            g7984)
                                                          (if cnd
                                                            (letrec ((g7993
                                                                      (letrec ((x8003
                                                                                (car
                                                                                 args))
                                                                               (x8002
                                                                                (cadr
                                                                                 args))
                                                                               (x8001
                                                                                (caddr
                                                                                 args))
                                                                               (x8000
                                                                                (cadddr
                                                                                 args))
                                                                               (x7998
                                                                                (letrec ((x7999
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7999)))
                                                                               (x7996
                                                                                (letrec ((x7997
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7997)))
                                                                               (x7994
                                                                                (letrec ((x7995
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7995))))
                                                                        (proc
                                                                         x8003
                                                                         x8002
                                                                         x8001
                                                                         x8000
                                                                         x7998
                                                                         x7996
                                                                         x7994))))
                                                              g7993)
                                                            (letrec ((g8004
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g8004)))))))))))
                                    g7959)))
                               (member
                                (lambda (e l)
                                  (letrec ((g8005
                                            (letrec ((x8007 (list? l)))
                                              (assert x8007)))
                                           (g8006
                                            (letrec ((x-cnd8008 (null? l)))
                                              (if x-cnd8008
                                                #f
                                                (letrec ((x-cnd8009
                                                          (letrec ((x8010
                                                                    (car l)))
                                                            (equal? x8010 e))))
                                                  (if x-cnd8009
                                                    l
                                                    (letrec ((x8011 (cdr l)))
                                                      (member e x8011))))))))
                                    g8006)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g8012
                                            (letrec ((x8013
                                                      (letrec ((x8014
                                                                (letrec ((x8015
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8015))))
                                                        (cdr x8014))))
                                              (cdr x8013))))
                                    g8012)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g8016
                                            (letrec ((x8017
                                                      (letrec ((x8018
                                                                (letrec ((x8019
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8019))))
                                                        (cdr x8018))))
                                              (car x8017))))
                                    g8016)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8020 (random 42))) g8020)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8021
                                            (letrec ((x8023 (number? x)))
                                              (assert x8023)))
                                           (g8022 (= x 0)))
                                    g8022)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8024
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8025
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8025))))
                                    g8024)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8026
                                            (letrec ((x8027 (cdr x)))
                                              (car x8027))))
                                    g8026)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8028
                                            (letrec ((val7156
                                                      (letrec ((x8031
                                                                (pair? l))
                                                               (x8029
                                                                (letrec ((x8030
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8030))))
                                                        (and x8031 x8029))))
                                              (letrec ((g8032
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8032))))
                                    g8028)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8033
                                            (letrec ((x8034
                                                      (letrec ((x8035
                                                                (letrec ((x8036
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8036))))
                                                        (cdr x8035))))
                                              (cdr x8034))))
                                    g8033)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8037
                                            (letrec ((x-cnd8038
                                                      (letrec ((x8039 #\0))
                                                        (char<=? x8039 c))))
                                              (if x-cnd8038
                                                (letrec ((x8040 #\9))
                                                  (char<=? c x8040))
                                                #f))))
                                    g8037)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8041
                                            (letrec ((x8043 (list? l)))
                                              (assert x8043)))
                                           (g8042
                                            (letrec ((x-cnd8044 (null? l)))
                                              (if x-cnd8044
                                                #f
                                                (letrec ((x-cnd8045
                                                          (letrec ((x8046
                                                                    (caar l)))
                                                            (eqv? x8046 k))))
                                                  (if x-cnd8045
                                                    (car l)
                                                    (letrec ((x8047 (cdr l)))
                                                      (assq k x8047))))))))
                                    g8042)))
                               (not
                                (lambda (x)
                                  (letrec ((g8048 (if x #f #t))) g8048)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8049 (append l1 l2))) g8049)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8050
                                            (letrec ((x8052 (list? l)))
                                              (assert x8052)))
                                           (g8051
                                            (letrec ((x-cnd8053 (null? l)))
                                              (if x-cnd8053
                                                #f
                                                (letrec ((x-cnd8054
                                                          (letrec ((x8055
                                                                    (car l)))
                                                            (eq? x8055 e))))
                                                  (if x-cnd8054
                                                    l
                                                    (letrec ((x8056 (cdr l)))
                                                      (memq e x8056))))))))
                                    g8051)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8057
                                            (letrec ((x8058
                                                      (letrec ((x8059
                                                                (letrec ((x8060
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8060))))
                                                        (cdr x8059))))
                                              (car x8058))))
                                    g8057)))
                               (length
                                (lambda (l)
                                  (letrec ((g8061
                                            (letrec ((x8063 (list? l)))
                                              (assert x8063)))
                                           (g8062
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8064
                                                                  (letrec ((x-cnd8065
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8065
                                                                      0
                                                                      (letrec ((x8066
                                                                                (letrec ((x8067
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8067))))
                                                                        (+
                                                                         1
                                                                         x8066))))))
                                                          g8064))))
                                              (letrec ((g8068 (rec l)))
                                                g8068))))
                                    g8062)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8069
                                            (letrec ((x8072 (char? c1)))
                                              (assert x8072)))
                                           (g8070
                                            (letrec ((x8073 (char? c2)))
                                              (assert x8073)))
                                           (g8071
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8074
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8074))))
                                    g8071)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8075
                                            (letrec ((x8076 (string<=? s1 s2)))
                                              (not x8076))))
                                    g8075)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8077
                                            (letrec ((x8078
                                                      (letrec ((x8079 (cdr x)))
                                                        (car x8079))))
                                              (cdr x8078))))
                                    g8077)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8080
                                            (letrec ((x8082 (list? l)))
                                              (assert x8082)))
                                           (g8081
                                            (letrec ((x-cnd8083 (null? l)))
                                              (if x-cnd8083
                                                #f
                                                (letrec ((x-cnd8084
                                                          (letrec ((x8085
                                                                    (caar l)))
                                                            (equal? x8085 k))))
                                                  (if x-cnd8084
                                                    (car l)
                                                    (letrec ((x8086 (cdr l)))
                                                      (assoc k x8086))))))))
                                    g8081)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8087
                                            (letrec ((x8088 (car x)))
                                              (car x8088))))
                                    g8087)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8089
                                            (letrec ((x8092 (char? c1)))
                                              (assert x8092)))
                                           (g8090
                                            (letrec ((x8093 (char? c2)))
                                              (assert x8093)))
                                           (g8091
                                            (letrec ((x8094 (char<=? c1 c2)))
                                              (not x8094))))
                                    g8091)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8095
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8096
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8096))))
                                    g8095)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8097
                                            (letrec ((x8100 (procedure? f)))
                                              (assert x8100)))
                                           (g8098
                                            (letrec ((x8101 (list? l)))
                                              (assert x8101)))
                                           (g8099
                                            (letrec ((x-cnd8102 (null? l)))
                                              (if x-cnd8102
                                                #t
                                                (letrec ((x-cnd8103 (pair? l)))
                                                  (if x-cnd8103
                                                    (letrec ((g8104
                                                              (letrec ((x8106
                                                                        (car
                                                                         l)))
                                                                (f x8106)))
                                                             (g8105
                                                              (letrec ((x8107
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8107))))
                                                      g8105)
                                                    '()))))))
                                    g8099)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8108
                                            (letrec ((x8110 (number? x)))
                                              (assert x8110)))
                                           (g8109
                                            (letrec ((x-cnd8111 (< x 0)))
                                              (if x-cnd8111 (- 0 x) x))))
                                    g8109)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8112
                                            (letrec ((x8115 (char? c1)))
                                              (assert x8115)))
                                           (g8113
                                            (letrec ((x8116 (char? c2)))
                                              (assert x8116)))
                                           (g8114
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8117
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8117))))
                                    g8114)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8118
                                            (letrec ((x8119
                                                      (letrec ((x8120
                                                                (letrec ((x8121
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8121))))
                                                        (cdr x8120))))
                                              (car x8119))))
                                    g8118)))
                               (newline
                                (lambda () (letrec ((g8122 #f)) g8122)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8123
                                            (letrec ((x8125
                                                      (letrec ((x8126 (* m n)))
                                                        (abs x8126)))
                                                     (x8124 (gcd m n)))
                                              (/ x8125 x8124))))
                                    g8123)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8127
                                            (letrec ((x8129 (number? x)))
                                              (assert x8129)))
                                           (g8128
                                            (letrec ((x8130 (<= x y)))
                                              (not x8130))))
                                    g8128)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8131
                                            (letrec ((x8135 (list? l)))
                                              (assert x8135)))
                                           (g8132
                                            (letrec ((x8136 (number? index)))
                                              (assert x8136)))
                                           (g8133
                                            (letrec ((x8137
                                                      (letrec ((x8138
                                                                (length l)))
                                                        (< index x8138))))
                                              (assert x8137)))
                                           (g8134
                                            (letrec ((x-cnd8139 (= index 0)))
                                              (if x-cnd8139
                                                (car l)
                                                (letrec ((x8141 (cdr l))
                                                         (x8140 (- index 1)))
                                                  (list-ref x8141 x8140))))))
                                    g8134)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8142
                                            (letrec ((x-cnd8143 (= b 0)))
                                              (if x-cnd8143
                                                a
                                                (letrec ((x8144 (modulo a b)))
                                                  (gcd b x8144))))))
                                    g8142))))
                        (letrec ((g8145
                                  (letrec ((g8146
                                            (letrec ((f
                                                      (lambda (g)
                                                        (letrec ((g8147
                                                                  (letrec ((x8151
                                                                            (x
                                                                             y))
                                                                           (x8148
                                                                            (letrec ((x8150
                                                                                      (+
                                                                                       x
                                                                                       1))
                                                                                     (x8149
                                                                                      (+
                                                                                       y
                                                                                       1)))
                                                                              (g
                                                                               x8150
                                                                               x8149))))
                                                                    (λ x8151
                                                                      x8148))))
                                                          g8147)))
                                                     (unzip
                                                      (lambda (x k)
                                                        (letrec ((g8152
                                                                  (letrec ((x-cnd8153
                                                                            (=
                                                                             x
                                                                             0)))
                                                                    (if x-cnd8153
                                                                      (k 0 0)
                                                                      (letrec ((x8155
                                                                                (-
                                                                                 x
                                                                                 1))
                                                                               (x8154
                                                                                (f
                                                                                 k)))
                                                                        (unzip
                                                                         x8155
                                                                         x8154))))))
                                                          g8152)))
                                                     (zip
                                                      (lambda (x y)
                                                        (letrec ((g8156
                                                                  (letrec ((x-cnd8157
                                                                            (=
                                                                             x
                                                                             0)))
                                                                    (if x-cnd8157
                                                                      (letrec ((x-cnd8158
                                                                                (=
                                                                                 y
                                                                                 0)))
                                                                        (if x-cnd8158
                                                                          0
                                                                          'fail))
                                                                      (letrec ((x-cnd8159
                                                                                (=
                                                                                 y
                                                                                 0)))
                                                                        (if x-cnd8159
                                                                          'fail
                                                                          (letrec ((x8160
                                                                                    (letrec ((x8162
                                                                                              (-
                                                                                               x
                                                                                               1))
                                                                                             (x8161
                                                                                              (-
                                                                                               y
                                                                                               1)))
                                                                                      (zip
                                                                                       x8162
                                                                                       x8161))))
                                                                            (+
                                                                             1
                                                                             x8160))))))))
                                                          g8156)))
                                                     (main
                                                      (lambda (n)
                                                        (letrec ((g8163
                                                                  (unzip
                                                                   n
                                                                   zip)))
                                                          g8163))))
                                              (letrec ((g8164
                                                        (letrec ((g8165
                                                                  (letrec ((g8166
                                                                            (letrec ((x8169
                                                                                      ((lambda (j7230
                                                                                                k7231
                                                                                                f7232)
                                                                                         (lambda (g7229)
                                                                                           ((lambda (j7235
                                                                                                     k7236
                                                                                                     f7237)
                                                                                              (lambda (g7233
                                                                                                       g7234)
                                                                                                (integer?/c
                                                                                                 j7235
                                                                                                 k7236
                                                                                                 (f7237
                                                                                                  (integer?/c
                                                                                                   j7235
                                                                                                   k7236
                                                                                                   g7233)
                                                                                                  (integer?/c
                                                                                                   j7235
                                                                                                   k7236
                                                                                                   g7234)))))
                                                                                            j7230
                                                                                            k7231
                                                                                            (f7232
                                                                                             ((lambda (j7240
                                                                                                       k7241
                                                                                                       f7242)
                                                                                                (lambda (g7238
                                                                                                         g7239)
                                                                                                  (integer?/c
                                                                                                   j7240
                                                                                                   k7241
                                                                                                   (f7242
                                                                                                    (integer?/c
                                                                                                     j7240
                                                                                                     k7241
                                                                                                     g7238)
                                                                                                    (integer?/c
                                                                                                     j7240
                                                                                                     k7241
                                                                                                     g7239)))))
                                                                                              j7230
                                                                                              k7231
                                                                                              g7229)))))
                                                                                       'module
                                                                                       'importer
                                                                                       f))
                                                                                     (x8168
                                                                                      (input)))
                                                                              (x8169
                                                                               x8168)))
                                                                           (g8167
                                                                            (letrec ((x8171
                                                                                      ((lambda (j7244
                                                                                                k7245
                                                                                                f7246)
                                                                                         (lambda (g7243)
                                                                                           (integer?/c
                                                                                            j7244
                                                                                            k7245
                                                                                            (f7246
                                                                                             (integer?/c
                                                                                              j7244
                                                                                              k7245
                                                                                              g7243)))))
                                                                                       'module
                                                                                       'importer
                                                                                       main))
                                                                                     (x8170
                                                                                      (input)))
                                                                              (x8171
                                                                               x8170))))
                                                                    g8167)))
                                                          g8165)))
                                                g8164))))
                                    g8146)))
                          g8145))))
              g7258)))
    g7257))
