(letrec ((any? (lambda (v) (letrec ((g7246 #t)) g7246)))
         (meta (lambda (v) (letrec ((g7247 v)) g7247)))
         (member
          (lambda (v lst)
            (letrec ((g7248
                      (letrec ((g7249
                                (letrec ((x-e7250 lst))
                                  (match
                                   x-e7250
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7251 (eq? v v1)))
                                       (if x-cnd7251 #t (member v vs)))))))))
                        g7249)))
              g7248)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7252 (lambda (v) (letrec ((g7253 v)) g7253)))) g7252)))
         (nonzero?
          (lambda (v)
            (letrec ((g7254 (letrec ((x7255 (= v 0))) (not x7255)))) g7254))))
  (letrec ((g7256
            (letrec ((g7257
                      (letrec ((real/c
                                (lambda (g7162 g7163 g7164)
                                  (letrec ((g7258
                                            (letrec ((x-cnd7259 (real? g7164)))
                                              (if x-cnd7259
                                                g7164
                                                (blame g7162 'real?)))))
                                    g7258)))
                               (boolean?/c
                                (lambda (g7165 g7166 g7167)
                                  (letrec ((g7260
                                            (letrec ((x-cnd7261
                                                      (boolean? g7167)))
                                              (if x-cnd7261
                                                g7167
                                                (blame g7165 'boolean?)))))
                                    g7260)))
                               (number?/c
                                (lambda (g7168 g7169 g7170)
                                  (letrec ((g7262
                                            (letrec ((x-cnd7263
                                                      (number? g7170)))
                                              (if x-cnd7263
                                                g7170
                                                (blame g7168 'number?)))))
                                    g7262)))
                               (any/c
                                (lambda (g7171 g7172 g7173)
                                  (letrec ((g7264
                                            (letrec ((x-cnd7265
                                                      ((lambda (v) #t) g7173)))
                                              (if x-cnd7265
                                                g7173
                                                (blame
                                                 g7171
                                                 '(lambda (v) #t))))))
                                    g7264)))
                               (any?/c
                                (lambda (g7174 g7175 g7176)
                                  (letrec ((g7266
                                            (letrec ((x-cnd7267
                                                      ((lambda (v) #t) g7176)))
                                              (if x-cnd7267
                                                g7176
                                                (blame
                                                 g7174
                                                 '(lambda (v) #t))))))
                                    g7266)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7177 g7178 g7179)
                                  (letrec ((g7268
                                            (letrec ((x-cnd7269 (pair? g7179)))
                                              (if x-cnd7269
                                                g7179
                                                (blame g7177 'pair?)))))
                                    g7268)))
                               (pair?/c
                                (lambda (g7180 g7181 g7182)
                                  (letrec ((g7270
                                            (letrec ((x-cnd7271 (pair? g7182)))
                                              (if x-cnd7271
                                                g7182
                                                (blame g7180 'pair?)))))
                                    g7270)))
                               (integer?
                                (lambda (g7183 g7184 g7185)
                                  (letrec ((g7272
                                            (letrec ((x-cnd7273
                                                      (integer? g7185)))
                                              (if x-cnd7273
                                                g7185
                                                (blame g7183 'integer?)))))
                                    g7272)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7274
                                            (lambda (k j v)
                                              (letrec ((g7275
                                                        (letrec ((x-cnd7276
                                                                  (c1 k j v)))
                                                          (if x-cnd7276
                                                            (c2 k j v)
                                                            #f))))
                                                g7275))))
                                    g7274)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7277
                                            (lambda (k j v)
                                              (letrec ((g7278
                                                        (letrec ((x-cnd7279
                                                                  (null? v)))
                                                          (if x-cnd7279
                                                            '()
                                                            (letrec ((x7283
                                                                      (letrec ((x7284
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7284)))
                                                                     (x7280
                                                                      (letrec ((x7282
                                                                                (list-of
                                                                                 contract))
                                                                               (x7281
                                                                                (cdr
                                                                                 v)))
                                                                        (x7282
                                                                         k
                                                                         j
                                                                         x7281))))
                                                              (cons
                                                               x7283
                                                               x7280))))))
                                                g7278))))
                                    g7277)))
                               (any? (lambda (v) (letrec ((g7285 #t)) g7285)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7286
                                            (letrec ((x7287 (= v 0)))
                                              (not x7287))))
                                    g7286)))
                               (nonzero?/c
                                (lambda (g7186 g7187 g7188)
                                  (letrec ((g7288
                                            (letrec ((x-cnd7289
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7188)))
                                              (if x-cnd7289
                                                g7188
                                                (blame
                                                 g7186
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7288)))
                               (meta (lambda (v) (letrec ((g7290 v)) g7290)))
                               (orig-+ +)
                               (+
                                ((lambda (j7191 k7192 f7193)
                                   (lambda (g7189 g7190)
                                     (number?/c
                                      j7191
                                      k7192
                                      (f7193
                                       (number?/c j7191 k7192 g7189)
                                       (number?/c j7191 k7192 g7190)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-+ a b))))
                               (orig-- -)
                               (-
                                ((lambda (j7196 k7197 f7198)
                                   (lambda (g7194 g7195)
                                     (number?/c
                                      j7196
                                      k7197
                                      (f7198
                                       (number?/c j7196 k7197 g7194)
                                       (number?/c j7196 k7197 g7195)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-- a b))))
                               (orig-* *)
                               (*
                                ((lambda (j7201 k7202 f7203)
                                   (lambda (g7199 g7200)
                                     (number?/c
                                      j7201
                                      k7202
                                      (f7203
                                       (number?/c j7201 k7202 g7199)
                                       (number?/c j7201 k7202 g7200)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-* a b))))
                               (orig-/ /)
                               (/
                                ((lambda (j7206 k7207 f7208)
                                   (lambda (g7204 g7205)
                                     (number?/c
                                      j7206
                                      k7207
                                      (f7208
                                       (number?/c j7206 k7207 g7204)
                                       (number?/c j7206 k7207 g7205)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-/ a b))))
                               (orig-car car)
                               (car
                                ((lambda (j7210 k7211 f7212)
                                   (lambda (g7209)
                                     (any/c
                                      j7210
                                      k7211
                                      (f7212 (pair?/c j7210 k7211 g7209)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-car p))))
                               (orig-cdr cdr)
                               (cdr
                                ((lambda (j7214 k7215 f7216)
                                   (lambda (g7213)
                                     (any/c
                                      j7214
                                      k7215
                                      (f7216 (pair?/c j7214 k7215 g7213)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-cdr p))))
                               (orig-cons cons)
                               (cons
                                ((lambda (j7219 k7220 f7221)
                                   (lambda (g7217 g7218)
                                     (pair?/c
                                      j7219
                                      k7220
                                      (f7221
                                       (any/c j7219 k7220 g7217)
                                       (any/c j7219 k7220 g7218)))))
                                 'server
                                 'client
                                 (lambda (a b) (cons a b))))
                               (orig-vector-ref vector-ref)
                               (vector-ref
                                ((lambda (j7223 k7224 f7225)
                                   (lambda (g7222)
                                     (integer?/c
                                      j7223
                                      k7224
                                      (f7225 (vector?/c j7223 k7224 g7222)))))
                                 'server
                                 'client
                                 (lambda (v i) (orig-vector-ref v i))))
                               (orig-vector-set vector-set!)
                               (vector-set!
                                ((lambda (j7228 k7229 f7230)
                                   (lambda (g7226 g7227)
                                     (any/c
                                      j7228
                                      k7229
                                      (f7230
                                       (vector?/c j7228 k7229 g7226)
                                       (integer?/c j7228 k7229 g7227)))))
                                 'server
                                 'client
                                 (lambda (vec i v)
                                   (orig-vector-set! vec i v))))
                               (assert
                                (lambda (cnd) (letrec ((g7291 #t)) g7291)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7292
                                            (letrec ((x7293
                                                      (letrec ((x7294 (cdr x)))
                                                        (cdr x7294))))
                                              (cdr x7293))))
                                    g7292)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7295
                                            (letrec ((x7298 (procedure? f)))
                                              (assert x7298)))
                                           (g7296
                                            (letrec ((x7299 (list? l)))
                                              (assert x7299)))
                                           (g7297
                                            (letrec ((x-cnd7300 (null? l)))
                                              (if x-cnd7300
                                                '()
                                                (letrec ((x7303
                                                          (letrec ((x7304
                                                                    (car l)))
                                                            (f x7304)))
                                                         (x7301
                                                          (letrec ((x7302
                                                                    (cdr l)))
                                                            (map f x7302))))
                                                  (cons x7303 x7301))))))
                                    g7297)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7305
                                            (letrec ((x7306 (car x)))
                                              (cdr x7306))))
                                    g7305)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7307
                                            (letrec ((x7308
                                                      (letrec ((x7309
                                                                (letrec ((x7310
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7310))))
                                                        (cdr x7309))))
                                              (car x7308))))
                                    g7307)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7311
                                            (letrec ((x7312
                                                      (letrec ((x7313
                                                                (letrec ((x7314
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7314))))
                                                        (car x7313))))
                                              (cdr x7312))))
                                    g7311)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7315
                                            (letrec ((x7318
                                                      (string? filename)))
                                              (assert x7318)))
                                           (g7316
                                            (letrec ((x7319 (procedure? proc)))
                                              (assert x7319)))
                                           (g7317
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7320
                                                        (close-output-port
                                                         output-port))
                                                       (g7321 res))
                                                g7321))))
                                    g7317)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7322
                                            (letrec ((x7323
                                                      (letrec ((x7324 (cdr x)))
                                                        (cdr x7324))))
                                              (car x7323))))
                                    g7322)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7325
                                            (letrec ((x7326
                                                      (letrec ((x7327
                                                                (letrec ((x7328
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7328))))
                                                        (car x7327))))
                                              (cdr x7326))))
                                    g7325)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7329
                                            (letrec ((x7331 (list? l)))
                                              (assert x7331)))
                                           (g7330
                                            (letrec ((x-cnd7332 (null? l)))
                                              (if x-cnd7332
                                                #f
                                                (letrec ((x-cnd7333
                                                          (letrec ((x7334
                                                                    (caar l)))
                                                            (eq? x7334 k))))
                                                  (if x-cnd7333
                                                    (car l)
                                                    (letrec ((x7335 (cdr l)))
                                                      (assq k x7335))))))))
                                    g7330)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7336
                                            (letrec ((x7337 (modulo x 2)))
                                              (= 0 x7337))))
                                    g7336)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7338
                                            (letrec ((x7340 (list? l)))
                                              (assert x7340)))
                                           (g7339
                                            (letrec ((x-cnd7341 (null? l)))
                                              (if x-cnd7341
                                                ""
                                                (letrec ((x7344
                                                          (letrec ((x7345
                                                                    (car l)))
                                                            (char->string
                                                             x7345)))
                                                         (x7342
                                                          (letrec ((x7343
                                                                    (cdr l)))
                                                            (list->string
                                                             x7343))))
                                                  (string-append
                                                   x7344
                                                   x7342))))))
                                    g7339)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7346
                                            (letrec ((x7349 (char? c1)))
                                              (assert x7349)))
                                           (g7347
                                            (letrec ((x7350 (char? c2)))
                                              (assert x7350)))
                                           (g7348
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7351
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7351))))
                                    g7348)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7352
                                            (letrec ((x7353
                                                      (letrec ((x7354
                                                                (letrec ((x7355
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7355))))
                                                        (cdr x7354))))
                                              (cdr x7353))))
                                    g7352)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7356
                                            (letrec ((x7359 (list? l)))
                                              (assert x7359)))
                                           (g7357
                                            (letrec ((x7360 (numer?)))
                                              (assert x7360)))
                                           (g7358
                                            (letrec ((x-cnd7361 (zero? k)))
                                              (if x-cnd7361
                                                x
                                                (letrec ((x7363 (cdr x))
                                                         (x7362 (- k 1)))
                                                  (list-tail x7363 x7362))))))
                                    g7358)))
                               (halt (lambda () (letrec ((g7364 '())) g7364)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7365
                                            (letrec ((x-cnd7366
                                                      (letrec ((x7367 #\a))
                                                        (char-ci>=? c x7367))))
                                              (if x-cnd7366
                                                (letrec ((x7368 #\z))
                                                  (char-ci<=? c x7368))
                                                #f))))
                                    g7365)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7369
                                            (letrec ((x7371 (number? x)))
                                              (assert x7371)))
                                           (g7370
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7372
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7373
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7373)))))
                                                g7372))))
                                    g7370)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7374
                                            (letrec ((val7146
                                                      (letrec ((x7375
                                                                (char->integer
                                                                 c)))
                                                        (= x7375 9))))
                                              (letrec ((g7376
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7377
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7377
                                                                       10))))
                                                            (letrec ((g7378
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7379
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7379
                                                                           32)))))
                                                              g7378)))))
                                                g7376))))
                                    g7374)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7380
                                            (letrec ((x7381
                                                      (letrec ((x7382 (car x)))
                                                        (cdr x7382))))
                                              (cdr x7381))))
                                    g7380)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7383
                                            (letrec ((x7385 (number? x)))
                                              (assert x7385)))
                                           (g7384 (> x 0)))
                                    g7384)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7386 #f)) g7386)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7387
                                            (letrec ((x7388 (cdr x)))
                                              (cdr x7388))))
                                    g7387)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7389
                                            (letrec ((x7391 (number? x)))
                                              (assert x7391)))
                                           (g7390
                                            (letrec ((x-cnd7392 (< x 0)))
                                              (if x-cnd7392
                                                (ceiling x)
                                                (floor x)))))
                                    g7390)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7393
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7394
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7396
                                                                              (null?
                                                                               a))
                                                                             (x7395
                                                                              (null?
                                                                               b)))
                                                                      (and x7396
                                                                           x7395))))
                                                            (letrec ((g7397
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7400
                                                                                            (string?
                                                                                             a))
                                                                                           (x7399
                                                                                            (string?
                                                                                             b))
                                                                                           (x7398
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7400
                                                                                         x7399
                                                                                         x7398))))
                                                                          (letrec ((g7401
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7409
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7408
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7405
                                                                                                          (letrec ((x7407
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7406
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7407
                                                                                                             x7406)))
                                                                                                         (x7402
                                                                                                          (letrec ((x7404
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7403
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7404
                                                                                                             x7403))))
                                                                                                  (and x7409
                                                                                                       x7408
                                                                                                       x7405
                                                                                                       x7402))))
                                                                                        (letrec ((g7410
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7429
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7428
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7411
                                                                                                              (letrec ((x7425
                                                                                                                        (letrec ((x7426
                                                                                                                                  (letrec ((x7427
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7427))))
                                                                                                                          (x7426)))
                                                                                                                       (x7412
                                                                                                                        (letrec ((x7423
                                                                                                                                  (letrec ((x7424
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7424
                                                                                                                                     n)))
                                                                                                                                 (x7413
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7414
                                                                                                                                                        (letrec ((x7421
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7415
                                                                                                                                                                  (letrec ((x7418
                                                                                                                                                                            (letrec ((x7420
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7419
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7420
                                                                                                                                                                               x7419)))
                                                                                                                                                                           (x7416
                                                                                                                                                                            (letrec ((x7417
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7417))))
                                                                                                                                                                    (and x7418
                                                                                                                                                                         x7416))))
                                                                                                                                                          (or x7421
                                                                                                                                                              x7415))))
                                                                                                                                                g7414))))
                                                                                                                                    (letrec ((g7422
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7422))))
                                                                                                                          (and x7423
                                                                                                                               x7413))))
                                                                                                                (let x7425 x7412))))
                                                                                                      (and x7429
                                                                                                           x7428
                                                                                                           x7411)))))
                                                                                          g7410)))))
                                                                            g7401)))))
                                                              g7397)))))
                                                g7394))))
                                    g7393)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7430
                                            (letrec ((x7431
                                                      (letrec ((x7432
                                                                (letrec ((x7433
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7433))))
                                                        (car x7432))))
                                              (cdr x7431))))
                                    g7430)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7434
                                            (letrec ((x7435
                                                      (letrec ((x7436
                                                                (letrec ((x7437
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7437))))
                                                        (car x7436))))
                                              (car x7435))))
                                    g7434)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7438 (eq? x y))) g7438)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7439
                                            (letrec ((x7441 (number? x)))
                                              (assert x7441)))
                                           (g7440
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7442
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7443
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7443)))))
                                                g7442))))
                                    g7440)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7444
                                            (letrec ((x7447
                                                      (string? filename)))
                                              (assert x7447)))
                                           (g7445
                                            (letrec ((x7448 (procedure? proc)))
                                              (assert x7448)))
                                           (g7446
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7449
                                                        (close-input-port
                                                         input-port))
                                                       (g7450 res))
                                                g7450))))
                                    g7446)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7451 (cons x '()))) g7451)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7452
                                            (letrec ((x7455 (char? c1)))
                                              (assert x7455)))
                                           (g7453
                                            (letrec ((x7456 (char? c2)))
                                              (assert x7456)))
                                           (g7454
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7457
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7457))))
                                    g7454)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7458
                                            (letrec ((x7459
                                                      (letrec ((x7460 (car x)))
                                                        (car x7460))))
                                              (cdr x7459))))
                                    g7458)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7461
                                            (letrec ((x7462
                                                      (letrec ((x7463
                                                                (letrec ((x7464
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7464))))
                                                        (car x7463))))
                                              (cdr x7462))))
                                    g7461)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7465
                                            (letrec ((x7466
                                                      (letrec ((x7467 (car x)))
                                                        (cdr x7467))))
                                              (car x7466))))
                                    g7465)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7468
                                            (letrec ((x7469
                                                      (letrec ((x7470 (cdr x)))
                                                        (car x7470))))
                                              (car x7469))))
                                    g7468)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7471
                                            (letrec ((x7474 (char? c1)))
                                              (assert x7474)))
                                           (g7472
                                            (letrec ((x7475 (char? c2)))
                                              (assert x7475)))
                                           (g7473
                                            (letrec ((x7476
                                                      (char-ci<=? c1 c2)))
                                              (not x7476))))
                                    g7473)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7477
                                            (letrec ((x7478
                                                      (letrec ((x7479
                                                                (letrec ((x7480
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7480))))
                                                        (car x7479))))
                                              (car x7478))))
                                    g7477)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7481
                                            (letrec ((x7483 (number? x)))
                                              (assert x7483)))
                                           (g7482 (< x 0)))
                                    g7482)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7484 (memq e l))) g7484)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7485
                                            (letrec ((x7486
                                                      (letrec ((x7487 (car x)))
                                                        (car x7487))))
                                              (car x7486))))
                                    g7485)))
                               (debug
                                (lambda (e) (letrec ((g7488 '())) g7488)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7489
                                            (letrec ((x7491 (list? l)))
                                              (assert x7491)))
                                           (g7490
                                            (letrec ((x-cnd7492 (null? l)))
                                              (if x-cnd7492
                                                '()
                                                (letrec ((x7495
                                                          (letrec ((x7496
                                                                    (cdr l)))
                                                            (reverse x7496)))
                                                         (x7493
                                                          (letrec ((x7494
                                                                    (car l)))
                                                            (list x7494))))
                                                  (append x7495 x7493))))))
                                    g7490)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7497
                                            (letrec ((x7498
                                                      (letrec ((x7499
                                                                (letrec ((x7500
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7500))))
                                                        (car x7499))))
                                              (car x7498))))
                                    g7497)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7501
                                            (letrec ((x7502
                                                      (letrec ((x7503
                                                                (letrec ((x7504
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7504))))
                                                        (cdr x7503))))
                                              (cdr x7502))))
                                    g7501)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7505
                                            (letrec ((x7507 (number? x)))
                                              (assert x7507)))
                                           (g7506
                                            (letrec ((x7508 (modulo x 2)))
                                              (= 1 x7508))))
                                    g7506)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7509
                                            (letrec ((x7510
                                                      (letrec ((x7511
                                                                (letrec ((x7512
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7512))))
                                                        (car x7511))))
                                              (car x7510))))
                                    g7509)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7513
                                            (letrec ((x7516 (procedure? proc)))
                                              (assert x7516)))
                                           (g7514
                                            (letrec ((x7517 (list? args)))
                                              (assert x7517)))
                                           (g7515
                                            (if cnd
                                              (letrec ((g7518 (proc))) g7518)
                                              (if cnd
                                                (letrec ((g7519
                                                          (letrec ((x7520
                                                                    (car
                                                                     args)))
                                                            (proc x7520))))
                                                  g7519)
                                                (if cnd
                                                  (letrec ((g7521
                                                            (letrec ((x7523
                                                                      (car
                                                                       args))
                                                                     (x7522
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7523
                                                               x7522))))
                                                    g7521)
                                                  (if cnd
                                                    (letrec ((g7524
                                                              (letrec ((x7527
                                                                        (car
                                                                         args))
                                                                       (x7526
                                                                        (cadr
                                                                         args))
                                                                       (x7525
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7527
                                                                 x7526
                                                                 x7525))))
                                                      g7524)
                                                    (if cnd
                                                      (letrec ((g7528
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
                                                                           args)))
                                                                  (proc
                                                                   x7532
                                                                   x7531
                                                                   x7530
                                                                   x7529))))
                                                        g7528)
                                                      (if cnd
                                                        (letrec ((g7533
                                                                  (letrec ((x7539
                                                                            (car
                                                                             args))
                                                                           (x7538
                                                                            (cadr
                                                                             args))
                                                                           (x7537
                                                                            (caddr
                                                                             args))
                                                                           (x7536
                                                                            (cadddr
                                                                             args))
                                                                           (x7534
                                                                            (letrec ((x7535
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7535))))
                                                                    (proc
                                                                     x7539
                                                                     x7538
                                                                     x7537
                                                                     x7536
                                                                     x7534))))
                                                          g7533)
                                                        (if cnd
                                                          (letrec ((g7540
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
                                                                                 x7542))))
                                                                      (proc
                                                                       x7548
                                                                       x7547
                                                                       x7546
                                                                       x7545
                                                                       x7543
                                                                       x7541))))
                                                            g7540)
                                                          (if cnd
                                                            (letrec ((g7549
                                                                      (letrec ((x7559
                                                                                (car
                                                                                 args))
                                                                               (x7558
                                                                                (cadr
                                                                                 args))
                                                                               (x7557
                                                                                (caddr
                                                                                 args))
                                                                               (x7556
                                                                                (cadddr
                                                                                 args))
                                                                               (x7554
                                                                                (letrec ((x7555
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7555)))
                                                                               (x7552
                                                                                (letrec ((x7553
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7553)))
                                                                               (x7550
                                                                                (letrec ((x7551
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7551))))
                                                                        (proc
                                                                         x7559
                                                                         x7558
                                                                         x7557
                                                                         x7556
                                                                         x7554
                                                                         x7552
                                                                         x7550))))
                                                              g7549)
                                                            (letrec ((g7560
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7560)))))))))))
                                    g7515)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7561
                                            (letrec ((x7563 (list? l)))
                                              (assert x7563)))
                                           (g7562
                                            (letrec ((x-cnd7564 (null? l)))
                                              (if x-cnd7564
                                                #f
                                                (letrec ((x-cnd7565
                                                          (letrec ((x7566
                                                                    (car l)))
                                                            (equal? x7566 e))))
                                                  (if x-cnd7565
                                                    l
                                                    (letrec ((x7567 (cdr l)))
                                                      (member e x7567))))))))
                                    g7562)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7568
                                            (letrec ((x7569
                                                      (letrec ((x7570
                                                                (letrec ((x7571
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7571))))
                                                        (cdr x7570))))
                                              (cdr x7569))))
                                    g7568)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g7572
                                            (letrec ((x7573
                                                      (letrec ((x7574
                                                                (letrec ((x7575
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7575))))
                                                        (cdr x7574))))
                                              (car x7573))))
                                    g7572)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7576 (random 42))) g7576)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7577
                                            (letrec ((x7579 (number? x)))
                                              (assert x7579)))
                                           (g7578 (= x 0)))
                                    g7578)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7580
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7581
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7581))))
                                    g7580)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7582
                                            (letrec ((x7583 (cdr x)))
                                              (car x7583))))
                                    g7582)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7584
                                            (letrec ((val7156
                                                      (letrec ((x7587
                                                                (pair? l))
                                                               (x7585
                                                                (letrec ((x7586
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7586))))
                                                        (and x7587 x7585))))
                                              (letrec ((g7588
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7588))))
                                    g7584)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7589
                                            (letrec ((x7590
                                                      (letrec ((x7591
                                                                (letrec ((x7592
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7592))))
                                                        (cdr x7591))))
                                              (cdr x7590))))
                                    g7589)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7593
                                            (letrec ((x-cnd7594
                                                      (letrec ((x7595 #\0))
                                                        (char<=? x7595 c))))
                                              (if x-cnd7594
                                                (letrec ((x7596 #\9))
                                                  (char<=? c x7596))
                                                #f))))
                                    g7593)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7597
                                            (letrec ((x7599 (list? l)))
                                              (assert x7599)))
                                           (g7598
                                            (letrec ((x-cnd7600 (null? l)))
                                              (if x-cnd7600
                                                #f
                                                (letrec ((x-cnd7601
                                                          (letrec ((x7602
                                                                    (caar l)))
                                                            (eqv? x7602 k))))
                                                  (if x-cnd7601
                                                    (car l)
                                                    (letrec ((x7603 (cdr l)))
                                                      (assq k x7603))))))))
                                    g7598)))
                               (not
                                (lambda (x)
                                  (letrec ((g7604 (if x #f #t))) g7604)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7605 (append l1 l2))) g7605)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7606
                                            (letrec ((x7608 (list? l)))
                                              (assert x7608)))
                                           (g7607
                                            (letrec ((x-cnd7609 (null? l)))
                                              (if x-cnd7609
                                                #f
                                                (letrec ((x-cnd7610
                                                          (letrec ((x7611
                                                                    (car l)))
                                                            (eq? x7611 e))))
                                                  (if x-cnd7610
                                                    l
                                                    (letrec ((x7612 (cdr l)))
                                                      (memq e x7612))))))))
                                    g7607)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7613
                                            (letrec ((x7614
                                                      (letrec ((x7615
                                                                (letrec ((x7616
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7616))))
                                                        (cdr x7615))))
                                              (car x7614))))
                                    g7613)))
                               (length
                                (lambda (l)
                                  (letrec ((g7617
                                            (letrec ((x7619 (list? l)))
                                              (assert x7619)))
                                           (g7618
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7620
                                                                  (letrec ((x-cnd7621
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7621
                                                                      0
                                                                      (letrec ((x7622
                                                                                (letrec ((x7623
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7623))))
                                                                        (+
                                                                         1
                                                                         x7622))))))
                                                          g7620))))
                                              (letrec ((g7624 (rec l)))
                                                g7624))))
                                    g7618)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7625
                                            (letrec ((x7628 (char? c1)))
                                              (assert x7628)))
                                           (g7626
                                            (letrec ((x7629 (char? c2)))
                                              (assert x7629)))
                                           (g7627
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7630
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7630))))
                                    g7627)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7631
                                            (letrec ((x7632 (string<=? s1 s2)))
                                              (not x7632))))
                                    g7631)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7633
                                            (letrec ((x7634
                                                      (letrec ((x7635 (cdr x)))
                                                        (car x7635))))
                                              (cdr x7634))))
                                    g7633)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7636
                                            (letrec ((x7638 (list? l)))
                                              (assert x7638)))
                                           (g7637
                                            (letrec ((x-cnd7639 (null? l)))
                                              (if x-cnd7639
                                                #f
                                                (letrec ((x-cnd7640
                                                          (letrec ((x7641
                                                                    (caar l)))
                                                            (equal? x7641 k))))
                                                  (if x-cnd7640
                                                    (car l)
                                                    (letrec ((x7642 (cdr l)))
                                                      (assoc k x7642))))))))
                                    g7637)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7643
                                            (letrec ((x7644 (car x)))
                                              (car x7644))))
                                    g7643)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7645
                                            (letrec ((x7648 (char? c1)))
                                              (assert x7648)))
                                           (g7646
                                            (letrec ((x7649 (char? c2)))
                                              (assert x7649)))
                                           (g7647
                                            (letrec ((x7650 (char<=? c1 c2)))
                                              (not x7650))))
                                    g7647)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7651
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7652
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7652))))
                                    g7651)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7653
                                            (letrec ((x7656 (procedure? f)))
                                              (assert x7656)))
                                           (g7654
                                            (letrec ((x7657 (list? l)))
                                              (assert x7657)))
                                           (g7655
                                            (letrec ((x-cnd7658 (null? l)))
                                              (if x-cnd7658
                                                #t
                                                (letrec ((x-cnd7659 (pair? l)))
                                                  (if x-cnd7659
                                                    (letrec ((g7660
                                                              (letrec ((x7662
                                                                        (car
                                                                         l)))
                                                                (f x7662)))
                                                             (g7661
                                                              (letrec ((x7663
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7663))))
                                                      g7661)
                                                    '()))))))
                                    g7655)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7664
                                            (letrec ((x7666 (number? x)))
                                              (assert x7666)))
                                           (g7665
                                            (letrec ((x-cnd7667 (< x 0)))
                                              (if x-cnd7667 (- 0 x) x))))
                                    g7665)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7668
                                            (letrec ((x7671 (char? c1)))
                                              (assert x7671)))
                                           (g7669
                                            (letrec ((x7672 (char? c2)))
                                              (assert x7672)))
                                           (g7670
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7673
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7673))))
                                    g7670)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7674
                                            (letrec ((x7675
                                                      (letrec ((x7676
                                                                (letrec ((x7677
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7677))))
                                                        (cdr x7676))))
                                              (car x7675))))
                                    g7674)))
                               (newline
                                (lambda () (letrec ((g7678 #f)) g7678)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7679
                                            (letrec ((x7681
                                                      (letrec ((x7682 (* m n)))
                                                        (abs x7682)))
                                                     (x7680 (gcd m n)))
                                              (/ x7681 x7680))))
                                    g7679)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7683
                                            (letrec ((x7685 (number? x)))
                                              (assert x7685)))
                                           (g7684
                                            (letrec ((x7686 (<= x y)))
                                              (not x7686))))
                                    g7684)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7687
                                            (letrec ((x7691 (list? l)))
                                              (assert x7691)))
                                           (g7688
                                            (letrec ((x7692 (number? index)))
                                              (assert x7692)))
                                           (g7689
                                            (letrec ((x7693
                                                      (letrec ((x7694
                                                                (length l)))
                                                        (< index x7694))))
                                              (assert x7693)))
                                           (g7690
                                            (letrec ((x-cnd7695 (= index 0)))
                                              (if x-cnd7695
                                                (car l)
                                                (letrec ((x7697 (cdr l))
                                                         (x7696 (- index 1)))
                                                  (list-ref x7697 x7696))))))
                                    g7690)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7698
                                            (letrec ((x-cnd7699 (= b 0)))
                                              (if x-cnd7699
                                                a
                                                (letrec ((x7700 (modulo a b)))
                                                  (gcd b x7700))))))
                                    g7698)))
                               (real/c
                                (lambda (g7162 g7163 g7164)
                                  (letrec ((g7701
                                            (letrec ((x-cnd7702 (real? g7164)))
                                              (if x-cnd7702
                                                g7164
                                                (blame g7162 'real?)))))
                                    g7701)))
                               (boolean?/c
                                (lambda (g7165 g7166 g7167)
                                  (letrec ((g7703
                                            (letrec ((x-cnd7704
                                                      (boolean? g7167)))
                                              (if x-cnd7704
                                                g7167
                                                (blame g7165 'boolean?)))))
                                    g7703)))
                               (number?/c
                                (lambda (g7168 g7169 g7170)
                                  (letrec ((g7705
                                            (letrec ((x-cnd7706
                                                      (number? g7170)))
                                              (if x-cnd7706
                                                g7170
                                                (blame g7168 'number?)))))
                                    g7705)))
                               (any/c
                                (lambda (g7171 g7172 g7173)
                                  (letrec ((g7707
                                            (letrec ((x-cnd7708
                                                      ((lambda (v) #t) g7173)))
                                              (if x-cnd7708
                                                g7173
                                                (blame
                                                 g7171
                                                 '(lambda (v) #t))))))
                                    g7707)))
                               (any?/c
                                (lambda (g7174 g7175 g7176)
                                  (letrec ((g7709
                                            (letrec ((x-cnd7710
                                                      ((lambda (v) #t) g7176)))
                                              (if x-cnd7710
                                                g7176
                                                (blame
                                                 g7174
                                                 '(lambda (v) #t))))))
                                    g7709)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7177 g7178 g7179)
                                  (letrec ((g7711
                                            (letrec ((x-cnd7712 (pair? g7179)))
                                              (if x-cnd7712
                                                g7179
                                                (blame g7177 'pair?)))))
                                    g7711)))
                               (pair?/c
                                (lambda (g7180 g7181 g7182)
                                  (letrec ((g7713
                                            (letrec ((x-cnd7714 (pair? g7182)))
                                              (if x-cnd7714
                                                g7182
                                                (blame g7180 'pair?)))))
                                    g7713)))
                               (integer?
                                (lambda (g7183 g7184 g7185)
                                  (letrec ((g7715
                                            (letrec ((x-cnd7716
                                                      (integer? g7185)))
                                              (if x-cnd7716
                                                g7185
                                                (blame g7183 'integer?)))))
                                    g7715)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7717
                                            (lambda (k j v)
                                              (letrec ((g7718
                                                        (letrec ((x-cnd7719
                                                                  (c1 k j v)))
                                                          (if x-cnd7719
                                                            (c2 k j v)
                                                            #f))))
                                                g7718))))
                                    g7717)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7720
                                            (lambda (k j v)
                                              (letrec ((g7721
                                                        (letrec ((x-cnd7722
                                                                  (null? v)))
                                                          (if x-cnd7722
                                                            '()
                                                            (letrec ((x7726
                                                                      (letrec ((x7727
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7727)))
                                                                     (x7723
                                                                      (letrec ((x7725
                                                                                (list-of
                                                                                 contract))
                                                                               (x7724
                                                                                (cdr
                                                                                 v)))
                                                                        (x7725
                                                                         k
                                                                         j
                                                                         x7724))))
                                                              (cons
                                                               x7726
                                                               x7723))))))
                                                g7721))))
                                    g7720)))
                               (any? (lambda (v) (letrec ((g7728 #t)) g7728)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7729
                                            (letrec ((x7730 (= v 0)))
                                              (not x7730))))
                                    g7729)))
                               (nonzero?/c
                                (lambda (g7186 g7187 g7188)
                                  (letrec ((g7731
                                            (letrec ((x-cnd7732
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7188)))
                                              (if x-cnd7732
                                                g7188
                                                (blame
                                                 g7186
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7731)))
                               (meta (lambda (v) (letrec ((g7733 v)) g7733)))
                               (orig-+ +)
                               (+
                                ((lambda (j7191 k7192 f7193)
                                   (lambda (g7189 g7190)
                                     (number?/c
                                      j7191
                                      k7192
                                      (f7193
                                       (number?/c j7191 k7192 g7189)
                                       (number?/c j7191 k7192 g7190)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-+ a b))))
                               (orig-- -)
                               (-
                                ((lambda (j7196 k7197 f7198)
                                   (lambda (g7194 g7195)
                                     (number?/c
                                      j7196
                                      k7197
                                      (f7198
                                       (number?/c j7196 k7197 g7194)
                                       (number?/c j7196 k7197 g7195)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-- a b))))
                               (orig-* *)
                               (*
                                ((lambda (j7201 k7202 f7203)
                                   (lambda (g7199 g7200)
                                     (number?/c
                                      j7201
                                      k7202
                                      (f7203
                                       (number?/c j7201 k7202 g7199)
                                       (number?/c j7201 k7202 g7200)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-* a b))))
                               (orig-/ /)
                               (/
                                ((lambda (j7206 k7207 f7208)
                                   (lambda (g7204 g7205)
                                     (number?/c
                                      j7206
                                      k7207
                                      (f7208
                                       (number?/c j7206 k7207 g7204)
                                       (number?/c j7206 k7207 g7205)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-/ a b))))
                               (orig-car car)
                               (car
                                ((lambda (j7210 k7211 f7212)
                                   (lambda (g7209)
                                     (any/c
                                      j7210
                                      k7211
                                      (f7212 (pair?/c j7210 k7211 g7209)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-car p))))
                               (orig-cdr cdr)
                               (cdr
                                ((lambda (j7214 k7215 f7216)
                                   (lambda (g7213)
                                     (any/c
                                      j7214
                                      k7215
                                      (f7216 (pair?/c j7214 k7215 g7213)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-cdr p))))
                               (orig-cons cons)
                               (cons
                                ((lambda (j7219 k7220 f7221)
                                   (lambda (g7217 g7218)
                                     (pair?/c
                                      j7219
                                      k7220
                                      (f7221
                                       (any/c j7219 k7220 g7217)
                                       (any/c j7219 k7220 g7218)))))
                                 'server
                                 'client
                                 (lambda (a b) (cons a b))))
                               (orig-vector-ref vector-ref)
                               (vector-ref
                                ((lambda (j7223 k7224 f7225)
                                   (lambda (g7222)
                                     (integer?/c
                                      j7223
                                      k7224
                                      (f7225 (vector?/c j7223 k7224 g7222)))))
                                 'server
                                 'client
                                 (lambda (v i) (orig-vector-ref v i))))
                               (orig-vector-set vector-set!)
                               (vector-set!
                                ((lambda (j7228 k7229 f7230)
                                   (lambda (g7226 g7227)
                                     (any/c
                                      j7228
                                      k7229
                                      (f7230
                                       (vector?/c j7228 k7229 g7226)
                                       (integer?/c j7228 k7229 g7227)))))
                                 'server
                                 'client
                                 (lambda (vec i v)
                                   (orig-vector-set! vec i v))))
                               (assert
                                (lambda (cnd) (letrec ((g7734 #t)) g7734)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7735
                                            (letrec ((x7736
                                                      (letrec ((x7737 (cdr x)))
                                                        (cdr x7737))))
                                              (cdr x7736))))
                                    g7735)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7738
                                            (letrec ((x7741 (procedure? f)))
                                              (assert x7741)))
                                           (g7739
                                            (letrec ((x7742 (list? l)))
                                              (assert x7742)))
                                           (g7740
                                            (letrec ((x-cnd7743 (null? l)))
                                              (if x-cnd7743
                                                '()
                                                (letrec ((x7746
                                                          (letrec ((x7747
                                                                    (car l)))
                                                            (f x7747)))
                                                         (x7744
                                                          (letrec ((x7745
                                                                    (cdr l)))
                                                            (map f x7745))))
                                                  (cons x7746 x7744))))))
                                    g7740)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7748
                                            (letrec ((x7749 (car x)))
                                              (cdr x7749))))
                                    g7748)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7750
                                            (letrec ((x7751
                                                      (letrec ((x7752
                                                                (letrec ((x7753
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7753))))
                                                        (cdr x7752))))
                                              (car x7751))))
                                    g7750)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7754
                                            (letrec ((x7755
                                                      (letrec ((x7756
                                                                (letrec ((x7757
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7757))))
                                                        (car x7756))))
                                              (cdr x7755))))
                                    g7754)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7758
                                            (letrec ((x7761
                                                      (string? filename)))
                                              (assert x7761)))
                                           (g7759
                                            (letrec ((x7762 (procedure? proc)))
                                              (assert x7762)))
                                           (g7760
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7763
                                                        (close-output-port
                                                         output-port))
                                                       (g7764 res))
                                                g7764))))
                                    g7760)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7765
                                            (letrec ((x7766
                                                      (letrec ((x7767 (cdr x)))
                                                        (cdr x7767))))
                                              (car x7766))))
                                    g7765)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7768
                                            (letrec ((x7769
                                                      (letrec ((x7770
                                                                (letrec ((x7771
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7771))))
                                                        (car x7770))))
                                              (cdr x7769))))
                                    g7768)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7772
                                            (letrec ((x7774 (list? l)))
                                              (assert x7774)))
                                           (g7773
                                            (letrec ((x-cnd7775 (null? l)))
                                              (if x-cnd7775
                                                #f
                                                (letrec ((x-cnd7776
                                                          (letrec ((x7777
                                                                    (caar l)))
                                                            (eq? x7777 k))))
                                                  (if x-cnd7776
                                                    (car l)
                                                    (letrec ((x7778 (cdr l)))
                                                      (assq k x7778))))))))
                                    g7773)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7779
                                            (letrec ((x7780 (modulo x 2)))
                                              (= 0 x7780))))
                                    g7779)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7781
                                            (letrec ((x7783 (list? l)))
                                              (assert x7783)))
                                           (g7782
                                            (letrec ((x-cnd7784 (null? l)))
                                              (if x-cnd7784
                                                ""
                                                (letrec ((x7787
                                                          (letrec ((x7788
                                                                    (car l)))
                                                            (char->string
                                                             x7788)))
                                                         (x7785
                                                          (letrec ((x7786
                                                                    (cdr l)))
                                                            (list->string
                                                             x7786))))
                                                  (string-append
                                                   x7787
                                                   x7785))))))
                                    g7782)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7789
                                            (letrec ((x7792 (char? c1)))
                                              (assert x7792)))
                                           (g7790
                                            (letrec ((x7793 (char? c2)))
                                              (assert x7793)))
                                           (g7791
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7794
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7794))))
                                    g7791)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7795
                                            (letrec ((x7796
                                                      (letrec ((x7797
                                                                (letrec ((x7798
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7798))))
                                                        (cdr x7797))))
                                              (cdr x7796))))
                                    g7795)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7799
                                            (letrec ((x7802 (list? l)))
                                              (assert x7802)))
                                           (g7800
                                            (letrec ((x7803 (numer?)))
                                              (assert x7803)))
                                           (g7801
                                            (letrec ((x-cnd7804 (zero? k)))
                                              (if x-cnd7804
                                                x
                                                (letrec ((x7806 (cdr x))
                                                         (x7805 (- k 1)))
                                                  (list-tail x7806 x7805))))))
                                    g7801)))
                               (halt (lambda () (letrec ((g7807 '())) g7807)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7808
                                            (letrec ((x-cnd7809
                                                      (letrec ((x7810 #\a))
                                                        (char-ci>=? c x7810))))
                                              (if x-cnd7809
                                                (letrec ((x7811 #\z))
                                                  (char-ci<=? c x7811))
                                                #f))))
                                    g7808)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7812
                                            (letrec ((x7814 (number? x)))
                                              (assert x7814)))
                                           (g7813
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7815
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7816
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7816)))))
                                                g7815))))
                                    g7813)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7817
                                            (letrec ((val7146
                                                      (letrec ((x7818
                                                                (char->integer
                                                                 c)))
                                                        (= x7818 9))))
                                              (letrec ((g7819
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7820
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7820
                                                                       10))))
                                                            (letrec ((g7821
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7822
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7822
                                                                           32)))))
                                                              g7821)))))
                                                g7819))))
                                    g7817)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7823
                                            (letrec ((x7824
                                                      (letrec ((x7825 (car x)))
                                                        (cdr x7825))))
                                              (cdr x7824))))
                                    g7823)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7826
                                            (letrec ((x7828 (number? x)))
                                              (assert x7828)))
                                           (g7827 (> x 0)))
                                    g7827)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7829 #f)) g7829)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7830
                                            (letrec ((x7831 (cdr x)))
                                              (cdr x7831))))
                                    g7830)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7832
                                            (letrec ((x7834 (number? x)))
                                              (assert x7834)))
                                           (g7833
                                            (letrec ((x-cnd7835 (< x 0)))
                                              (if x-cnd7835
                                                (ceiling x)
                                                (floor x)))))
                                    g7833)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7836
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7837
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7839
                                                                              (null?
                                                                               a))
                                                                             (x7838
                                                                              (null?
                                                                               b)))
                                                                      (and x7839
                                                                           x7838))))
                                                            (letrec ((g7840
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7843
                                                                                            (string?
                                                                                             a))
                                                                                           (x7842
                                                                                            (string?
                                                                                             b))
                                                                                           (x7841
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7843
                                                                                         x7842
                                                                                         x7841))))
                                                                          (letrec ((g7844
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7852
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7851
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7848
                                                                                                          (letrec ((x7850
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7849
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7850
                                                                                                             x7849)))
                                                                                                         (x7845
                                                                                                          (letrec ((x7847
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7846
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7847
                                                                                                             x7846))))
                                                                                                  (and x7852
                                                                                                       x7851
                                                                                                       x7848
                                                                                                       x7845))))
                                                                                        (letrec ((g7853
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7872
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7871
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7854
                                                                                                              (letrec ((x7868
                                                                                                                        (letrec ((x7869
                                                                                                                                  (letrec ((x7870
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7870))))
                                                                                                                          (x7869)))
                                                                                                                       (x7855
                                                                                                                        (letrec ((x7866
                                                                                                                                  (letrec ((x7867
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7867
                                                                                                                                     n)))
                                                                                                                                 (x7856
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7857
                                                                                                                                                        (letrec ((x7864
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7858
                                                                                                                                                                  (letrec ((x7861
                                                                                                                                                                            (letrec ((x7863
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7862
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7863
                                                                                                                                                                               x7862)))
                                                                                                                                                                           (x7859
                                                                                                                                                                            (letrec ((x7860
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7860))))
                                                                                                                                                                    (and x7861
                                                                                                                                                                         x7859))))
                                                                                                                                                          (or x7864
                                                                                                                                                              x7858))))
                                                                                                                                                g7857))))
                                                                                                                                    (letrec ((g7865
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7865))))
                                                                                                                          (and x7866
                                                                                                                               x7856))))
                                                                                                                (let x7868 x7855))))
                                                                                                      (and x7872
                                                                                                           x7871
                                                                                                           x7854)))))
                                                                                          g7853)))))
                                                                            g7844)))))
                                                              g7840)))))
                                                g7837))))
                                    g7836)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7873
                                            (letrec ((x7874
                                                      (letrec ((x7875
                                                                (letrec ((x7876
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7876))))
                                                        (car x7875))))
                                              (cdr x7874))))
                                    g7873)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7877
                                            (letrec ((x7878
                                                      (letrec ((x7879
                                                                (letrec ((x7880
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7880))))
                                                        (car x7879))))
                                              (car x7878))))
                                    g7877)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7881 (eq? x y))) g7881)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7882
                                            (letrec ((x7884 (number? x)))
                                              (assert x7884)))
                                           (g7883
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7885
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7886
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7886)))))
                                                g7885))))
                                    g7883)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7887
                                            (letrec ((x7890
                                                      (string? filename)))
                                              (assert x7890)))
                                           (g7888
                                            (letrec ((x7891 (procedure? proc)))
                                              (assert x7891)))
                                           (g7889
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7892
                                                        (close-input-port
                                                         input-port))
                                                       (g7893 res))
                                                g7893))))
                                    g7889)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7894 (cons x '()))) g7894)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7895
                                            (letrec ((x7898 (char? c1)))
                                              (assert x7898)))
                                           (g7896
                                            (letrec ((x7899 (char? c2)))
                                              (assert x7899)))
                                           (g7897
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7900
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7900))))
                                    g7897)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7901
                                            (letrec ((x7902
                                                      (letrec ((x7903 (car x)))
                                                        (car x7903))))
                                              (cdr x7902))))
                                    g7901)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7904
                                            (letrec ((x7905
                                                      (letrec ((x7906
                                                                (letrec ((x7907
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7907))))
                                                        (car x7906))))
                                              (cdr x7905))))
                                    g7904)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7908
                                            (letrec ((x7909
                                                      (letrec ((x7910 (car x)))
                                                        (cdr x7910))))
                                              (car x7909))))
                                    g7908)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7911
                                            (letrec ((x7912
                                                      (letrec ((x7913 (cdr x)))
                                                        (car x7913))))
                                              (car x7912))))
                                    g7911)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7914
                                            (letrec ((x7917 (char? c1)))
                                              (assert x7917)))
                                           (g7915
                                            (letrec ((x7918 (char? c2)))
                                              (assert x7918)))
                                           (g7916
                                            (letrec ((x7919
                                                      (char-ci<=? c1 c2)))
                                              (not x7919))))
                                    g7916)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7920
                                            (letrec ((x7921
                                                      (letrec ((x7922
                                                                (letrec ((x7923
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7923))))
                                                        (car x7922))))
                                              (car x7921))))
                                    g7920)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7924
                                            (letrec ((x7926 (number? x)))
                                              (assert x7926)))
                                           (g7925 (< x 0)))
                                    g7925)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7927 (memq e l))) g7927)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7928
                                            (letrec ((x7929
                                                      (letrec ((x7930 (car x)))
                                                        (car x7930))))
                                              (car x7929))))
                                    g7928)))
                               (debug
                                (lambda (e) (letrec ((g7931 '())) g7931)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7932
                                            (letrec ((x7934 (list? l)))
                                              (assert x7934)))
                                           (g7933
                                            (letrec ((x-cnd7935 (null? l)))
                                              (if x-cnd7935
                                                '()
                                                (letrec ((x7938
                                                          (letrec ((x7939
                                                                    (cdr l)))
                                                            (reverse x7939)))
                                                         (x7936
                                                          (letrec ((x7937
                                                                    (car l)))
                                                            (list x7937))))
                                                  (append x7938 x7936))))))
                                    g7933)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7940
                                            (letrec ((x7941
                                                      (letrec ((x7942
                                                                (letrec ((x7943
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7943))))
                                                        (car x7942))))
                                              (car x7941))))
                                    g7940)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7944
                                            (letrec ((x7945
                                                      (letrec ((x7946
                                                                (letrec ((x7947
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7947))))
                                                        (cdr x7946))))
                                              (cdr x7945))))
                                    g7944)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7948
                                            (letrec ((x7950 (number? x)))
                                              (assert x7950)))
                                           (g7949
                                            (letrec ((x7951 (modulo x 2)))
                                              (= 1 x7951))))
                                    g7949)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7952
                                            (letrec ((x7953
                                                      (letrec ((x7954
                                                                (letrec ((x7955
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7955))))
                                                        (car x7954))))
                                              (car x7953))))
                                    g7952)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7956
                                            (letrec ((x7959 (procedure? proc)))
                                              (assert x7959)))
                                           (g7957
                                            (letrec ((x7960 (list? args)))
                                              (assert x7960)))
                                           (g7958
                                            (if cnd
                                              (letrec ((g7961 (proc))) g7961)
                                              (if cnd
                                                (letrec ((g7962
                                                          (letrec ((x7963
                                                                    (car
                                                                     args)))
                                                            (proc x7963))))
                                                  g7962)
                                                (if cnd
                                                  (letrec ((g7964
                                                            (letrec ((x7966
                                                                      (car
                                                                       args))
                                                                     (x7965
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7966
                                                               x7965))))
                                                    g7964)
                                                  (if cnd
                                                    (letrec ((g7967
                                                              (letrec ((x7970
                                                                        (car
                                                                         args))
                                                                       (x7969
                                                                        (cadr
                                                                         args))
                                                                       (x7968
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7970
                                                                 x7969
                                                                 x7968))))
                                                      g7967)
                                                    (if cnd
                                                      (letrec ((g7971
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
                                                                           args)))
                                                                  (proc
                                                                   x7975
                                                                   x7974
                                                                   x7973
                                                                   x7972))))
                                                        g7971)
                                                      (if cnd
                                                        (letrec ((g7976
                                                                  (letrec ((x7982
                                                                            (car
                                                                             args))
                                                                           (x7981
                                                                            (cadr
                                                                             args))
                                                                           (x7980
                                                                            (caddr
                                                                             args))
                                                                           (x7979
                                                                            (cadddr
                                                                             args))
                                                                           (x7977
                                                                            (letrec ((x7978
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7978))))
                                                                    (proc
                                                                     x7982
                                                                     x7981
                                                                     x7980
                                                                     x7979
                                                                     x7977))))
                                                          g7976)
                                                        (if cnd
                                                          (letrec ((g7983
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
                                                                                 x7985))))
                                                                      (proc
                                                                       x7991
                                                                       x7990
                                                                       x7989
                                                                       x7988
                                                                       x7986
                                                                       x7984))))
                                                            g7983)
                                                          (if cnd
                                                            (letrec ((g7992
                                                                      (letrec ((x8002
                                                                                (car
                                                                                 args))
                                                                               (x8001
                                                                                (cadr
                                                                                 args))
                                                                               (x8000
                                                                                (caddr
                                                                                 args))
                                                                               (x7999
                                                                                (cadddr
                                                                                 args))
                                                                               (x7997
                                                                                (letrec ((x7998
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7998)))
                                                                               (x7995
                                                                                (letrec ((x7996
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7996)))
                                                                               (x7993
                                                                                (letrec ((x7994
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7994))))
                                                                        (proc
                                                                         x8002
                                                                         x8001
                                                                         x8000
                                                                         x7999
                                                                         x7997
                                                                         x7995
                                                                         x7993))))
                                                              g7992)
                                                            (letrec ((g8003
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g8003)))))))))))
                                    g7958)))
                               (member
                                (lambda (e l)
                                  (letrec ((g8004
                                            (letrec ((x8006 (list? l)))
                                              (assert x8006)))
                                           (g8005
                                            (letrec ((x-cnd8007 (null? l)))
                                              (if x-cnd8007
                                                #f
                                                (letrec ((x-cnd8008
                                                          (letrec ((x8009
                                                                    (car l)))
                                                            (equal? x8009 e))))
                                                  (if x-cnd8008
                                                    l
                                                    (letrec ((x8010 (cdr l)))
                                                      (member e x8010))))))))
                                    g8005)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g8011
                                            (letrec ((x8012
                                                      (letrec ((x8013
                                                                (letrec ((x8014
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8014))))
                                                        (cdr x8013))))
                                              (cdr x8012))))
                                    g8011)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g8015
                                            (letrec ((x8016
                                                      (letrec ((x8017
                                                                (letrec ((x8018
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8018))))
                                                        (cdr x8017))))
                                              (car x8016))))
                                    g8015)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8019 (random 42))) g8019)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8020
                                            (letrec ((x8022 (number? x)))
                                              (assert x8022)))
                                           (g8021 (= x 0)))
                                    g8021)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8023
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8024
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8024))))
                                    g8023)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8025
                                            (letrec ((x8026 (cdr x)))
                                              (car x8026))))
                                    g8025)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8027
                                            (letrec ((val7156
                                                      (letrec ((x8030
                                                                (pair? l))
                                                               (x8028
                                                                (letrec ((x8029
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8029))))
                                                        (and x8030 x8028))))
                                              (letrec ((g8031
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8031))))
                                    g8027)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8032
                                            (letrec ((x8033
                                                      (letrec ((x8034
                                                                (letrec ((x8035
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8035))))
                                                        (cdr x8034))))
                                              (cdr x8033))))
                                    g8032)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8036
                                            (letrec ((x-cnd8037
                                                      (letrec ((x8038 #\0))
                                                        (char<=? x8038 c))))
                                              (if x-cnd8037
                                                (letrec ((x8039 #\9))
                                                  (char<=? c x8039))
                                                #f))))
                                    g8036)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8040
                                            (letrec ((x8042 (list? l)))
                                              (assert x8042)))
                                           (g8041
                                            (letrec ((x-cnd8043 (null? l)))
                                              (if x-cnd8043
                                                #f
                                                (letrec ((x-cnd8044
                                                          (letrec ((x8045
                                                                    (caar l)))
                                                            (eqv? x8045 k))))
                                                  (if x-cnd8044
                                                    (car l)
                                                    (letrec ((x8046 (cdr l)))
                                                      (assq k x8046))))))))
                                    g8041)))
                               (not
                                (lambda (x)
                                  (letrec ((g8047 (if x #f #t))) g8047)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8048 (append l1 l2))) g8048)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8049
                                            (letrec ((x8051 (list? l)))
                                              (assert x8051)))
                                           (g8050
                                            (letrec ((x-cnd8052 (null? l)))
                                              (if x-cnd8052
                                                #f
                                                (letrec ((x-cnd8053
                                                          (letrec ((x8054
                                                                    (car l)))
                                                            (eq? x8054 e))))
                                                  (if x-cnd8053
                                                    l
                                                    (letrec ((x8055 (cdr l)))
                                                      (memq e x8055))))))))
                                    g8050)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8056
                                            (letrec ((x8057
                                                      (letrec ((x8058
                                                                (letrec ((x8059
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8059))))
                                                        (cdr x8058))))
                                              (car x8057))))
                                    g8056)))
                               (length
                                (lambda (l)
                                  (letrec ((g8060
                                            (letrec ((x8062 (list? l)))
                                              (assert x8062)))
                                           (g8061
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8063
                                                                  (letrec ((x-cnd8064
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8064
                                                                      0
                                                                      (letrec ((x8065
                                                                                (letrec ((x8066
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8066))))
                                                                        (+
                                                                         1
                                                                         x8065))))))
                                                          g8063))))
                                              (letrec ((g8067 (rec l)))
                                                g8067))))
                                    g8061)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8068
                                            (letrec ((x8071 (char? c1)))
                                              (assert x8071)))
                                           (g8069
                                            (letrec ((x8072 (char? c2)))
                                              (assert x8072)))
                                           (g8070
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8073
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8073))))
                                    g8070)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8074
                                            (letrec ((x8075 (string<=? s1 s2)))
                                              (not x8075))))
                                    g8074)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8076
                                            (letrec ((x8077
                                                      (letrec ((x8078 (cdr x)))
                                                        (car x8078))))
                                              (cdr x8077))))
                                    g8076)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8079
                                            (letrec ((x8081 (list? l)))
                                              (assert x8081)))
                                           (g8080
                                            (letrec ((x-cnd8082 (null? l)))
                                              (if x-cnd8082
                                                #f
                                                (letrec ((x-cnd8083
                                                          (letrec ((x8084
                                                                    (caar l)))
                                                            (equal? x8084 k))))
                                                  (if x-cnd8083
                                                    (car l)
                                                    (letrec ((x8085 (cdr l)))
                                                      (assoc k x8085))))))))
                                    g8080)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8086
                                            (letrec ((x8087 (car x)))
                                              (car x8087))))
                                    g8086)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8088
                                            (letrec ((x8091 (char? c1)))
                                              (assert x8091)))
                                           (g8089
                                            (letrec ((x8092 (char? c2)))
                                              (assert x8092)))
                                           (g8090
                                            (letrec ((x8093 (char<=? c1 c2)))
                                              (not x8093))))
                                    g8090)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8094
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8095
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8095))))
                                    g8094)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8096
                                            (letrec ((x8099 (procedure? f)))
                                              (assert x8099)))
                                           (g8097
                                            (letrec ((x8100 (list? l)))
                                              (assert x8100)))
                                           (g8098
                                            (letrec ((x-cnd8101 (null? l)))
                                              (if x-cnd8101
                                                #t
                                                (letrec ((x-cnd8102 (pair? l)))
                                                  (if x-cnd8102
                                                    (letrec ((g8103
                                                              (letrec ((x8105
                                                                        (car
                                                                         l)))
                                                                (f x8105)))
                                                             (g8104
                                                              (letrec ((x8106
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8106))))
                                                      g8104)
                                                    '()))))))
                                    g8098)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8107
                                            (letrec ((x8109 (number? x)))
                                              (assert x8109)))
                                           (g8108
                                            (letrec ((x-cnd8110 (< x 0)))
                                              (if x-cnd8110 (- 0 x) x))))
                                    g8108)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8111
                                            (letrec ((x8114 (char? c1)))
                                              (assert x8114)))
                                           (g8112
                                            (letrec ((x8115 (char? c2)))
                                              (assert x8115)))
                                           (g8113
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8116
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8116))))
                                    g8113)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8117
                                            (letrec ((x8118
                                                      (letrec ((x8119
                                                                (letrec ((x8120
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8120))))
                                                        (cdr x8119))))
                                              (car x8118))))
                                    g8117)))
                               (newline
                                (lambda () (letrec ((g8121 #f)) g8121)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8122
                                            (letrec ((x8124
                                                      (letrec ((x8125 (* m n)))
                                                        (abs x8125)))
                                                     (x8123 (gcd m n)))
                                              (/ x8124 x8123))))
                                    g8122)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8126
                                            (letrec ((x8128 (number? x)))
                                              (assert x8128)))
                                           (g8127
                                            (letrec ((x8129 (<= x y)))
                                              (not x8129))))
                                    g8127)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8130
                                            (letrec ((x8134 (list? l)))
                                              (assert x8134)))
                                           (g8131
                                            (letrec ((x8135 (number? index)))
                                              (assert x8135)))
                                           (g8132
                                            (letrec ((x8136
                                                      (letrec ((x8137
                                                                (length l)))
                                                        (< index x8137))))
                                              (assert x8136)))
                                           (g8133
                                            (letrec ((x-cnd8138 (= index 0)))
                                              (if x-cnd8138
                                                (car l)
                                                (letrec ((x8140 (cdr l))
                                                         (x8139 (- index 1)))
                                                  (list-ref x8140 x8139))))))
                                    g8133)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8141
                                            (letrec ((x-cnd8142 (= b 0)))
                                              (if x-cnd8142
                                                a
                                                (letrec ((x8143 (modulo a b)))
                                                  (gcd b x8143))))))
                                    g8141))))
                        (letrec ((g8144
                                  (letrec ((g8145
                                            (letrec ((mk-list
                                                      (lambda (n x)
                                                        (letrec ((g8146
                                                                  (letrec ((x-cnd8147
                                                                            (<
                                                                             n
                                                                             0)))
                                                                    (if x-cnd8147
                                                                      empty
                                                                      (letrec ((x8148
                                                                                (letrec ((x8149
                                                                                          (-
                                                                                           n
                                                                                           1)))
                                                                                  (mk-list
                                                                                   x8149
                                                                                   x))))
                                                                        (cons
                                                                         x
                                                                         x8148))))))
                                                          g8146)))
                                                     (mem
                                                      (lambda (x xs)
                                                        (letrec ((g8150
                                                                  (letrec ((x-cnd8151
                                                                            (empty?
                                                                             xs)))
                                                                    (if x-cnd8151
                                                                      #f
                                                                      (letrec ((val7160
                                                                                (letrec ((x8152
                                                                                          (car
                                                                                           xs)))
                                                                                  (=
                                                                                   x
                                                                                   x8152))))
                                                                        (letrec ((g8153
                                                                                  (if val7160
                                                                                    val7160
                                                                                    (letrec ((x8154
                                                                                              (cdr
                                                                                               xs)))
                                                                                      (mem
                                                                                       x
                                                                                       x8154)))))
                                                                          g8153))))))
                                                          g8150))))
                                              (letrec ((g8155
                                                        (letrec ((g8156
                                                                  (letrec ((g8157
                                                                            ((lambda (j7233
                                                                                      k7234
                                                                                      f7235)
                                                                               (lambda (g7231
                                                                                        g7232)
                                                                                 (letrec ((x7236
                                                                                           (integer?/c
                                                                                            j7233
                                                                                            k7234
                                                                                            g7231))
                                                                                          (x7237
                                                                                           (integer?/c
                                                                                            j7233
                                                                                            k7234
                                                                                            g7232)))
                                                                                   (((lambda (_
                                                                                              x)
                                                                                       (and/c
                                                                                        (listof
                                                                                         integer?/c)
                                                                                        (lambda (g7238
                                                                                                 g7239
                                                                                                 g7240)
                                                                                          (if ((lambda (l)
                                                                                                 (letrec ((val7161
                                                                                                           (empty?
                                                                                                            l)))
                                                                                                   (if val7161
                                                                                                     val7161
                                                                                                     (member
                                                                                                      x
                                                                                                      l))))
                                                                                               g7240)
                                                                                            g7240
                                                                                            (blame
                                                                                             g7238
                                                                                             '(lambda (l)
                                                                                                (letrec ((val7161
                                                                                                          (empty?
                                                                                                           l)))
                                                                                                  (if val7161
                                                                                                    val7161
                                                                                                    (member
                                                                                                     x
                                                                                                     l)))))))))
                                                                                     x7236
                                                                                     x7237)
                                                                                    j7233
                                                                                    k7234
                                                                                    (f7235
                                                                                     x7236
                                                                                     x7237)))))
                                                                             'module
                                                                             'importer
                                                                             mk-list))
                                                                           (g8158
                                                                            (letrec ((x8161
                                                                                      ((lambda (j7243
                                                                                                k7244
                                                                                                f7245)
                                                                                         (lambda (g7241
                                                                                                  g7242)
                                                                                           (boolean?/c
                                                                                            j7243
                                                                                            k7244
                                                                                            (f7245
                                                                                             (integer?/c
                                                                                              j7243
                                                                                              k7244
                                                                                              g7241)
                                                                                             ((listof
                                                                                               integer?/c)
                                                                                              j7243
                                                                                              k7244
                                                                                              g7242)))))
                                                                                       'module
                                                                                       'importer
                                                                                       mem))
                                                                                     (x8160
                                                                                      (input))
                                                                                     (x8159
                                                                                      (input)))
                                                                              (x8161
                                                                               x8160
                                                                               x8159))))
                                                                    g8158)))
                                                          g8156)))
                                                g8155))))
                                    g8145)))
                          g8144))))
              g7257)))
    g7256))
