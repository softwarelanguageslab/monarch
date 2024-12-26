(letrec ((any? (lambda (v) (letrec ((g7242 #t)) g7242)))
         (meta (lambda (v) (letrec ((g7243 v)) g7243)))
         (member
          (lambda (v lst)
            (letrec ((g7244
                      (letrec ((g7245
                                (letrec ((x-e7246 lst))
                                  (match
                                   x-e7246
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7247 (eq? v v1)))
                                       (if x-cnd7247 #t (member v vs)))))))))
                        g7245)))
              g7244)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7248 (lambda (v) (letrec ((g7249 v)) g7249)))) g7248)))
         (nonzero?
          (lambda (v)
            (letrec ((g7250 (letrec ((x7251 (= v 0))) (not x7251)))) g7250))))
  (letrec ((g7252
            (letrec ((g7253
                      (letrec ((real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7254
                                            (letrec ((x-cnd7255 (real? g7162)))
                                              (if x-cnd7255
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7254)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7256
                                            (letrec ((x-cnd7257
                                                      (boolean? g7165)))
                                              (if x-cnd7257
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7256)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7258
                                            (letrec ((x-cnd7259
                                                      (number? g7168)))
                                              (if x-cnd7259
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7258)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7260
                                            (letrec ((x-cnd7261
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7261
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7260)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7262
                                            (letrec ((x-cnd7263
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7263
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7262)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7264
                                            (letrec ((x-cnd7265 (pair? g7177)))
                                              (if x-cnd7265
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7264)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7266
                                            (letrec ((x-cnd7267 (pair? g7180)))
                                              (if x-cnd7267
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7266)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7268
                                            (letrec ((x-cnd7269
                                                      (integer? g7183)))
                                              (if x-cnd7269
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7268)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7270
                                            (lambda (k j v)
                                              (letrec ((g7271
                                                        (letrec ((x-cnd7272
                                                                  (c1 k j v)))
                                                          (if x-cnd7272
                                                            (c2 k j v)
                                                            #f))))
                                                g7271))))
                                    g7270)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7273
                                            (lambda (k j v)
                                              (letrec ((g7274
                                                        (letrec ((x-cnd7275
                                                                  (null? v)))
                                                          (if x-cnd7275
                                                            '()
                                                            (letrec ((x7279
                                                                      (letrec ((x7280
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7280)))
                                                                     (x7276
                                                                      (letrec ((x7278
                                                                                (list-of
                                                                                 contract))
                                                                               (x7277
                                                                                (cdr
                                                                                 v)))
                                                                        (x7278
                                                                         k
                                                                         j
                                                                         x7277))))
                                                              (cons
                                                               x7279
                                                               x7276))))))
                                                g7274))))
                                    g7273)))
                               (any? (lambda (v) (letrec ((g7281 #t)) g7281)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7282
                                            (letrec ((x7283 (= v 0)))
                                              (not x7283))))
                                    g7282)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7284
                                            (letrec ((x-cnd7285
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7285
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7284)))
                               (meta (lambda (v) (letrec ((g7286 v)) g7286)))
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
                                (lambda (cnd) (letrec ((g7287 #t)) g7287)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7288
                                            (letrec ((x7289
                                                      (letrec ((x7290 (cdr x)))
                                                        (cdr x7290))))
                                              (cdr x7289))))
                                    g7288)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7291
                                            (letrec ((x7294 (procedure? f)))
                                              (assert x7294)))
                                           (g7292
                                            (letrec ((x7295 (list? l)))
                                              (assert x7295)))
                                           (g7293
                                            (letrec ((x-cnd7296 (null? l)))
                                              (if x-cnd7296
                                                '()
                                                (letrec ((x7299
                                                          (letrec ((x7300
                                                                    (car l)))
                                                            (f x7300)))
                                                         (x7297
                                                          (letrec ((x7298
                                                                    (cdr l)))
                                                            (map f x7298))))
                                                  (cons x7299 x7297))))))
                                    g7293)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7301
                                            (letrec ((x7302 (car x)))
                                              (cdr x7302))))
                                    g7301)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7303
                                            (letrec ((x7304
                                                      (letrec ((x7305
                                                                (letrec ((x7306
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7306))))
                                                        (cdr x7305))))
                                              (car x7304))))
                                    g7303)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7307
                                            (letrec ((x7308
                                                      (letrec ((x7309
                                                                (letrec ((x7310
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7310))))
                                                        (car x7309))))
                                              (cdr x7308))))
                                    g7307)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7311
                                            (letrec ((x7314
                                                      (string? filename)))
                                              (assert x7314)))
                                           (g7312
                                            (letrec ((x7315 (procedure? proc)))
                                              (assert x7315)))
                                           (g7313
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7316
                                                        (close-output-port
                                                         output-port))
                                                       (g7317 res))
                                                g7317))))
                                    g7313)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7318
                                            (letrec ((x7319
                                                      (letrec ((x7320 (cdr x)))
                                                        (cdr x7320))))
                                              (car x7319))))
                                    g7318)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7321
                                            (letrec ((x7322
                                                      (letrec ((x7323
                                                                (letrec ((x7324
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7324))))
                                                        (car x7323))))
                                              (cdr x7322))))
                                    g7321)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7325
                                            (letrec ((x7327 (list? l)))
                                              (assert x7327)))
                                           (g7326
                                            (letrec ((x-cnd7328 (null? l)))
                                              (if x-cnd7328
                                                #f
                                                (letrec ((x-cnd7329
                                                          (letrec ((x7330
                                                                    (caar l)))
                                                            (eq? x7330 k))))
                                                  (if x-cnd7329
                                                    (car l)
                                                    (letrec ((x7331 (cdr l)))
                                                      (assq k x7331))))))))
                                    g7326)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7332
                                            (letrec ((x7333 (modulo x 2)))
                                              (= 0 x7333))))
                                    g7332)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7334
                                            (letrec ((x7336 (list? l)))
                                              (assert x7336)))
                                           (g7335
                                            (letrec ((x-cnd7337 (null? l)))
                                              (if x-cnd7337
                                                ""
                                                (letrec ((x7340
                                                          (letrec ((x7341
                                                                    (car l)))
                                                            (char->string
                                                             x7341)))
                                                         (x7338
                                                          (letrec ((x7339
                                                                    (cdr l)))
                                                            (list->string
                                                             x7339))))
                                                  (string-append
                                                   x7340
                                                   x7338))))))
                                    g7335)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7342
                                            (letrec ((x7345 (char? c1)))
                                              (assert x7345)))
                                           (g7343
                                            (letrec ((x7346 (char? c2)))
                                              (assert x7346)))
                                           (g7344
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7347
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7347))))
                                    g7344)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7348
                                            (letrec ((x7349
                                                      (letrec ((x7350
                                                                (letrec ((x7351
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7351))))
                                                        (cdr x7350))))
                                              (cdr x7349))))
                                    g7348)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7352
                                            (letrec ((x7355 (list? l)))
                                              (assert x7355)))
                                           (g7353
                                            (letrec ((x7356 (numer?)))
                                              (assert x7356)))
                                           (g7354
                                            (letrec ((x-cnd7357 (zero? k)))
                                              (if x-cnd7357
                                                x
                                                (letrec ((x7359 (cdr x))
                                                         (x7358 (- k 1)))
                                                  (list-tail x7359 x7358))))))
                                    g7354)))
                               (halt (lambda () (letrec ((g7360 '())) g7360)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7361
                                            (letrec ((x-cnd7362
                                                      (letrec ((x7363 #\a))
                                                        (char-ci>=? c x7363))))
                                              (if x-cnd7362
                                                (letrec ((x7364 #\z))
                                                  (char-ci<=? c x7364))
                                                #f))))
                                    g7361)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7365
                                            (letrec ((x7367 (number? x)))
                                              (assert x7367)))
                                           (g7366
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7368
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7369
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7369)))))
                                                g7368))))
                                    g7366)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7370
                                            (letrec ((val7146
                                                      (letrec ((x7371
                                                                (char->integer
                                                                 c)))
                                                        (= x7371 9))))
                                              (letrec ((g7372
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7373
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7373
                                                                       10))))
                                                            (letrec ((g7374
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7375
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7375
                                                                           32)))))
                                                              g7374)))))
                                                g7372))))
                                    g7370)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7376
                                            (letrec ((x7377
                                                      (letrec ((x7378 (car x)))
                                                        (cdr x7378))))
                                              (cdr x7377))))
                                    g7376)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7379
                                            (letrec ((x7381 (number? x)))
                                              (assert x7381)))
                                           (g7380 (> x 0)))
                                    g7380)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7382 #f)) g7382)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7383
                                            (letrec ((x7384 (cdr x)))
                                              (cdr x7384))))
                                    g7383)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7385
                                            (letrec ((x7387 (number? x)))
                                              (assert x7387)))
                                           (g7386
                                            (letrec ((x-cnd7388 (< x 0)))
                                              (if x-cnd7388
                                                (ceiling x)
                                                (floor x)))))
                                    g7386)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7389
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7390
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7392
                                                                              (null?
                                                                               a))
                                                                             (x7391
                                                                              (null?
                                                                               b)))
                                                                      (and x7392
                                                                           x7391))))
                                                            (letrec ((g7393
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7396
                                                                                            (string?
                                                                                             a))
                                                                                           (x7395
                                                                                            (string?
                                                                                             b))
                                                                                           (x7394
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7396
                                                                                         x7395
                                                                                         x7394))))
                                                                          (letrec ((g7397
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7405
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7404
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7401
                                                                                                          (letrec ((x7403
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7402
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7403
                                                                                                             x7402)))
                                                                                                         (x7398
                                                                                                          (letrec ((x7400
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7399
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7400
                                                                                                             x7399))))
                                                                                                  (and x7405
                                                                                                       x7404
                                                                                                       x7401
                                                                                                       x7398))))
                                                                                        (letrec ((g7406
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7425
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7424
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7407
                                                                                                              (letrec ((x7421
                                                                                                                        (letrec ((x7422
                                                                                                                                  (letrec ((x7423
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7423))))
                                                                                                                          (x7422)))
                                                                                                                       (x7408
                                                                                                                        (letrec ((x7419
                                                                                                                                  (letrec ((x7420
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7420
                                                                                                                                     n)))
                                                                                                                                 (x7409
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7410
                                                                                                                                                        (letrec ((x7417
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7411
                                                                                                                                                                  (letrec ((x7414
                                                                                                                                                                            (letrec ((x7416
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7415
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7416
                                                                                                                                                                               x7415)))
                                                                                                                                                                           (x7412
                                                                                                                                                                            (letrec ((x7413
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7413))))
                                                                                                                                                                    (and x7414
                                                                                                                                                                         x7412))))
                                                                                                                                                          (or x7417
                                                                                                                                                              x7411))))
                                                                                                                                                g7410))))
                                                                                                                                    (letrec ((g7418
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7418))))
                                                                                                                          (and x7419
                                                                                                                               x7409))))
                                                                                                                (let x7421 x7408))))
                                                                                                      (and x7425
                                                                                                           x7424
                                                                                                           x7407)))))
                                                                                          g7406)))))
                                                                            g7397)))))
                                                              g7393)))))
                                                g7390))))
                                    g7389)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7426
                                            (letrec ((x7427
                                                      (letrec ((x7428
                                                                (letrec ((x7429
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7429))))
                                                        (car x7428))))
                                              (cdr x7427))))
                                    g7426)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7430
                                            (letrec ((x7431
                                                      (letrec ((x7432
                                                                (letrec ((x7433
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7433))))
                                                        (car x7432))))
                                              (car x7431))))
                                    g7430)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7434 (eq? x y))) g7434)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7435
                                            (letrec ((x7437 (number? x)))
                                              (assert x7437)))
                                           (g7436
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7438
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7439
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7439)))))
                                                g7438))))
                                    g7436)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7440
                                            (letrec ((x7443
                                                      (string? filename)))
                                              (assert x7443)))
                                           (g7441
                                            (letrec ((x7444 (procedure? proc)))
                                              (assert x7444)))
                                           (g7442
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7445
                                                        (close-input-port
                                                         input-port))
                                                       (g7446 res))
                                                g7446))))
                                    g7442)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7447 (cons x '()))) g7447)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7448
                                            (letrec ((x7451 (char? c1)))
                                              (assert x7451)))
                                           (g7449
                                            (letrec ((x7452 (char? c2)))
                                              (assert x7452)))
                                           (g7450
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7453
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7453))))
                                    g7450)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7454
                                            (letrec ((x7455
                                                      (letrec ((x7456 (car x)))
                                                        (car x7456))))
                                              (cdr x7455))))
                                    g7454)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7457
                                            (letrec ((x7458
                                                      (letrec ((x7459
                                                                (letrec ((x7460
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7460))))
                                                        (car x7459))))
                                              (cdr x7458))))
                                    g7457)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7461
                                            (letrec ((x7462
                                                      (letrec ((x7463 (car x)))
                                                        (cdr x7463))))
                                              (car x7462))))
                                    g7461)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7464
                                            (letrec ((x7465
                                                      (letrec ((x7466 (cdr x)))
                                                        (car x7466))))
                                              (car x7465))))
                                    g7464)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7467
                                            (letrec ((x7470 (char? c1)))
                                              (assert x7470)))
                                           (g7468
                                            (letrec ((x7471 (char? c2)))
                                              (assert x7471)))
                                           (g7469
                                            (letrec ((x7472
                                                      (char-ci<=? c1 c2)))
                                              (not x7472))))
                                    g7469)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7473
                                            (letrec ((x7474
                                                      (letrec ((x7475
                                                                (letrec ((x7476
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7476))))
                                                        (car x7475))))
                                              (car x7474))))
                                    g7473)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7477
                                            (letrec ((x7479 (number? x)))
                                              (assert x7479)))
                                           (g7478 (< x 0)))
                                    g7478)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7480 (memq e l))) g7480)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7481
                                            (letrec ((x7482
                                                      (letrec ((x7483 (car x)))
                                                        (car x7483))))
                                              (car x7482))))
                                    g7481)))
                               (debug
                                (lambda (e) (letrec ((g7484 '())) g7484)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7485
                                            (letrec ((x7487 (list? l)))
                                              (assert x7487)))
                                           (g7486
                                            (letrec ((x-cnd7488 (null? l)))
                                              (if x-cnd7488
                                                '()
                                                (letrec ((x7491
                                                          (letrec ((x7492
                                                                    (cdr l)))
                                                            (reverse x7492)))
                                                         (x7489
                                                          (letrec ((x7490
                                                                    (car l)))
                                                            (list x7490))))
                                                  (append x7491 x7489))))))
                                    g7486)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7493
                                            (letrec ((x7494
                                                      (letrec ((x7495
                                                                (letrec ((x7496
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7496))))
                                                        (car x7495))))
                                              (car x7494))))
                                    g7493)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7497
                                            (letrec ((x7498
                                                      (letrec ((x7499
                                                                (letrec ((x7500
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7500))))
                                                        (cdr x7499))))
                                              (cdr x7498))))
                                    g7497)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7501
                                            (letrec ((x7503 (number? x)))
                                              (assert x7503)))
                                           (g7502
                                            (letrec ((x7504 (modulo x 2)))
                                              (= 1 x7504))))
                                    g7502)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7505
                                            (letrec ((x7506
                                                      (letrec ((x7507
                                                                (letrec ((x7508
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7508))))
                                                        (car x7507))))
                                              (car x7506))))
                                    g7505)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7509
                                            (letrec ((x7512 (procedure? proc)))
                                              (assert x7512)))
                                           (g7510
                                            (letrec ((x7513 (list? args)))
                                              (assert x7513)))
                                           (g7511
                                            (if cnd
                                              (letrec ((g7514 (proc))) g7514)
                                              (if cnd
                                                (letrec ((g7515
                                                          (letrec ((x7516
                                                                    (car
                                                                     args)))
                                                            (proc x7516))))
                                                  g7515)
                                                (if cnd
                                                  (letrec ((g7517
                                                            (letrec ((x7519
                                                                      (car
                                                                       args))
                                                                     (x7518
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7519
                                                               x7518))))
                                                    g7517)
                                                  (if cnd
                                                    (letrec ((g7520
                                                              (letrec ((x7523
                                                                        (car
                                                                         args))
                                                                       (x7522
                                                                        (cadr
                                                                         args))
                                                                       (x7521
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7523
                                                                 x7522
                                                                 x7521))))
                                                      g7520)
                                                    (if cnd
                                                      (letrec ((g7524
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
                                                                           args)))
                                                                  (proc
                                                                   x7528
                                                                   x7527
                                                                   x7526
                                                                   x7525))))
                                                        g7524)
                                                      (if cnd
                                                        (letrec ((g7529
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
                                                                               x7531))))
                                                                    (proc
                                                                     x7535
                                                                     x7534
                                                                     x7533
                                                                     x7532
                                                                     x7530))))
                                                          g7529)
                                                        (if cnd
                                                          (letrec ((g7536
                                                                    (letrec ((x7544
                                                                              (car
                                                                               args))
                                                                             (x7543
                                                                              (cadr
                                                                               args))
                                                                             (x7542
                                                                              (caddr
                                                                               args))
                                                                             (x7541
                                                                              (cadddr
                                                                               args))
                                                                             (x7539
                                                                              (letrec ((x7540
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7540)))
                                                                             (x7537
                                                                              (letrec ((x7538
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7538))))
                                                                      (proc
                                                                       x7544
                                                                       x7543
                                                                       x7542
                                                                       x7541
                                                                       x7539
                                                                       x7537))))
                                                            g7536)
                                                          (if cnd
                                                            (letrec ((g7545
                                                                      (letrec ((x7555
                                                                                (car
                                                                                 args))
                                                                               (x7554
                                                                                (cadr
                                                                                 args))
                                                                               (x7553
                                                                                (caddr
                                                                                 args))
                                                                               (x7552
                                                                                (cadddr
                                                                                 args))
                                                                               (x7550
                                                                                (letrec ((x7551
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7551)))
                                                                               (x7548
                                                                                (letrec ((x7549
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7549)))
                                                                               (x7546
                                                                                (letrec ((x7547
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7547))))
                                                                        (proc
                                                                         x7555
                                                                         x7554
                                                                         x7553
                                                                         x7552
                                                                         x7550
                                                                         x7548
                                                                         x7546))))
                                                              g7545)
                                                            (letrec ((g7556
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7556)))))))))))
                                    g7511)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7557
                                            (letrec ((x7559 (list? l)))
                                              (assert x7559)))
                                           (g7558
                                            (letrec ((x-cnd7560 (null? l)))
                                              (if x-cnd7560
                                                #f
                                                (letrec ((x-cnd7561
                                                          (letrec ((x7562
                                                                    (car l)))
                                                            (equal? x7562 e))))
                                                  (if x-cnd7561
                                                    l
                                                    (letrec ((x7563 (cdr l)))
                                                      (member e x7563))))))))
                                    g7558)))
                               (call-with-current-continuation call/cc)
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7564
                                            (letrec ((x7565
                                                      (letrec ((x7566
                                                                (letrec ((x7567
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7567))))
                                                        (cdr x7566))))
                                              (cdr x7565))))
                                    g7564)))
                               (cadddr
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
                                              (car x7569))))
                                    g7568)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7572 (random 42))) g7572)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7573
                                            (letrec ((x7575 (number? x)))
                                              (assert x7575)))
                                           (g7574 (= x 0)))
                                    g7574)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7576
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7577
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7577))))
                                    g7576)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7578
                                            (letrec ((x7579 (cdr x)))
                                              (car x7579))))
                                    g7578)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7580
                                            (letrec ((val7156
                                                      (letrec ((x7583
                                                                (pair? l))
                                                               (x7581
                                                                (letrec ((x7582
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7582))))
                                                        (and x7583 x7581))))
                                              (letrec ((g7584
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7584))))
                                    g7580)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7585
                                            (letrec ((x7586
                                                      (letrec ((x7587
                                                                (letrec ((x7588
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7588))))
                                                        (cdr x7587))))
                                              (cdr x7586))))
                                    g7585)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7589
                                            (letrec ((x-cnd7590
                                                      (letrec ((x7591 #\0))
                                                        (char<=? x7591 c))))
                                              (if x-cnd7590
                                                (letrec ((x7592 #\9))
                                                  (char<=? c x7592))
                                                #f))))
                                    g7589)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7593
                                            (letrec ((x7595 (list? l)))
                                              (assert x7595)))
                                           (g7594
                                            (letrec ((x-cnd7596 (null? l)))
                                              (if x-cnd7596
                                                #f
                                                (letrec ((x-cnd7597
                                                          (letrec ((x7598
                                                                    (caar l)))
                                                            (eqv? x7598 k))))
                                                  (if x-cnd7597
                                                    (car l)
                                                    (letrec ((x7599 (cdr l)))
                                                      (assq k x7599))))))))
                                    g7594)))
                               (not
                                (lambda (x)
                                  (letrec ((g7600 (if x #f #t))) g7600)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7601 (append l1 l2))) g7601)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7602
                                            (letrec ((x7604 (list? l)))
                                              (assert x7604)))
                                           (g7603
                                            (letrec ((x-cnd7605 (null? l)))
                                              (if x-cnd7605
                                                #f
                                                (letrec ((x-cnd7606
                                                          (letrec ((x7607
                                                                    (car l)))
                                                            (eq? x7607 e))))
                                                  (if x-cnd7606
                                                    l
                                                    (letrec ((x7608 (cdr l)))
                                                      (memq e x7608))))))))
                                    g7603)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7609
                                            (letrec ((x7610
                                                      (letrec ((x7611
                                                                (letrec ((x7612
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7612))))
                                                        (cdr x7611))))
                                              (car x7610))))
                                    g7609)))
                               (length
                                (lambda (l)
                                  (letrec ((g7613
                                            (letrec ((x7615 (list? l)))
                                              (assert x7615)))
                                           (g7614
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7616
                                                                  (letrec ((x-cnd7617
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7617
                                                                      0
                                                                      (letrec ((x7618
                                                                                (letrec ((x7619
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7619))))
                                                                        (+
                                                                         1
                                                                         x7618))))))
                                                          g7616))))
                                              (letrec ((g7620 (rec l)))
                                                g7620))))
                                    g7614)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7621
                                            (letrec ((x7624 (char? c1)))
                                              (assert x7624)))
                                           (g7622
                                            (letrec ((x7625 (char? c2)))
                                              (assert x7625)))
                                           (g7623
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7626
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7626))))
                                    g7623)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7627
                                            (letrec ((x7628 (string<=? s1 s2)))
                                              (not x7628))))
                                    g7627)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7629
                                            (letrec ((x7630
                                                      (letrec ((x7631 (cdr x)))
                                                        (car x7631))))
                                              (cdr x7630))))
                                    g7629)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7632
                                            (letrec ((x7634 (list? l)))
                                              (assert x7634)))
                                           (g7633
                                            (letrec ((x-cnd7635 (null? l)))
                                              (if x-cnd7635
                                                #f
                                                (letrec ((x-cnd7636
                                                          (letrec ((x7637
                                                                    (caar l)))
                                                            (equal? x7637 k))))
                                                  (if x-cnd7636
                                                    (car l)
                                                    (letrec ((x7638 (cdr l)))
                                                      (assoc k x7638))))))))
                                    g7633)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7639
                                            (letrec ((x7640 (car x)))
                                              (car x7640))))
                                    g7639)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7641
                                            (letrec ((x7644 (char? c1)))
                                              (assert x7644)))
                                           (g7642
                                            (letrec ((x7645 (char? c2)))
                                              (assert x7645)))
                                           (g7643
                                            (letrec ((x7646 (char<=? c1 c2)))
                                              (not x7646))))
                                    g7643)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7647
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7648
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7648))))
                                    g7647)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7649
                                            (letrec ((x7652 (procedure? f)))
                                              (assert x7652)))
                                           (g7650
                                            (letrec ((x7653 (list? l)))
                                              (assert x7653)))
                                           (g7651
                                            (letrec ((x-cnd7654 (null? l)))
                                              (if x-cnd7654
                                                #t
                                                (letrec ((x-cnd7655 (pair? l)))
                                                  (if x-cnd7655
                                                    (letrec ((g7656
                                                              (letrec ((x7658
                                                                        (car
                                                                         l)))
                                                                (f x7658)))
                                                             (g7657
                                                              (letrec ((x7659
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7659))))
                                                      g7657)
                                                    '()))))))
                                    g7651)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7660
                                            (letrec ((x7662 (number? x)))
                                              (assert x7662)))
                                           (g7661
                                            (letrec ((x-cnd7663 (< x 0)))
                                              (if x-cnd7663 (- 0 x) x))))
                                    g7661)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7664
                                            (letrec ((x7667 (char? c1)))
                                              (assert x7667)))
                                           (g7665
                                            (letrec ((x7668 (char? c2)))
                                              (assert x7668)))
                                           (g7666
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7669
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7669))))
                                    g7666)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7670
                                            (letrec ((x7671
                                                      (letrec ((x7672
                                                                (letrec ((x7673
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7673))))
                                                        (cdr x7672))))
                                              (car x7671))))
                                    g7670)))
                               (newline
                                (lambda () (letrec ((g7674 #f)) g7674)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7675
                                            (letrec ((x7677
                                                      (letrec ((x7678 (* m n)))
                                                        (abs x7678)))
                                                     (x7676 (gcd m n)))
                                              (/ x7677 x7676))))
                                    g7675)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7679
                                            (letrec ((x7681 (number? x)))
                                              (assert x7681)))
                                           (g7680
                                            (letrec ((x7682 (<= x y)))
                                              (not x7682))))
                                    g7680)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7683
                                            (letrec ((x7687 (list? l)))
                                              (assert x7687)))
                                           (g7684
                                            (letrec ((x7688 (number? index)))
                                              (assert x7688)))
                                           (g7685
                                            (letrec ((x7689
                                                      (letrec ((x7690
                                                                (length l)))
                                                        (< index x7690))))
                                              (assert x7689)))
                                           (g7686
                                            (letrec ((x-cnd7691 (= index 0)))
                                              (if x-cnd7691
                                                (car l)
                                                (letrec ((x7693 (cdr l))
                                                         (x7692 (- index 1)))
                                                  (list-ref x7693 x7692))))))
                                    g7686)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7694
                                            (letrec ((x-cnd7695 (= b 0)))
                                              (if x-cnd7695
                                                a
                                                (letrec ((x7696 (modulo a b)))
                                                  (gcd b x7696))))))
                                    g7694)))
                               (real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7697
                                            (letrec ((x-cnd7698 (real? g7162)))
                                              (if x-cnd7698
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7697)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7699
                                            (letrec ((x-cnd7700
                                                      (boolean? g7165)))
                                              (if x-cnd7700
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7699)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7701
                                            (letrec ((x-cnd7702
                                                      (number? g7168)))
                                              (if x-cnd7702
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7701)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7703
                                            (letrec ((x-cnd7704
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7704
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7703)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7705
                                            (letrec ((x-cnd7706
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7706
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7705)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7707
                                            (letrec ((x-cnd7708 (pair? g7177)))
                                              (if x-cnd7708
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7707)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7709
                                            (letrec ((x-cnd7710 (pair? g7180)))
                                              (if x-cnd7710
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7709)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7711
                                            (letrec ((x-cnd7712
                                                      (integer? g7183)))
                                              (if x-cnd7712
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7711)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7713
                                            (lambda (k j v)
                                              (letrec ((g7714
                                                        (letrec ((x-cnd7715
                                                                  (c1 k j v)))
                                                          (if x-cnd7715
                                                            (c2 k j v)
                                                            #f))))
                                                g7714))))
                                    g7713)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7716
                                            (lambda (k j v)
                                              (letrec ((g7717
                                                        (letrec ((x-cnd7718
                                                                  (null? v)))
                                                          (if x-cnd7718
                                                            '()
                                                            (letrec ((x7722
                                                                      (letrec ((x7723
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7723)))
                                                                     (x7719
                                                                      (letrec ((x7721
                                                                                (list-of
                                                                                 contract))
                                                                               (x7720
                                                                                (cdr
                                                                                 v)))
                                                                        (x7721
                                                                         k
                                                                         j
                                                                         x7720))))
                                                              (cons
                                                               x7722
                                                               x7719))))))
                                                g7717))))
                                    g7716)))
                               (any? (lambda (v) (letrec ((g7724 #t)) g7724)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7725
                                            (letrec ((x7726 (= v 0)))
                                              (not x7726))))
                                    g7725)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7727
                                            (letrec ((x-cnd7728
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7728
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7727)))
                               (meta (lambda (v) (letrec ((g7729 v)) g7729)))
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
                                (lambda (cnd) (letrec ((g7730 #t)) g7730)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7731
                                            (letrec ((x7732
                                                      (letrec ((x7733 (cdr x)))
                                                        (cdr x7733))))
                                              (cdr x7732))))
                                    g7731)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7734
                                            (letrec ((x7737 (procedure? f)))
                                              (assert x7737)))
                                           (g7735
                                            (letrec ((x7738 (list? l)))
                                              (assert x7738)))
                                           (g7736
                                            (letrec ((x-cnd7739 (null? l)))
                                              (if x-cnd7739
                                                '()
                                                (letrec ((x7742
                                                          (letrec ((x7743
                                                                    (car l)))
                                                            (f x7743)))
                                                         (x7740
                                                          (letrec ((x7741
                                                                    (cdr l)))
                                                            (map f x7741))))
                                                  (cons x7742 x7740))))))
                                    g7736)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7744
                                            (letrec ((x7745 (car x)))
                                              (cdr x7745))))
                                    g7744)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7746
                                            (letrec ((x7747
                                                      (letrec ((x7748
                                                                (letrec ((x7749
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7749))))
                                                        (cdr x7748))))
                                              (car x7747))))
                                    g7746)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7750
                                            (letrec ((x7751
                                                      (letrec ((x7752
                                                                (letrec ((x7753
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7753))))
                                                        (car x7752))))
                                              (cdr x7751))))
                                    g7750)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7754
                                            (letrec ((x7757
                                                      (string? filename)))
                                              (assert x7757)))
                                           (g7755
                                            (letrec ((x7758 (procedure? proc)))
                                              (assert x7758)))
                                           (g7756
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7759
                                                        (close-output-port
                                                         output-port))
                                                       (g7760 res))
                                                g7760))))
                                    g7756)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7761
                                            (letrec ((x7762
                                                      (letrec ((x7763 (cdr x)))
                                                        (cdr x7763))))
                                              (car x7762))))
                                    g7761)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7764
                                            (letrec ((x7765
                                                      (letrec ((x7766
                                                                (letrec ((x7767
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7767))))
                                                        (car x7766))))
                                              (cdr x7765))))
                                    g7764)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7768
                                            (letrec ((x7770 (list? l)))
                                              (assert x7770)))
                                           (g7769
                                            (letrec ((x-cnd7771 (null? l)))
                                              (if x-cnd7771
                                                #f
                                                (letrec ((x-cnd7772
                                                          (letrec ((x7773
                                                                    (caar l)))
                                                            (eq? x7773 k))))
                                                  (if x-cnd7772
                                                    (car l)
                                                    (letrec ((x7774 (cdr l)))
                                                      (assq k x7774))))))))
                                    g7769)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7775
                                            (letrec ((x7776 (modulo x 2)))
                                              (= 0 x7776))))
                                    g7775)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7777
                                            (letrec ((x7779 (list? l)))
                                              (assert x7779)))
                                           (g7778
                                            (letrec ((x-cnd7780 (null? l)))
                                              (if x-cnd7780
                                                ""
                                                (letrec ((x7783
                                                          (letrec ((x7784
                                                                    (car l)))
                                                            (char->string
                                                             x7784)))
                                                         (x7781
                                                          (letrec ((x7782
                                                                    (cdr l)))
                                                            (list->string
                                                             x7782))))
                                                  (string-append
                                                   x7783
                                                   x7781))))))
                                    g7778)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7785
                                            (letrec ((x7788 (char? c1)))
                                              (assert x7788)))
                                           (g7786
                                            (letrec ((x7789 (char? c2)))
                                              (assert x7789)))
                                           (g7787
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7790
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7790))))
                                    g7787)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7791
                                            (letrec ((x7792
                                                      (letrec ((x7793
                                                                (letrec ((x7794
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7794))))
                                                        (cdr x7793))))
                                              (cdr x7792))))
                                    g7791)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7795
                                            (letrec ((x7798 (list? l)))
                                              (assert x7798)))
                                           (g7796
                                            (letrec ((x7799 (numer?)))
                                              (assert x7799)))
                                           (g7797
                                            (letrec ((x-cnd7800 (zero? k)))
                                              (if x-cnd7800
                                                x
                                                (letrec ((x7802 (cdr x))
                                                         (x7801 (- k 1)))
                                                  (list-tail x7802 x7801))))))
                                    g7797)))
                               (halt (lambda () (letrec ((g7803 '())) g7803)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7804
                                            (letrec ((x-cnd7805
                                                      (letrec ((x7806 #\a))
                                                        (char-ci>=? c x7806))))
                                              (if x-cnd7805
                                                (letrec ((x7807 #\z))
                                                  (char-ci<=? c x7807))
                                                #f))))
                                    g7804)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7808
                                            (letrec ((x7810 (number? x)))
                                              (assert x7810)))
                                           (g7809
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7811
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7812
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7812)))))
                                                g7811))))
                                    g7809)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7813
                                            (letrec ((val7146
                                                      (letrec ((x7814
                                                                (char->integer
                                                                 c)))
                                                        (= x7814 9))))
                                              (letrec ((g7815
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7816
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7816
                                                                       10))))
                                                            (letrec ((g7817
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7818
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7818
                                                                           32)))))
                                                              g7817)))))
                                                g7815))))
                                    g7813)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7819
                                            (letrec ((x7820
                                                      (letrec ((x7821 (car x)))
                                                        (cdr x7821))))
                                              (cdr x7820))))
                                    g7819)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7822
                                            (letrec ((x7824 (number? x)))
                                              (assert x7824)))
                                           (g7823 (> x 0)))
                                    g7823)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7825 #f)) g7825)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7826
                                            (letrec ((x7827 (cdr x)))
                                              (cdr x7827))))
                                    g7826)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7828
                                            (letrec ((x7830 (number? x)))
                                              (assert x7830)))
                                           (g7829
                                            (letrec ((x-cnd7831 (< x 0)))
                                              (if x-cnd7831
                                                (ceiling x)
                                                (floor x)))))
                                    g7829)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7832
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7833
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7835
                                                                              (null?
                                                                               a))
                                                                             (x7834
                                                                              (null?
                                                                               b)))
                                                                      (and x7835
                                                                           x7834))))
                                                            (letrec ((g7836
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7839
                                                                                            (string?
                                                                                             a))
                                                                                           (x7838
                                                                                            (string?
                                                                                             b))
                                                                                           (x7837
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7839
                                                                                         x7838
                                                                                         x7837))))
                                                                          (letrec ((g7840
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7848
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7847
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7844
                                                                                                          (letrec ((x7846
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7845
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7846
                                                                                                             x7845)))
                                                                                                         (x7841
                                                                                                          (letrec ((x7843
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7842
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7843
                                                                                                             x7842))))
                                                                                                  (and x7848
                                                                                                       x7847
                                                                                                       x7844
                                                                                                       x7841))))
                                                                                        (letrec ((g7849
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7868
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7867
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7850
                                                                                                              (letrec ((x7864
                                                                                                                        (letrec ((x7865
                                                                                                                                  (letrec ((x7866
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7866))))
                                                                                                                          (x7865)))
                                                                                                                       (x7851
                                                                                                                        (letrec ((x7862
                                                                                                                                  (letrec ((x7863
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7863
                                                                                                                                     n)))
                                                                                                                                 (x7852
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7853
                                                                                                                                                        (letrec ((x7860
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7854
                                                                                                                                                                  (letrec ((x7857
                                                                                                                                                                            (letrec ((x7859
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7858
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7859
                                                                                                                                                                               x7858)))
                                                                                                                                                                           (x7855
                                                                                                                                                                            (letrec ((x7856
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7856))))
                                                                                                                                                                    (and x7857
                                                                                                                                                                         x7855))))
                                                                                                                                                          (or x7860
                                                                                                                                                              x7854))))
                                                                                                                                                g7853))))
                                                                                                                                    (letrec ((g7861
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7861))))
                                                                                                                          (and x7862
                                                                                                                               x7852))))
                                                                                                                (let x7864 x7851))))
                                                                                                      (and x7868
                                                                                                           x7867
                                                                                                           x7850)))))
                                                                                          g7849)))))
                                                                            g7840)))))
                                                              g7836)))))
                                                g7833))))
                                    g7832)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7869
                                            (letrec ((x7870
                                                      (letrec ((x7871
                                                                (letrec ((x7872
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7872))))
                                                        (car x7871))))
                                              (cdr x7870))))
                                    g7869)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7873
                                            (letrec ((x7874
                                                      (letrec ((x7875
                                                                (letrec ((x7876
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7876))))
                                                        (car x7875))))
                                              (car x7874))))
                                    g7873)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7877 (eq? x y))) g7877)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7878
                                            (letrec ((x7880 (number? x)))
                                              (assert x7880)))
                                           (g7879
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7881
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7882
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7882)))))
                                                g7881))))
                                    g7879)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7883
                                            (letrec ((x7886
                                                      (string? filename)))
                                              (assert x7886)))
                                           (g7884
                                            (letrec ((x7887 (procedure? proc)))
                                              (assert x7887)))
                                           (g7885
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7888
                                                        (close-input-port
                                                         input-port))
                                                       (g7889 res))
                                                g7889))))
                                    g7885)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7890 (cons x '()))) g7890)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7891
                                            (letrec ((x7894 (char? c1)))
                                              (assert x7894)))
                                           (g7892
                                            (letrec ((x7895 (char? c2)))
                                              (assert x7895)))
                                           (g7893
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7896
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7896))))
                                    g7893)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7897
                                            (letrec ((x7898
                                                      (letrec ((x7899 (car x)))
                                                        (car x7899))))
                                              (cdr x7898))))
                                    g7897)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7900
                                            (letrec ((x7901
                                                      (letrec ((x7902
                                                                (letrec ((x7903
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7903))))
                                                        (car x7902))))
                                              (cdr x7901))))
                                    g7900)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7904
                                            (letrec ((x7905
                                                      (letrec ((x7906 (car x)))
                                                        (cdr x7906))))
                                              (car x7905))))
                                    g7904)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7907
                                            (letrec ((x7908
                                                      (letrec ((x7909 (cdr x)))
                                                        (car x7909))))
                                              (car x7908))))
                                    g7907)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7910
                                            (letrec ((x7913 (char? c1)))
                                              (assert x7913)))
                                           (g7911
                                            (letrec ((x7914 (char? c2)))
                                              (assert x7914)))
                                           (g7912
                                            (letrec ((x7915
                                                      (char-ci<=? c1 c2)))
                                              (not x7915))))
                                    g7912)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7916
                                            (letrec ((x7917
                                                      (letrec ((x7918
                                                                (letrec ((x7919
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7919))))
                                                        (car x7918))))
                                              (car x7917))))
                                    g7916)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7920
                                            (letrec ((x7922 (number? x)))
                                              (assert x7922)))
                                           (g7921 (< x 0)))
                                    g7921)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7923 (memq e l))) g7923)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7924
                                            (letrec ((x7925
                                                      (letrec ((x7926 (car x)))
                                                        (car x7926))))
                                              (car x7925))))
                                    g7924)))
                               (debug
                                (lambda (e) (letrec ((g7927 '())) g7927)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7928
                                            (letrec ((x7930 (list? l)))
                                              (assert x7930)))
                                           (g7929
                                            (letrec ((x-cnd7931 (null? l)))
                                              (if x-cnd7931
                                                '()
                                                (letrec ((x7934
                                                          (letrec ((x7935
                                                                    (cdr l)))
                                                            (reverse x7935)))
                                                         (x7932
                                                          (letrec ((x7933
                                                                    (car l)))
                                                            (list x7933))))
                                                  (append x7934 x7932))))))
                                    g7929)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7936
                                            (letrec ((x7937
                                                      (letrec ((x7938
                                                                (letrec ((x7939
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7939))))
                                                        (car x7938))))
                                              (car x7937))))
                                    g7936)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7940
                                            (letrec ((x7941
                                                      (letrec ((x7942
                                                                (letrec ((x7943
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7943))))
                                                        (cdr x7942))))
                                              (cdr x7941))))
                                    g7940)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7944
                                            (letrec ((x7946 (number? x)))
                                              (assert x7946)))
                                           (g7945
                                            (letrec ((x7947 (modulo x 2)))
                                              (= 1 x7947))))
                                    g7945)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7948
                                            (letrec ((x7949
                                                      (letrec ((x7950
                                                                (letrec ((x7951
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7951))))
                                                        (car x7950))))
                                              (car x7949))))
                                    g7948)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7952
                                            (letrec ((x7955 (procedure? proc)))
                                              (assert x7955)))
                                           (g7953
                                            (letrec ((x7956 (list? args)))
                                              (assert x7956)))
                                           (g7954
                                            (if cnd
                                              (letrec ((g7957 (proc))) g7957)
                                              (if cnd
                                                (letrec ((g7958
                                                          (letrec ((x7959
                                                                    (car
                                                                     args)))
                                                            (proc x7959))))
                                                  g7958)
                                                (if cnd
                                                  (letrec ((g7960
                                                            (letrec ((x7962
                                                                      (car
                                                                       args))
                                                                     (x7961
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7962
                                                               x7961))))
                                                    g7960)
                                                  (if cnd
                                                    (letrec ((g7963
                                                              (letrec ((x7966
                                                                        (car
                                                                         args))
                                                                       (x7965
                                                                        (cadr
                                                                         args))
                                                                       (x7964
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7966
                                                                 x7965
                                                                 x7964))))
                                                      g7963)
                                                    (if cnd
                                                      (letrec ((g7967
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
                                                                           args)))
                                                                  (proc
                                                                   x7971
                                                                   x7970
                                                                   x7969
                                                                   x7968))))
                                                        g7967)
                                                      (if cnd
                                                        (letrec ((g7972
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
                                                                               x7974))))
                                                                    (proc
                                                                     x7978
                                                                     x7977
                                                                     x7976
                                                                     x7975
                                                                     x7973))))
                                                          g7972)
                                                        (if cnd
                                                          (letrec ((g7979
                                                                    (letrec ((x7987
                                                                              (car
                                                                               args))
                                                                             (x7986
                                                                              (cadr
                                                                               args))
                                                                             (x7985
                                                                              (caddr
                                                                               args))
                                                                             (x7984
                                                                              (cadddr
                                                                               args))
                                                                             (x7982
                                                                              (letrec ((x7983
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7983)))
                                                                             (x7980
                                                                              (letrec ((x7981
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7981))))
                                                                      (proc
                                                                       x7987
                                                                       x7986
                                                                       x7985
                                                                       x7984
                                                                       x7982
                                                                       x7980))))
                                                            g7979)
                                                          (if cnd
                                                            (letrec ((g7988
                                                                      (letrec ((x7998
                                                                                (car
                                                                                 args))
                                                                               (x7997
                                                                                (cadr
                                                                                 args))
                                                                               (x7996
                                                                                (caddr
                                                                                 args))
                                                                               (x7995
                                                                                (cadddr
                                                                                 args))
                                                                               (x7993
                                                                                (letrec ((x7994
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7994)))
                                                                               (x7991
                                                                                (letrec ((x7992
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7992)))
                                                                               (x7989
                                                                                (letrec ((x7990
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7990))))
                                                                        (proc
                                                                         x7998
                                                                         x7997
                                                                         x7996
                                                                         x7995
                                                                         x7993
                                                                         x7991
                                                                         x7989))))
                                                              g7988)
                                                            (letrec ((g7999
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7999)))))))))))
                                    g7954)))
                               (member
                                (lambda (e l)
                                  (letrec ((g8000
                                            (letrec ((x8002 (list? l)))
                                              (assert x8002)))
                                           (g8001
                                            (letrec ((x-cnd8003 (null? l)))
                                              (if x-cnd8003
                                                #f
                                                (letrec ((x-cnd8004
                                                          (letrec ((x8005
                                                                    (car l)))
                                                            (equal? x8005 e))))
                                                  (if x-cnd8004
                                                    l
                                                    (letrec ((x8006 (cdr l)))
                                                      (member e x8006))))))))
                                    g8001)))
                               (call-with-current-continuation call/cc)
                               (cddddr
                                (lambda (x)
                                  (letrec ((g8007
                                            (letrec ((x8008
                                                      (letrec ((x8009
                                                                (letrec ((x8010
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8010))))
                                                        (cdr x8009))))
                                              (cdr x8008))))
                                    g8007)))
                               (cadddr
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
                                              (car x8012))))
                                    g8011)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8015 (random 42))) g8015)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8016
                                            (letrec ((x8018 (number? x)))
                                              (assert x8018)))
                                           (g8017 (= x 0)))
                                    g8017)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8019
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8020
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8020))))
                                    g8019)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8021
                                            (letrec ((x8022 (cdr x)))
                                              (car x8022))))
                                    g8021)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8023
                                            (letrec ((val7156
                                                      (letrec ((x8026
                                                                (pair? l))
                                                               (x8024
                                                                (letrec ((x8025
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8025))))
                                                        (and x8026 x8024))))
                                              (letrec ((g8027
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8027))))
                                    g8023)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8028
                                            (letrec ((x8029
                                                      (letrec ((x8030
                                                                (letrec ((x8031
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8031))))
                                                        (cdr x8030))))
                                              (cdr x8029))))
                                    g8028)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8032
                                            (letrec ((x-cnd8033
                                                      (letrec ((x8034 #\0))
                                                        (char<=? x8034 c))))
                                              (if x-cnd8033
                                                (letrec ((x8035 #\9))
                                                  (char<=? c x8035))
                                                #f))))
                                    g8032)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8036
                                            (letrec ((x8038 (list? l)))
                                              (assert x8038)))
                                           (g8037
                                            (letrec ((x-cnd8039 (null? l)))
                                              (if x-cnd8039
                                                #f
                                                (letrec ((x-cnd8040
                                                          (letrec ((x8041
                                                                    (caar l)))
                                                            (eqv? x8041 k))))
                                                  (if x-cnd8040
                                                    (car l)
                                                    (letrec ((x8042 (cdr l)))
                                                      (assq k x8042))))))))
                                    g8037)))
                               (not
                                (lambda (x)
                                  (letrec ((g8043 (if x #f #t))) g8043)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8044 (append l1 l2))) g8044)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8045
                                            (letrec ((x8047 (list? l)))
                                              (assert x8047)))
                                           (g8046
                                            (letrec ((x-cnd8048 (null? l)))
                                              (if x-cnd8048
                                                #f
                                                (letrec ((x-cnd8049
                                                          (letrec ((x8050
                                                                    (car l)))
                                                            (eq? x8050 e))))
                                                  (if x-cnd8049
                                                    l
                                                    (letrec ((x8051 (cdr l)))
                                                      (memq e x8051))))))))
                                    g8046)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8052
                                            (letrec ((x8053
                                                      (letrec ((x8054
                                                                (letrec ((x8055
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8055))))
                                                        (cdr x8054))))
                                              (car x8053))))
                                    g8052)))
                               (length
                                (lambda (l)
                                  (letrec ((g8056
                                            (letrec ((x8058 (list? l)))
                                              (assert x8058)))
                                           (g8057
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8059
                                                                  (letrec ((x-cnd8060
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8060
                                                                      0
                                                                      (letrec ((x8061
                                                                                (letrec ((x8062
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8062))))
                                                                        (+
                                                                         1
                                                                         x8061))))))
                                                          g8059))))
                                              (letrec ((g8063 (rec l)))
                                                g8063))))
                                    g8057)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8064
                                            (letrec ((x8067 (char? c1)))
                                              (assert x8067)))
                                           (g8065
                                            (letrec ((x8068 (char? c2)))
                                              (assert x8068)))
                                           (g8066
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8069
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8069))))
                                    g8066)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8070
                                            (letrec ((x8071 (string<=? s1 s2)))
                                              (not x8071))))
                                    g8070)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8072
                                            (letrec ((x8073
                                                      (letrec ((x8074 (cdr x)))
                                                        (car x8074))))
                                              (cdr x8073))))
                                    g8072)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8075
                                            (letrec ((x8077 (list? l)))
                                              (assert x8077)))
                                           (g8076
                                            (letrec ((x-cnd8078 (null? l)))
                                              (if x-cnd8078
                                                #f
                                                (letrec ((x-cnd8079
                                                          (letrec ((x8080
                                                                    (caar l)))
                                                            (equal? x8080 k))))
                                                  (if x-cnd8079
                                                    (car l)
                                                    (letrec ((x8081 (cdr l)))
                                                      (assoc k x8081))))))))
                                    g8076)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8082
                                            (letrec ((x8083 (car x)))
                                              (car x8083))))
                                    g8082)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8084
                                            (letrec ((x8087 (char? c1)))
                                              (assert x8087)))
                                           (g8085
                                            (letrec ((x8088 (char? c2)))
                                              (assert x8088)))
                                           (g8086
                                            (letrec ((x8089 (char<=? c1 c2)))
                                              (not x8089))))
                                    g8086)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8090
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8091
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8091))))
                                    g8090)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8092
                                            (letrec ((x8095 (procedure? f)))
                                              (assert x8095)))
                                           (g8093
                                            (letrec ((x8096 (list? l)))
                                              (assert x8096)))
                                           (g8094
                                            (letrec ((x-cnd8097 (null? l)))
                                              (if x-cnd8097
                                                #t
                                                (letrec ((x-cnd8098 (pair? l)))
                                                  (if x-cnd8098
                                                    (letrec ((g8099
                                                              (letrec ((x8101
                                                                        (car
                                                                         l)))
                                                                (f x8101)))
                                                             (g8100
                                                              (letrec ((x8102
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8102))))
                                                      g8100)
                                                    '()))))))
                                    g8094)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8103
                                            (letrec ((x8105 (number? x)))
                                              (assert x8105)))
                                           (g8104
                                            (letrec ((x-cnd8106 (< x 0)))
                                              (if x-cnd8106 (- 0 x) x))))
                                    g8104)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8107
                                            (letrec ((x8110 (char? c1)))
                                              (assert x8110)))
                                           (g8108
                                            (letrec ((x8111 (char? c2)))
                                              (assert x8111)))
                                           (g8109
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8112
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8112))))
                                    g8109)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8113
                                            (letrec ((x8114
                                                      (letrec ((x8115
                                                                (letrec ((x8116
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8116))))
                                                        (cdr x8115))))
                                              (car x8114))))
                                    g8113)))
                               (newline
                                (lambda () (letrec ((g8117 #f)) g8117)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8118
                                            (letrec ((x8120
                                                      (letrec ((x8121 (* m n)))
                                                        (abs x8121)))
                                                     (x8119 (gcd m n)))
                                              (/ x8120 x8119))))
                                    g8118)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8122
                                            (letrec ((x8124 (number? x)))
                                              (assert x8124)))
                                           (g8123
                                            (letrec ((x8125 (<= x y)))
                                              (not x8125))))
                                    g8123)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8126
                                            (letrec ((x8130 (list? l)))
                                              (assert x8130)))
                                           (g8127
                                            (letrec ((x8131 (number? index)))
                                              (assert x8131)))
                                           (g8128
                                            (letrec ((x8132
                                                      (letrec ((x8133
                                                                (length l)))
                                                        (< index x8133))))
                                              (assert x8132)))
                                           (g8129
                                            (letrec ((x-cnd8134 (= index 0)))
                                              (if x-cnd8134
                                                (car l)
                                                (letrec ((x8136 (cdr l))
                                                         (x8135 (- index 1)))
                                                  (list-ref x8136 x8135))))))
                                    g8129)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8137
                                            (letrec ((x-cnd8138 (= b 0)))
                                              (if x-cnd8138
                                                a
                                                (letrec ((x8139 (modulo a b)))
                                                  (gcd b x8139))))))
                                    g8137))))
                        (letrec ((g8140
                                  (letrec ((g8141
                                            (letrec ((f
                                                      (lambda (g x)
                                                        (letrec ((g8142
                                                                  (letrec ((x-cnd8143
                                                                            (>=
                                                                             x
                                                                             0)))
                                                                    (if x-cnd8143
                                                                      (g x)
                                                                      (letrec ((x8145
                                                                                (letrec ((x8147
                                                                                          (x))
                                                                                         (x8146
                                                                                          (f
                                                                                           g
                                                                                           x)))
                                                                                  (λ x8147
                                                                                    x8146)))
                                                                               (x8144
                                                                                (g
                                                                                 x)))
                                                                        (f
                                                                         x8145
                                                                         x8144))))))
                                                          g8142)))
                                                     (main
                                                      (lambda (n)
                                                        (letrec ((g8148
                                                                  (f add1 n)))
                                                          g8148))))
                                              (letrec ((g8149
                                                        (letrec ((g8150
                                                                  (letrec ((g8151
                                                                            (letrec ((x8155
                                                                                      ((lambda (j7231
                                                                                                k7232
                                                                                                f7233)
                                                                                         (lambda (g7229
                                                                                                  g7230)
                                                                                           (integer?
                                                                                            j7231
                                                                                            k7232
                                                                                            (f7233
                                                                                             ((lambda (j7235
                                                                                                       k7236
                                                                                                       f7237)
                                                                                                (lambda (g7234)
                                                                                                  (integer?
                                                                                                   j7235
                                                                                                   k7236
                                                                                                   (f7237
                                                                                                    (integer?
                                                                                                     j7235
                                                                                                     k7236
                                                                                                     g7234)))))
                                                                                              j7231
                                                                                              k7232
                                                                                              g7229)
                                                                                             (integer?
                                                                                              j7231
                                                                                              k7232
                                                                                              g7230)))))
                                                                                       'module
                                                                                       'importer
                                                                                       f))
                                                                                     (x8154
                                                                                      (input))
                                                                                     (x8153
                                                                                      (input)))
                                                                              (x8155
                                                                               x8154
                                                                               x8153)))
                                                                           (g8152
                                                                            (letrec ((x8157
                                                                                      ((lambda (j7239
                                                                                                k7240
                                                                                                f7241)
                                                                                         (lambda (g7238)
                                                                                           ((and/c
                                                                                             integer?
                                                                                             (>=/c
                                                                                              0))
                                                                                            j7239
                                                                                            k7240
                                                                                            (f7241
                                                                                             (integer?
                                                                                              j7239
                                                                                              k7240
                                                                                              g7238)))))
                                                                                       'module
                                                                                       'importer
                                                                                       main))
                                                                                     (x8156
                                                                                      (input)))
                                                                              (x8157
                                                                               x8156))))
                                                                    g8152)))
                                                          g8150)))
                                                g8149))))
                                    g8141)))
                          g8140))))
              g7253)))
    g7252))
