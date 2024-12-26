(letrec ((any? (lambda (v) (letrec ((g7238 #t)) g7238)))
         (meta (lambda (v) (letrec ((g7239 v)) g7239)))
         (member
          (lambda (v lst)
            (letrec ((g7240
                      (letrec ((g7241
                                (letrec ((x-e7242 lst))
                                  (match
                                   x-e7242
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7243 (eq? v v1)))
                                       (if x-cnd7243 #t (member v vs)))))))))
                        g7241)))
              g7240)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7244 (lambda (v) (letrec ((g7245 v)) g7245)))) g7244)))
         (nonzero?
          (lambda (v)
            (letrec ((g7246 (letrec ((x7247 (= v 0))) (not x7247)))) g7246))))
  (letrec ((g7248
            (letrec ((g7249
                      (letrec ((real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7250
                                            (letrec ((x-cnd7251 (real? g7162)))
                                              (if x-cnd7251
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7250)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7252
                                            (letrec ((x-cnd7253
                                                      (boolean? g7165)))
                                              (if x-cnd7253
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7252)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7254
                                            (letrec ((x-cnd7255
                                                      (number? g7168)))
                                              (if x-cnd7255
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7254)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7256
                                            (letrec ((x-cnd7257
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7257
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7256)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7258
                                            (letrec ((x-cnd7259
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7259
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7258)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7260
                                            (letrec ((x-cnd7261 (pair? g7177)))
                                              (if x-cnd7261
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7260)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7262
                                            (letrec ((x-cnd7263 (pair? g7180)))
                                              (if x-cnd7263
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7262)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7264
                                            (letrec ((x-cnd7265
                                                      (integer? g7183)))
                                              (if x-cnd7265
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7264)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7266
                                            (lambda (k j v)
                                              (letrec ((g7267
                                                        (letrec ((x-cnd7268
                                                                  (c1 k j v)))
                                                          (if x-cnd7268
                                                            (c2 k j v)
                                                            #f))))
                                                g7267))))
                                    g7266)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7269
                                            (lambda (k j v)
                                              (letrec ((g7270
                                                        (letrec ((x-cnd7271
                                                                  (null? v)))
                                                          (if x-cnd7271
                                                            '()
                                                            (letrec ((x7275
                                                                      (letrec ((x7276
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7276)))
                                                                     (x7272
                                                                      (letrec ((x7274
                                                                                (list-of
                                                                                 contract))
                                                                               (x7273
                                                                                (cdr
                                                                                 v)))
                                                                        (x7274
                                                                         k
                                                                         j
                                                                         x7273))))
                                                              (cons
                                                               x7275
                                                               x7272))))))
                                                g7270))))
                                    g7269)))
                               (any? (lambda (v) (letrec ((g7277 #t)) g7277)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7278
                                            (letrec ((x7279 (= v 0)))
                                              (not x7279))))
                                    g7278)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7280
                                            (letrec ((x-cnd7281
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7281
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7280)))
                               (meta (lambda (v) (letrec ((g7282 v)) g7282)))
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
                                (lambda (cnd) (letrec ((g7283 #t)) g7283)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7284
                                            (letrec ((x7285
                                                      (letrec ((x7286 (cdr x)))
                                                        (cdr x7286))))
                                              (cdr x7285))))
                                    g7284)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7287
                                            (letrec ((x7290 (procedure? f)))
                                              (assert x7290)))
                                           (g7288
                                            (letrec ((x7291 (list? l)))
                                              (assert x7291)))
                                           (g7289
                                            (letrec ((x-cnd7292 (null? l)))
                                              (if x-cnd7292
                                                '()
                                                (letrec ((x7295
                                                          (letrec ((x7296
                                                                    (car l)))
                                                            (f x7296)))
                                                         (x7293
                                                          (letrec ((x7294
                                                                    (cdr l)))
                                                            (map f x7294))))
                                                  (cons x7295 x7293))))))
                                    g7289)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7297
                                            (letrec ((x7298 (car x)))
                                              (cdr x7298))))
                                    g7297)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7299
                                            (letrec ((x7300
                                                      (letrec ((x7301
                                                                (letrec ((x7302
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7302))))
                                                        (cdr x7301))))
                                              (car x7300))))
                                    g7299)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7303
                                            (letrec ((x7304
                                                      (letrec ((x7305
                                                                (letrec ((x7306
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7306))))
                                                        (car x7305))))
                                              (cdr x7304))))
                                    g7303)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7307
                                            (letrec ((x7310
                                                      (string? filename)))
                                              (assert x7310)))
                                           (g7308
                                            (letrec ((x7311 (procedure? proc)))
                                              (assert x7311)))
                                           (g7309
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7312
                                                        (close-output-port
                                                         output-port))
                                                       (g7313 res))
                                                g7313))))
                                    g7309)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7314
                                            (letrec ((x7315
                                                      (letrec ((x7316 (cdr x)))
                                                        (cdr x7316))))
                                              (car x7315))))
                                    g7314)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7317
                                            (letrec ((x7318
                                                      (letrec ((x7319
                                                                (letrec ((x7320
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7320))))
                                                        (car x7319))))
                                              (cdr x7318))))
                                    g7317)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7321
                                            (letrec ((x7323 (list? l)))
                                              (assert x7323)))
                                           (g7322
                                            (letrec ((x-cnd7324 (null? l)))
                                              (if x-cnd7324
                                                #f
                                                (letrec ((x-cnd7325
                                                          (letrec ((x7326
                                                                    (caar l)))
                                                            (eq? x7326 k))))
                                                  (if x-cnd7325
                                                    (car l)
                                                    (letrec ((x7327 (cdr l)))
                                                      (assq k x7327))))))))
                                    g7322)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7328
                                            (letrec ((x7329 (modulo x 2)))
                                              (= 0 x7329))))
                                    g7328)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7330
                                            (letrec ((x7332 (list? l)))
                                              (assert x7332)))
                                           (g7331
                                            (letrec ((x-cnd7333 (null? l)))
                                              (if x-cnd7333
                                                ""
                                                (letrec ((x7336
                                                          (letrec ((x7337
                                                                    (car l)))
                                                            (char->string
                                                             x7337)))
                                                         (x7334
                                                          (letrec ((x7335
                                                                    (cdr l)))
                                                            (list->string
                                                             x7335))))
                                                  (string-append
                                                   x7336
                                                   x7334))))))
                                    g7331)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7338
                                            (letrec ((x7341 (char? c1)))
                                              (assert x7341)))
                                           (g7339
                                            (letrec ((x7342 (char? c2)))
                                              (assert x7342)))
                                           (g7340
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7343
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7343))))
                                    g7340)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7344
                                            (letrec ((x7345
                                                      (letrec ((x7346
                                                                (letrec ((x7347
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7347))))
                                                        (cdr x7346))))
                                              (cdr x7345))))
                                    g7344)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7348
                                            (letrec ((x7351 (list? l)))
                                              (assert x7351)))
                                           (g7349
                                            (letrec ((x7352 (numer?)))
                                              (assert x7352)))
                                           (g7350
                                            (letrec ((x-cnd7353 (zero? k)))
                                              (if x-cnd7353
                                                x
                                                (letrec ((x7355 (cdr x))
                                                         (x7354 (- k 1)))
                                                  (list-tail x7355 x7354))))))
                                    g7350)))
                               (halt (lambda () (letrec ((g7356 '())) g7356)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7357
                                            (letrec ((x-cnd7358
                                                      (letrec ((x7359 #\a))
                                                        (char-ci>=? c x7359))))
                                              (if x-cnd7358
                                                (letrec ((x7360 #\z))
                                                  (char-ci<=? c x7360))
                                                #f))))
                                    g7357)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7361
                                            (letrec ((x7363 (number? x)))
                                              (assert x7363)))
                                           (g7362
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7364
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7365
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7365)))))
                                                g7364))))
                                    g7362)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7366
                                            (letrec ((val7146
                                                      (letrec ((x7367
                                                                (char->integer
                                                                 c)))
                                                        (= x7367 9))))
                                              (letrec ((g7368
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7369
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7369
                                                                       10))))
                                                            (letrec ((g7370
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7371
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7371
                                                                           32)))))
                                                              g7370)))))
                                                g7368))))
                                    g7366)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7372
                                            (letrec ((x7373
                                                      (letrec ((x7374 (car x)))
                                                        (cdr x7374))))
                                              (cdr x7373))))
                                    g7372)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7375
                                            (letrec ((x7377 (number? x)))
                                              (assert x7377)))
                                           (g7376 (> x 0)))
                                    g7376)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7378 #f)) g7378)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7379
                                            (letrec ((x7380 (cdr x)))
                                              (cdr x7380))))
                                    g7379)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7381
                                            (letrec ((x7383 (number? x)))
                                              (assert x7383)))
                                           (g7382
                                            (letrec ((x-cnd7384 (< x 0)))
                                              (if x-cnd7384
                                                (ceiling x)
                                                (floor x)))))
                                    g7382)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7385
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7386
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7388
                                                                              (null?
                                                                               a))
                                                                             (x7387
                                                                              (null?
                                                                               b)))
                                                                      (and x7388
                                                                           x7387))))
                                                            (letrec ((g7389
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7392
                                                                                            (string?
                                                                                             a))
                                                                                           (x7391
                                                                                            (string?
                                                                                             b))
                                                                                           (x7390
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7392
                                                                                         x7391
                                                                                         x7390))))
                                                                          (letrec ((g7393
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7401
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7400
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7397
                                                                                                          (letrec ((x7399
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7398
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7399
                                                                                                             x7398)))
                                                                                                         (x7394
                                                                                                          (letrec ((x7396
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7395
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7396
                                                                                                             x7395))))
                                                                                                  (and x7401
                                                                                                       x7400
                                                                                                       x7397
                                                                                                       x7394))))
                                                                                        (letrec ((g7402
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7421
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7420
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7403
                                                                                                              (letrec ((x7417
                                                                                                                        (letrec ((x7418
                                                                                                                                  (letrec ((x7419
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7419))))
                                                                                                                          (x7418)))
                                                                                                                       (x7404
                                                                                                                        (letrec ((x7415
                                                                                                                                  (letrec ((x7416
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7416
                                                                                                                                     n)))
                                                                                                                                 (x7405
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7406
                                                                                                                                                        (letrec ((x7413
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7407
                                                                                                                                                                  (letrec ((x7410
                                                                                                                                                                            (letrec ((x7412
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7411
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7412
                                                                                                                                                                               x7411)))
                                                                                                                                                                           (x7408
                                                                                                                                                                            (letrec ((x7409
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7409))))
                                                                                                                                                                    (and x7410
                                                                                                                                                                         x7408))))
                                                                                                                                                          (or x7413
                                                                                                                                                              x7407))))
                                                                                                                                                g7406))))
                                                                                                                                    (letrec ((g7414
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7414))))
                                                                                                                          (and x7415
                                                                                                                               x7405))))
                                                                                                                (let x7417 x7404))))
                                                                                                      (and x7421
                                                                                                           x7420
                                                                                                           x7403)))))
                                                                                          g7402)))))
                                                                            g7393)))))
                                                              g7389)))))
                                                g7386))))
                                    g7385)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7422
                                            (letrec ((x7423
                                                      (letrec ((x7424
                                                                (letrec ((x7425
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7425))))
                                                        (car x7424))))
                                              (cdr x7423))))
                                    g7422)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7426
                                            (letrec ((x7427
                                                      (letrec ((x7428
                                                                (letrec ((x7429
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7429))))
                                                        (car x7428))))
                                              (car x7427))))
                                    g7426)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7430 (eq? x y))) g7430)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7431
                                            (letrec ((x7433 (number? x)))
                                              (assert x7433)))
                                           (g7432
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7434
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7435
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7435)))))
                                                g7434))))
                                    g7432)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7436
                                            (letrec ((x7439
                                                      (string? filename)))
                                              (assert x7439)))
                                           (g7437
                                            (letrec ((x7440 (procedure? proc)))
                                              (assert x7440)))
                                           (g7438
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7441
                                                        (close-input-port
                                                         input-port))
                                                       (g7442 res))
                                                g7442))))
                                    g7438)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7443 (cons x '()))) g7443)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7444
                                            (letrec ((x7447 (char? c1)))
                                              (assert x7447)))
                                           (g7445
                                            (letrec ((x7448 (char? c2)))
                                              (assert x7448)))
                                           (g7446
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7449
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7449))))
                                    g7446)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7450
                                            (letrec ((x7451
                                                      (letrec ((x7452 (car x)))
                                                        (car x7452))))
                                              (cdr x7451))))
                                    g7450)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7453
                                            (letrec ((x7454
                                                      (letrec ((x7455
                                                                (letrec ((x7456
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7456))))
                                                        (car x7455))))
                                              (cdr x7454))))
                                    g7453)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7457
                                            (letrec ((x7458
                                                      (letrec ((x7459 (car x)))
                                                        (cdr x7459))))
                                              (car x7458))))
                                    g7457)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7460
                                            (letrec ((x7461
                                                      (letrec ((x7462 (cdr x)))
                                                        (car x7462))))
                                              (car x7461))))
                                    g7460)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7463
                                            (letrec ((x7466 (char? c1)))
                                              (assert x7466)))
                                           (g7464
                                            (letrec ((x7467 (char? c2)))
                                              (assert x7467)))
                                           (g7465
                                            (letrec ((x7468
                                                      (char-ci<=? c1 c2)))
                                              (not x7468))))
                                    g7465)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7469
                                            (letrec ((x7470
                                                      (letrec ((x7471
                                                                (letrec ((x7472
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7472))))
                                                        (car x7471))))
                                              (car x7470))))
                                    g7469)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7473
                                            (letrec ((x7475 (number? x)))
                                              (assert x7475)))
                                           (g7474 (< x 0)))
                                    g7474)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7476 (memq e l))) g7476)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7477
                                            (letrec ((x7478
                                                      (letrec ((x7479 (car x)))
                                                        (car x7479))))
                                              (car x7478))))
                                    g7477)))
                               (debug
                                (lambda (e) (letrec ((g7480 '())) g7480)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7481
                                            (letrec ((x7483 (list? l)))
                                              (assert x7483)))
                                           (g7482
                                            (letrec ((x-cnd7484 (null? l)))
                                              (if x-cnd7484
                                                '()
                                                (letrec ((x7487
                                                          (letrec ((x7488
                                                                    (cdr l)))
                                                            (reverse x7488)))
                                                         (x7485
                                                          (letrec ((x7486
                                                                    (car l)))
                                                            (list x7486))))
                                                  (append x7487 x7485))))))
                                    g7482)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7489
                                            (letrec ((x7490
                                                      (letrec ((x7491
                                                                (letrec ((x7492
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7492))))
                                                        (car x7491))))
                                              (car x7490))))
                                    g7489)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7493
                                            (letrec ((x7494
                                                      (letrec ((x7495
                                                                (letrec ((x7496
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7496))))
                                                        (cdr x7495))))
                                              (cdr x7494))))
                                    g7493)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7497
                                            (letrec ((x7499 (number? x)))
                                              (assert x7499)))
                                           (g7498
                                            (letrec ((x7500 (modulo x 2)))
                                              (= 1 x7500))))
                                    g7498)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7501
                                            (letrec ((x7502
                                                      (letrec ((x7503
                                                                (letrec ((x7504
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7504))))
                                                        (car x7503))))
                                              (car x7502))))
                                    g7501)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7505
                                            (letrec ((x7508 (procedure? proc)))
                                              (assert x7508)))
                                           (g7506
                                            (letrec ((x7509 (list? args)))
                                              (assert x7509)))
                                           (g7507
                                            (if cnd
                                              (letrec ((g7510 (proc))) g7510)
                                              (if cnd
                                                (letrec ((g7511
                                                          (letrec ((x7512
                                                                    (car
                                                                     args)))
                                                            (proc x7512))))
                                                  g7511)
                                                (if cnd
                                                  (letrec ((g7513
                                                            (letrec ((x7515
                                                                      (car
                                                                       args))
                                                                     (x7514
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7515
                                                               x7514))))
                                                    g7513)
                                                  (if cnd
                                                    (letrec ((g7516
                                                              (letrec ((x7519
                                                                        (car
                                                                         args))
                                                                       (x7518
                                                                        (cadr
                                                                         args))
                                                                       (x7517
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7519
                                                                 x7518
                                                                 x7517))))
                                                      g7516)
                                                    (if cnd
                                                      (letrec ((g7520
                                                                (letrec ((x7524
                                                                          (car
                                                                           args))
                                                                         (x7523
                                                                          (cadr
                                                                           args))
                                                                         (x7522
                                                                          (caddr
                                                                           args))
                                                                         (x7521
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7524
                                                                   x7523
                                                                   x7522
                                                                   x7521))))
                                                        g7520)
                                                      (if cnd
                                                        (letrec ((g7525
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
                                                                               x7527))))
                                                                    (proc
                                                                     x7531
                                                                     x7530
                                                                     x7529
                                                                     x7528
                                                                     x7526))))
                                                          g7525)
                                                        (if cnd
                                                          (letrec ((g7532
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
                                                                                 x7536)))
                                                                             (x7533
                                                                              (letrec ((x7534
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7534))))
                                                                      (proc
                                                                       x7540
                                                                       x7539
                                                                       x7538
                                                                       x7537
                                                                       x7535
                                                                       x7533))))
                                                            g7532)
                                                          (if cnd
                                                            (letrec ((g7541
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
                                                                                   x7545)))
                                                                               (x7542
                                                                                (letrec ((x7543
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7543))))
                                                                        (proc
                                                                         x7551
                                                                         x7550
                                                                         x7549
                                                                         x7548
                                                                         x7546
                                                                         x7544
                                                                         x7542))))
                                                              g7541)
                                                            (letrec ((g7552
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7552)))))))))))
                                    g7507)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7553
                                            (letrec ((x7555 (list? l)))
                                              (assert x7555)))
                                           (g7554
                                            (letrec ((x-cnd7556 (null? l)))
                                              (if x-cnd7556
                                                #f
                                                (letrec ((x-cnd7557
                                                          (letrec ((x7558
                                                                    (car l)))
                                                            (equal? x7558 e))))
                                                  (if x-cnd7557
                                                    l
                                                    (letrec ((x7559 (cdr l)))
                                                      (member e x7559))))))))
                                    g7554)))
                               (call-with-current-continuation call/cc)
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7560
                                            (letrec ((x7561
                                                      (letrec ((x7562
                                                                (letrec ((x7563
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7563))))
                                                        (cdr x7562))))
                                              (cdr x7561))))
                                    g7560)))
                               (cadddr
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
                                              (car x7565))))
                                    g7564)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7568 (random 42))) g7568)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7569
                                            (letrec ((x7571 (number? x)))
                                              (assert x7571)))
                                           (g7570 (= x 0)))
                                    g7570)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7572
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7573
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7573))))
                                    g7572)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7574
                                            (letrec ((x7575 (cdr x)))
                                              (car x7575))))
                                    g7574)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7576
                                            (letrec ((val7156
                                                      (letrec ((x7579
                                                                (pair? l))
                                                               (x7577
                                                                (letrec ((x7578
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7578))))
                                                        (and x7579 x7577))))
                                              (letrec ((g7580
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7580))))
                                    g7576)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7581
                                            (letrec ((x7582
                                                      (letrec ((x7583
                                                                (letrec ((x7584
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7584))))
                                                        (cdr x7583))))
                                              (cdr x7582))))
                                    g7581)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7585
                                            (letrec ((x-cnd7586
                                                      (letrec ((x7587 #\0))
                                                        (char<=? x7587 c))))
                                              (if x-cnd7586
                                                (letrec ((x7588 #\9))
                                                  (char<=? c x7588))
                                                #f))))
                                    g7585)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7589
                                            (letrec ((x7591 (list? l)))
                                              (assert x7591)))
                                           (g7590
                                            (letrec ((x-cnd7592 (null? l)))
                                              (if x-cnd7592
                                                #f
                                                (letrec ((x-cnd7593
                                                          (letrec ((x7594
                                                                    (caar l)))
                                                            (eqv? x7594 k))))
                                                  (if x-cnd7593
                                                    (car l)
                                                    (letrec ((x7595 (cdr l)))
                                                      (assq k x7595))))))))
                                    g7590)))
                               (not
                                (lambda (x)
                                  (letrec ((g7596 (if x #f #t))) g7596)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7597 (append l1 l2))) g7597)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7598
                                            (letrec ((x7600 (list? l)))
                                              (assert x7600)))
                                           (g7599
                                            (letrec ((x-cnd7601 (null? l)))
                                              (if x-cnd7601
                                                #f
                                                (letrec ((x-cnd7602
                                                          (letrec ((x7603
                                                                    (car l)))
                                                            (eq? x7603 e))))
                                                  (if x-cnd7602
                                                    l
                                                    (letrec ((x7604 (cdr l)))
                                                      (memq e x7604))))))))
                                    g7599)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7605
                                            (letrec ((x7606
                                                      (letrec ((x7607
                                                                (letrec ((x7608
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7608))))
                                                        (cdr x7607))))
                                              (car x7606))))
                                    g7605)))
                               (length
                                (lambda (l)
                                  (letrec ((g7609
                                            (letrec ((x7611 (list? l)))
                                              (assert x7611)))
                                           (g7610
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7612
                                                                  (letrec ((x-cnd7613
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7613
                                                                      0
                                                                      (letrec ((x7614
                                                                                (letrec ((x7615
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7615))))
                                                                        (+
                                                                         1
                                                                         x7614))))))
                                                          g7612))))
                                              (letrec ((g7616 (rec l)))
                                                g7616))))
                                    g7610)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7617
                                            (letrec ((x7620 (char? c1)))
                                              (assert x7620)))
                                           (g7618
                                            (letrec ((x7621 (char? c2)))
                                              (assert x7621)))
                                           (g7619
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7622
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7622))))
                                    g7619)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7623
                                            (letrec ((x7624 (string<=? s1 s2)))
                                              (not x7624))))
                                    g7623)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7625
                                            (letrec ((x7626
                                                      (letrec ((x7627 (cdr x)))
                                                        (car x7627))))
                                              (cdr x7626))))
                                    g7625)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7628
                                            (letrec ((x7630 (list? l)))
                                              (assert x7630)))
                                           (g7629
                                            (letrec ((x-cnd7631 (null? l)))
                                              (if x-cnd7631
                                                #f
                                                (letrec ((x-cnd7632
                                                          (letrec ((x7633
                                                                    (caar l)))
                                                            (equal? x7633 k))))
                                                  (if x-cnd7632
                                                    (car l)
                                                    (letrec ((x7634 (cdr l)))
                                                      (assoc k x7634))))))))
                                    g7629)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7635
                                            (letrec ((x7636 (car x)))
                                              (car x7636))))
                                    g7635)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7637
                                            (letrec ((x7640 (char? c1)))
                                              (assert x7640)))
                                           (g7638
                                            (letrec ((x7641 (char? c2)))
                                              (assert x7641)))
                                           (g7639
                                            (letrec ((x7642 (char<=? c1 c2)))
                                              (not x7642))))
                                    g7639)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7643
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7644
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7644))))
                                    g7643)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7645
                                            (letrec ((x7648 (procedure? f)))
                                              (assert x7648)))
                                           (g7646
                                            (letrec ((x7649 (list? l)))
                                              (assert x7649)))
                                           (g7647
                                            (letrec ((x-cnd7650 (null? l)))
                                              (if x-cnd7650
                                                #t
                                                (letrec ((x-cnd7651 (pair? l)))
                                                  (if x-cnd7651
                                                    (letrec ((g7652
                                                              (letrec ((x7654
                                                                        (car
                                                                         l)))
                                                                (f x7654)))
                                                             (g7653
                                                              (letrec ((x7655
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7655))))
                                                      g7653)
                                                    '()))))))
                                    g7647)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7656
                                            (letrec ((x7658 (number? x)))
                                              (assert x7658)))
                                           (g7657
                                            (letrec ((x-cnd7659 (< x 0)))
                                              (if x-cnd7659 (- 0 x) x))))
                                    g7657)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7660
                                            (letrec ((x7663 (char? c1)))
                                              (assert x7663)))
                                           (g7661
                                            (letrec ((x7664 (char? c2)))
                                              (assert x7664)))
                                           (g7662
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7665
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7665))))
                                    g7662)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7666
                                            (letrec ((x7667
                                                      (letrec ((x7668
                                                                (letrec ((x7669
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7669))))
                                                        (cdr x7668))))
                                              (car x7667))))
                                    g7666)))
                               (newline
                                (lambda () (letrec ((g7670 #f)) g7670)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7671
                                            (letrec ((x7673
                                                      (letrec ((x7674 (* m n)))
                                                        (abs x7674)))
                                                     (x7672 (gcd m n)))
                                              (/ x7673 x7672))))
                                    g7671)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7675
                                            (letrec ((x7677 (number? x)))
                                              (assert x7677)))
                                           (g7676
                                            (letrec ((x7678 (<= x y)))
                                              (not x7678))))
                                    g7676)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7679
                                            (letrec ((x7683 (list? l)))
                                              (assert x7683)))
                                           (g7680
                                            (letrec ((x7684 (number? index)))
                                              (assert x7684)))
                                           (g7681
                                            (letrec ((x7685
                                                      (letrec ((x7686
                                                                (length l)))
                                                        (< index x7686))))
                                              (assert x7685)))
                                           (g7682
                                            (letrec ((x-cnd7687 (= index 0)))
                                              (if x-cnd7687
                                                (car l)
                                                (letrec ((x7689 (cdr l))
                                                         (x7688 (- index 1)))
                                                  (list-ref x7689 x7688))))))
                                    g7682)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7690
                                            (letrec ((x-cnd7691 (= b 0)))
                                              (if x-cnd7691
                                                a
                                                (letrec ((x7692 (modulo a b)))
                                                  (gcd b x7692))))))
                                    g7690)))
                               (real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7693
                                            (letrec ((x-cnd7694 (real? g7162)))
                                              (if x-cnd7694
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7693)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7695
                                            (letrec ((x-cnd7696
                                                      (boolean? g7165)))
                                              (if x-cnd7696
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7695)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7697
                                            (letrec ((x-cnd7698
                                                      (number? g7168)))
                                              (if x-cnd7698
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7697)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7699
                                            (letrec ((x-cnd7700
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7700
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7699)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7701
                                            (letrec ((x-cnd7702
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7702
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7701)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7703
                                            (letrec ((x-cnd7704 (pair? g7177)))
                                              (if x-cnd7704
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7703)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7705
                                            (letrec ((x-cnd7706 (pair? g7180)))
                                              (if x-cnd7706
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7705)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7707
                                            (letrec ((x-cnd7708
                                                      (integer? g7183)))
                                              (if x-cnd7708
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7707)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7709
                                            (lambda (k j v)
                                              (letrec ((g7710
                                                        (letrec ((x-cnd7711
                                                                  (c1 k j v)))
                                                          (if x-cnd7711
                                                            (c2 k j v)
                                                            #f))))
                                                g7710))))
                                    g7709)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7712
                                            (lambda (k j v)
                                              (letrec ((g7713
                                                        (letrec ((x-cnd7714
                                                                  (null? v)))
                                                          (if x-cnd7714
                                                            '()
                                                            (letrec ((x7718
                                                                      (letrec ((x7719
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7719)))
                                                                     (x7715
                                                                      (letrec ((x7717
                                                                                (list-of
                                                                                 contract))
                                                                               (x7716
                                                                                (cdr
                                                                                 v)))
                                                                        (x7717
                                                                         k
                                                                         j
                                                                         x7716))))
                                                              (cons
                                                               x7718
                                                               x7715))))))
                                                g7713))))
                                    g7712)))
                               (any? (lambda (v) (letrec ((g7720 #t)) g7720)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7721
                                            (letrec ((x7722 (= v 0)))
                                              (not x7722))))
                                    g7721)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7723
                                            (letrec ((x-cnd7724
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7724
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7723)))
                               (meta (lambda (v) (letrec ((g7725 v)) g7725)))
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
                                (lambda (cnd) (letrec ((g7726 #t)) g7726)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7727
                                            (letrec ((x7728
                                                      (letrec ((x7729 (cdr x)))
                                                        (cdr x7729))))
                                              (cdr x7728))))
                                    g7727)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7730
                                            (letrec ((x7733 (procedure? f)))
                                              (assert x7733)))
                                           (g7731
                                            (letrec ((x7734 (list? l)))
                                              (assert x7734)))
                                           (g7732
                                            (letrec ((x-cnd7735 (null? l)))
                                              (if x-cnd7735
                                                '()
                                                (letrec ((x7738
                                                          (letrec ((x7739
                                                                    (car l)))
                                                            (f x7739)))
                                                         (x7736
                                                          (letrec ((x7737
                                                                    (cdr l)))
                                                            (map f x7737))))
                                                  (cons x7738 x7736))))))
                                    g7732)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7740
                                            (letrec ((x7741 (car x)))
                                              (cdr x7741))))
                                    g7740)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7742
                                            (letrec ((x7743
                                                      (letrec ((x7744
                                                                (letrec ((x7745
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7745))))
                                                        (cdr x7744))))
                                              (car x7743))))
                                    g7742)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7746
                                            (letrec ((x7747
                                                      (letrec ((x7748
                                                                (letrec ((x7749
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7749))))
                                                        (car x7748))))
                                              (cdr x7747))))
                                    g7746)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7750
                                            (letrec ((x7753
                                                      (string? filename)))
                                              (assert x7753)))
                                           (g7751
                                            (letrec ((x7754 (procedure? proc)))
                                              (assert x7754)))
                                           (g7752
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7755
                                                        (close-output-port
                                                         output-port))
                                                       (g7756 res))
                                                g7756))))
                                    g7752)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7757
                                            (letrec ((x7758
                                                      (letrec ((x7759 (cdr x)))
                                                        (cdr x7759))))
                                              (car x7758))))
                                    g7757)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7760
                                            (letrec ((x7761
                                                      (letrec ((x7762
                                                                (letrec ((x7763
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7763))))
                                                        (car x7762))))
                                              (cdr x7761))))
                                    g7760)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7764
                                            (letrec ((x7766 (list? l)))
                                              (assert x7766)))
                                           (g7765
                                            (letrec ((x-cnd7767 (null? l)))
                                              (if x-cnd7767
                                                #f
                                                (letrec ((x-cnd7768
                                                          (letrec ((x7769
                                                                    (caar l)))
                                                            (eq? x7769 k))))
                                                  (if x-cnd7768
                                                    (car l)
                                                    (letrec ((x7770 (cdr l)))
                                                      (assq k x7770))))))))
                                    g7765)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7771
                                            (letrec ((x7772 (modulo x 2)))
                                              (= 0 x7772))))
                                    g7771)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7773
                                            (letrec ((x7775 (list? l)))
                                              (assert x7775)))
                                           (g7774
                                            (letrec ((x-cnd7776 (null? l)))
                                              (if x-cnd7776
                                                ""
                                                (letrec ((x7779
                                                          (letrec ((x7780
                                                                    (car l)))
                                                            (char->string
                                                             x7780)))
                                                         (x7777
                                                          (letrec ((x7778
                                                                    (cdr l)))
                                                            (list->string
                                                             x7778))))
                                                  (string-append
                                                   x7779
                                                   x7777))))))
                                    g7774)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7781
                                            (letrec ((x7784 (char? c1)))
                                              (assert x7784)))
                                           (g7782
                                            (letrec ((x7785 (char? c2)))
                                              (assert x7785)))
                                           (g7783
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7786
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7786))))
                                    g7783)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7787
                                            (letrec ((x7788
                                                      (letrec ((x7789
                                                                (letrec ((x7790
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7790))))
                                                        (cdr x7789))))
                                              (cdr x7788))))
                                    g7787)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7791
                                            (letrec ((x7794 (list? l)))
                                              (assert x7794)))
                                           (g7792
                                            (letrec ((x7795 (numer?)))
                                              (assert x7795)))
                                           (g7793
                                            (letrec ((x-cnd7796 (zero? k)))
                                              (if x-cnd7796
                                                x
                                                (letrec ((x7798 (cdr x))
                                                         (x7797 (- k 1)))
                                                  (list-tail x7798 x7797))))))
                                    g7793)))
                               (halt (lambda () (letrec ((g7799 '())) g7799)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7800
                                            (letrec ((x-cnd7801
                                                      (letrec ((x7802 #\a))
                                                        (char-ci>=? c x7802))))
                                              (if x-cnd7801
                                                (letrec ((x7803 #\z))
                                                  (char-ci<=? c x7803))
                                                #f))))
                                    g7800)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7804
                                            (letrec ((x7806 (number? x)))
                                              (assert x7806)))
                                           (g7805
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7807
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7808
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7808)))))
                                                g7807))))
                                    g7805)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7809
                                            (letrec ((val7146
                                                      (letrec ((x7810
                                                                (char->integer
                                                                 c)))
                                                        (= x7810 9))))
                                              (letrec ((g7811
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7812
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7812
                                                                       10))))
                                                            (letrec ((g7813
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7814
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7814
                                                                           32)))))
                                                              g7813)))))
                                                g7811))))
                                    g7809)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7815
                                            (letrec ((x7816
                                                      (letrec ((x7817 (car x)))
                                                        (cdr x7817))))
                                              (cdr x7816))))
                                    g7815)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7818
                                            (letrec ((x7820 (number? x)))
                                              (assert x7820)))
                                           (g7819 (> x 0)))
                                    g7819)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7821 #f)) g7821)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7822
                                            (letrec ((x7823 (cdr x)))
                                              (cdr x7823))))
                                    g7822)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7824
                                            (letrec ((x7826 (number? x)))
                                              (assert x7826)))
                                           (g7825
                                            (letrec ((x-cnd7827 (< x 0)))
                                              (if x-cnd7827
                                                (ceiling x)
                                                (floor x)))))
                                    g7825)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7828
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7829
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7831
                                                                              (null?
                                                                               a))
                                                                             (x7830
                                                                              (null?
                                                                               b)))
                                                                      (and x7831
                                                                           x7830))))
                                                            (letrec ((g7832
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7835
                                                                                            (string?
                                                                                             a))
                                                                                           (x7834
                                                                                            (string?
                                                                                             b))
                                                                                           (x7833
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7835
                                                                                         x7834
                                                                                         x7833))))
                                                                          (letrec ((g7836
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7844
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7843
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7840
                                                                                                          (letrec ((x7842
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7841
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7842
                                                                                                             x7841)))
                                                                                                         (x7837
                                                                                                          (letrec ((x7839
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7838
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7839
                                                                                                             x7838))))
                                                                                                  (and x7844
                                                                                                       x7843
                                                                                                       x7840
                                                                                                       x7837))))
                                                                                        (letrec ((g7845
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7864
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7863
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7846
                                                                                                              (letrec ((x7860
                                                                                                                        (letrec ((x7861
                                                                                                                                  (letrec ((x7862
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7862))))
                                                                                                                          (x7861)))
                                                                                                                       (x7847
                                                                                                                        (letrec ((x7858
                                                                                                                                  (letrec ((x7859
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7859
                                                                                                                                     n)))
                                                                                                                                 (x7848
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7849
                                                                                                                                                        (letrec ((x7856
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7850
                                                                                                                                                                  (letrec ((x7853
                                                                                                                                                                            (letrec ((x7855
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7854
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7855
                                                                                                                                                                               x7854)))
                                                                                                                                                                           (x7851
                                                                                                                                                                            (letrec ((x7852
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7852))))
                                                                                                                                                                    (and x7853
                                                                                                                                                                         x7851))))
                                                                                                                                                          (or x7856
                                                                                                                                                              x7850))))
                                                                                                                                                g7849))))
                                                                                                                                    (letrec ((g7857
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7857))))
                                                                                                                          (and x7858
                                                                                                                               x7848))))
                                                                                                                (let x7860 x7847))))
                                                                                                      (and x7864
                                                                                                           x7863
                                                                                                           x7846)))))
                                                                                          g7845)))))
                                                                            g7836)))))
                                                              g7832)))))
                                                g7829))))
                                    g7828)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7865
                                            (letrec ((x7866
                                                      (letrec ((x7867
                                                                (letrec ((x7868
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7868))))
                                                        (car x7867))))
                                              (cdr x7866))))
                                    g7865)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7869
                                            (letrec ((x7870
                                                      (letrec ((x7871
                                                                (letrec ((x7872
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7872))))
                                                        (car x7871))))
                                              (car x7870))))
                                    g7869)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7873 (eq? x y))) g7873)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7874
                                            (letrec ((x7876 (number? x)))
                                              (assert x7876)))
                                           (g7875
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7877
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7878
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7878)))))
                                                g7877))))
                                    g7875)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7879
                                            (letrec ((x7882
                                                      (string? filename)))
                                              (assert x7882)))
                                           (g7880
                                            (letrec ((x7883 (procedure? proc)))
                                              (assert x7883)))
                                           (g7881
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7884
                                                        (close-input-port
                                                         input-port))
                                                       (g7885 res))
                                                g7885))))
                                    g7881)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7886 (cons x '()))) g7886)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7887
                                            (letrec ((x7890 (char? c1)))
                                              (assert x7890)))
                                           (g7888
                                            (letrec ((x7891 (char? c2)))
                                              (assert x7891)))
                                           (g7889
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7892
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7892))))
                                    g7889)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7893
                                            (letrec ((x7894
                                                      (letrec ((x7895 (car x)))
                                                        (car x7895))))
                                              (cdr x7894))))
                                    g7893)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7896
                                            (letrec ((x7897
                                                      (letrec ((x7898
                                                                (letrec ((x7899
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7899))))
                                                        (car x7898))))
                                              (cdr x7897))))
                                    g7896)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7900
                                            (letrec ((x7901
                                                      (letrec ((x7902 (car x)))
                                                        (cdr x7902))))
                                              (car x7901))))
                                    g7900)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7903
                                            (letrec ((x7904
                                                      (letrec ((x7905 (cdr x)))
                                                        (car x7905))))
                                              (car x7904))))
                                    g7903)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7906
                                            (letrec ((x7909 (char? c1)))
                                              (assert x7909)))
                                           (g7907
                                            (letrec ((x7910 (char? c2)))
                                              (assert x7910)))
                                           (g7908
                                            (letrec ((x7911
                                                      (char-ci<=? c1 c2)))
                                              (not x7911))))
                                    g7908)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7912
                                            (letrec ((x7913
                                                      (letrec ((x7914
                                                                (letrec ((x7915
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7915))))
                                                        (car x7914))))
                                              (car x7913))))
                                    g7912)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7916
                                            (letrec ((x7918 (number? x)))
                                              (assert x7918)))
                                           (g7917 (< x 0)))
                                    g7917)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7919 (memq e l))) g7919)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7920
                                            (letrec ((x7921
                                                      (letrec ((x7922 (car x)))
                                                        (car x7922))))
                                              (car x7921))))
                                    g7920)))
                               (debug
                                (lambda (e) (letrec ((g7923 '())) g7923)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7924
                                            (letrec ((x7926 (list? l)))
                                              (assert x7926)))
                                           (g7925
                                            (letrec ((x-cnd7927 (null? l)))
                                              (if x-cnd7927
                                                '()
                                                (letrec ((x7930
                                                          (letrec ((x7931
                                                                    (cdr l)))
                                                            (reverse x7931)))
                                                         (x7928
                                                          (letrec ((x7929
                                                                    (car l)))
                                                            (list x7929))))
                                                  (append x7930 x7928))))))
                                    g7925)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7932
                                            (letrec ((x7933
                                                      (letrec ((x7934
                                                                (letrec ((x7935
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7935))))
                                                        (car x7934))))
                                              (car x7933))))
                                    g7932)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7936
                                            (letrec ((x7937
                                                      (letrec ((x7938
                                                                (letrec ((x7939
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7939))))
                                                        (cdr x7938))))
                                              (cdr x7937))))
                                    g7936)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7940
                                            (letrec ((x7942 (number? x)))
                                              (assert x7942)))
                                           (g7941
                                            (letrec ((x7943 (modulo x 2)))
                                              (= 1 x7943))))
                                    g7941)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7944
                                            (letrec ((x7945
                                                      (letrec ((x7946
                                                                (letrec ((x7947
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7947))))
                                                        (car x7946))))
                                              (car x7945))))
                                    g7944)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7948
                                            (letrec ((x7951 (procedure? proc)))
                                              (assert x7951)))
                                           (g7949
                                            (letrec ((x7952 (list? args)))
                                              (assert x7952)))
                                           (g7950
                                            (if cnd
                                              (letrec ((g7953 (proc))) g7953)
                                              (if cnd
                                                (letrec ((g7954
                                                          (letrec ((x7955
                                                                    (car
                                                                     args)))
                                                            (proc x7955))))
                                                  g7954)
                                                (if cnd
                                                  (letrec ((g7956
                                                            (letrec ((x7958
                                                                      (car
                                                                       args))
                                                                     (x7957
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7958
                                                               x7957))))
                                                    g7956)
                                                  (if cnd
                                                    (letrec ((g7959
                                                              (letrec ((x7962
                                                                        (car
                                                                         args))
                                                                       (x7961
                                                                        (cadr
                                                                         args))
                                                                       (x7960
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7962
                                                                 x7961
                                                                 x7960))))
                                                      g7959)
                                                    (if cnd
                                                      (letrec ((g7963
                                                                (letrec ((x7967
                                                                          (car
                                                                           args))
                                                                         (x7966
                                                                          (cadr
                                                                           args))
                                                                         (x7965
                                                                          (caddr
                                                                           args))
                                                                         (x7964
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7967
                                                                   x7966
                                                                   x7965
                                                                   x7964))))
                                                        g7963)
                                                      (if cnd
                                                        (letrec ((g7968
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
                                                                               x7970))))
                                                                    (proc
                                                                     x7974
                                                                     x7973
                                                                     x7972
                                                                     x7971
                                                                     x7969))))
                                                          g7968)
                                                        (if cnd
                                                          (letrec ((g7975
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
                                                                                 x7979)))
                                                                             (x7976
                                                                              (letrec ((x7977
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7977))))
                                                                      (proc
                                                                       x7983
                                                                       x7982
                                                                       x7981
                                                                       x7980
                                                                       x7978
                                                                       x7976))))
                                                            g7975)
                                                          (if cnd
                                                            (letrec ((g7984
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
                                                                                   x7988)))
                                                                               (x7985
                                                                                (letrec ((x7986
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7986))))
                                                                        (proc
                                                                         x7994
                                                                         x7993
                                                                         x7992
                                                                         x7991
                                                                         x7989
                                                                         x7987
                                                                         x7985))))
                                                              g7984)
                                                            (letrec ((g7995
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7995)))))))))))
                                    g7950)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7996
                                            (letrec ((x7998 (list? l)))
                                              (assert x7998)))
                                           (g7997
                                            (letrec ((x-cnd7999 (null? l)))
                                              (if x-cnd7999
                                                #f
                                                (letrec ((x-cnd8000
                                                          (letrec ((x8001
                                                                    (car l)))
                                                            (equal? x8001 e))))
                                                  (if x-cnd8000
                                                    l
                                                    (letrec ((x8002 (cdr l)))
                                                      (member e x8002))))))))
                                    g7997)))
                               (call-with-current-continuation call/cc)
                               (cddddr
                                (lambda (x)
                                  (letrec ((g8003
                                            (letrec ((x8004
                                                      (letrec ((x8005
                                                                (letrec ((x8006
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8006))))
                                                        (cdr x8005))))
                                              (cdr x8004))))
                                    g8003)))
                               (cadddr
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
                                              (car x8008))))
                                    g8007)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8011 (random 42))) g8011)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8012
                                            (letrec ((x8014 (number? x)))
                                              (assert x8014)))
                                           (g8013 (= x 0)))
                                    g8013)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8015
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8016
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8016))))
                                    g8015)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8017
                                            (letrec ((x8018 (cdr x)))
                                              (car x8018))))
                                    g8017)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8019
                                            (letrec ((val7156
                                                      (letrec ((x8022
                                                                (pair? l))
                                                               (x8020
                                                                (letrec ((x8021
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8021))))
                                                        (and x8022 x8020))))
                                              (letrec ((g8023
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8023))))
                                    g8019)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8024
                                            (letrec ((x8025
                                                      (letrec ((x8026
                                                                (letrec ((x8027
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8027))))
                                                        (cdr x8026))))
                                              (cdr x8025))))
                                    g8024)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8028
                                            (letrec ((x-cnd8029
                                                      (letrec ((x8030 #\0))
                                                        (char<=? x8030 c))))
                                              (if x-cnd8029
                                                (letrec ((x8031 #\9))
                                                  (char<=? c x8031))
                                                #f))))
                                    g8028)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8032
                                            (letrec ((x8034 (list? l)))
                                              (assert x8034)))
                                           (g8033
                                            (letrec ((x-cnd8035 (null? l)))
                                              (if x-cnd8035
                                                #f
                                                (letrec ((x-cnd8036
                                                          (letrec ((x8037
                                                                    (caar l)))
                                                            (eqv? x8037 k))))
                                                  (if x-cnd8036
                                                    (car l)
                                                    (letrec ((x8038 (cdr l)))
                                                      (assq k x8038))))))))
                                    g8033)))
                               (not
                                (lambda (x)
                                  (letrec ((g8039 (if x #f #t))) g8039)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8040 (append l1 l2))) g8040)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8041
                                            (letrec ((x8043 (list? l)))
                                              (assert x8043)))
                                           (g8042
                                            (letrec ((x-cnd8044 (null? l)))
                                              (if x-cnd8044
                                                #f
                                                (letrec ((x-cnd8045
                                                          (letrec ((x8046
                                                                    (car l)))
                                                            (eq? x8046 e))))
                                                  (if x-cnd8045
                                                    l
                                                    (letrec ((x8047 (cdr l)))
                                                      (memq e x8047))))))))
                                    g8042)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8048
                                            (letrec ((x8049
                                                      (letrec ((x8050
                                                                (letrec ((x8051
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8051))))
                                                        (cdr x8050))))
                                              (car x8049))))
                                    g8048)))
                               (length
                                (lambda (l)
                                  (letrec ((g8052
                                            (letrec ((x8054 (list? l)))
                                              (assert x8054)))
                                           (g8053
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8055
                                                                  (letrec ((x-cnd8056
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8056
                                                                      0
                                                                      (letrec ((x8057
                                                                                (letrec ((x8058
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8058))))
                                                                        (+
                                                                         1
                                                                         x8057))))))
                                                          g8055))))
                                              (letrec ((g8059 (rec l)))
                                                g8059))))
                                    g8053)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8060
                                            (letrec ((x8063 (char? c1)))
                                              (assert x8063)))
                                           (g8061
                                            (letrec ((x8064 (char? c2)))
                                              (assert x8064)))
                                           (g8062
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8065
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8065))))
                                    g8062)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8066
                                            (letrec ((x8067 (string<=? s1 s2)))
                                              (not x8067))))
                                    g8066)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8068
                                            (letrec ((x8069
                                                      (letrec ((x8070 (cdr x)))
                                                        (car x8070))))
                                              (cdr x8069))))
                                    g8068)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8071
                                            (letrec ((x8073 (list? l)))
                                              (assert x8073)))
                                           (g8072
                                            (letrec ((x-cnd8074 (null? l)))
                                              (if x-cnd8074
                                                #f
                                                (letrec ((x-cnd8075
                                                          (letrec ((x8076
                                                                    (caar l)))
                                                            (equal? x8076 k))))
                                                  (if x-cnd8075
                                                    (car l)
                                                    (letrec ((x8077 (cdr l)))
                                                      (assoc k x8077))))))))
                                    g8072)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8078
                                            (letrec ((x8079 (car x)))
                                              (car x8079))))
                                    g8078)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8080
                                            (letrec ((x8083 (char? c1)))
                                              (assert x8083)))
                                           (g8081
                                            (letrec ((x8084 (char? c2)))
                                              (assert x8084)))
                                           (g8082
                                            (letrec ((x8085 (char<=? c1 c2)))
                                              (not x8085))))
                                    g8082)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8086
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8087
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8087))))
                                    g8086)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8088
                                            (letrec ((x8091 (procedure? f)))
                                              (assert x8091)))
                                           (g8089
                                            (letrec ((x8092 (list? l)))
                                              (assert x8092)))
                                           (g8090
                                            (letrec ((x-cnd8093 (null? l)))
                                              (if x-cnd8093
                                                #t
                                                (letrec ((x-cnd8094 (pair? l)))
                                                  (if x-cnd8094
                                                    (letrec ((g8095
                                                              (letrec ((x8097
                                                                        (car
                                                                         l)))
                                                                (f x8097)))
                                                             (g8096
                                                              (letrec ((x8098
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8098))))
                                                      g8096)
                                                    '()))))))
                                    g8090)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8099
                                            (letrec ((x8101 (number? x)))
                                              (assert x8101)))
                                           (g8100
                                            (letrec ((x-cnd8102 (< x 0)))
                                              (if x-cnd8102 (- 0 x) x))))
                                    g8100)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8103
                                            (letrec ((x8106 (char? c1)))
                                              (assert x8106)))
                                           (g8104
                                            (letrec ((x8107 (char? c2)))
                                              (assert x8107)))
                                           (g8105
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8108
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8108))))
                                    g8105)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8109
                                            (letrec ((x8110
                                                      (letrec ((x8111
                                                                (letrec ((x8112
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8112))))
                                                        (cdr x8111))))
                                              (car x8110))))
                                    g8109)))
                               (newline
                                (lambda () (letrec ((g8113 #f)) g8113)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8114
                                            (letrec ((x8116
                                                      (letrec ((x8117 (* m n)))
                                                        (abs x8117)))
                                                     (x8115 (gcd m n)))
                                              (/ x8116 x8115))))
                                    g8114)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8118
                                            (letrec ((x8120 (number? x)))
                                              (assert x8120)))
                                           (g8119
                                            (letrec ((x8121 (<= x y)))
                                              (not x8121))))
                                    g8119)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8122
                                            (letrec ((x8126 (list? l)))
                                              (assert x8126)))
                                           (g8123
                                            (letrec ((x8127 (number? index)))
                                              (assert x8127)))
                                           (g8124
                                            (letrec ((x8128
                                                      (letrec ((x8129
                                                                (length l)))
                                                        (< index x8129))))
                                              (assert x8128)))
                                           (g8125
                                            (letrec ((x-cnd8130 (= index 0)))
                                              (if x-cnd8130
                                                (car l)
                                                (letrec ((x8132 (cdr l))
                                                         (x8131 (- index 1)))
                                                  (list-ref x8132 x8131))))))
                                    g8125)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8133
                                            (letrec ((x-cnd8134 (= b 0)))
                                              (if x-cnd8134
                                                a
                                                (letrec ((x8135 (modulo a b)))
                                                  (gcd b x8135))))))
                                    g8133))))
                        (letrec ((g8136
                                  (letrec ((g8137
                                            (letrec ((foldl
                                                      (lambda (f z l)
                                                        (letrec ((g8138
                                                                  (letrec ((x-cnd8139
                                                                            (empty?
                                                                             l)))
                                                                    (if x-cnd8139
                                                                      z
                                                                      (letrec ((x8141
                                                                                (letrec ((x8142
                                                                                          (car
                                                                                           l)))
                                                                                  (f
                                                                                   z
                                                                                   x8142)))
                                                                               (x8140
                                                                                (cdr
                                                                                 l)))
                                                                        (foldl
                                                                         f
                                                                         x8141
                                                                         x8140))))))
                                                          g8138)))
                                                     (randpos
                                                      (lambda (rand)
                                                        (letrec ((g8143
                                                                  (letrec ((n
                                                                            (rand)))
                                                                    (letrec ((g8144
                                                                              (letrec ((x-cnd8145
                                                                                        (>
                                                                                         n
                                                                                         0)))
                                                                                (if x-cnd8145
                                                                                  n
                                                                                  (randpos
                                                                                   rand)))))
                                                                      g8144))))
                                                          g8143)))
                                                     (mk-list
                                                      (lambda (rand n)
                                                        (letrec ((g8146
                                                                  (letrec ((x-cnd8147
                                                                            (<=
                                                                             n
                                                                             0)))
                                                                    (if x-cnd8147
                                                                      empty
                                                                      (letrec ((x8150
                                                                                (randpos
                                                                                 rand))
                                                                               (x8148
                                                                                (letrec ((x8149
                                                                                          (-
                                                                                           n
                                                                                           1)))
                                                                                  (mk-list
                                                                                   rand
                                                                                   x8149))))
                                                                        (cons
                                                                         x8150
                                                                         x8148))))))
                                                          g8146)))
                                                     (main
                                                      (lambda (rand n m)
                                                        (letrec ((g8151
                                                                  (letrec ((x8152
                                                                            (mk-list
                                                                             rand
                                                                             n)))
                                                                    (foldl
                                                                     /
                                                                     m
                                                                     x8152))))
                                                          g8151))))
                                              (letrec ((g8153
                                                        (letrec ((g8154
                                                                  (letrec ((g8155
                                                                            (letrec ((x8159
                                                                                      ((lambda (j7232
                                                                                                k7233
                                                                                                f7234)
                                                                                         (lambda (g7229
                                                                                                  g7230
                                                                                                  g7231)
                                                                                           (real?/c
                                                                                            j7232
                                                                                            k7233
                                                                                            (f7234
                                                                                             ((lambda (j7235
                                                                                                       k7236
                                                                                                       f7237)
                                                                                                (lambda ()
                                                                                                  (integer?/c
                                                                                                   j7235
                                                                                                   k7236
                                                                                                   (f7237))))
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
                                                                                       main))
                                                                                     (x8158
                                                                                      (input))
                                                                                     (x8157
                                                                                      (input))
                                                                                     (x8156
                                                                                      (input)))
                                                                              (x8159
                                                                               x8158
                                                                               x8157
                                                                               x8156))))
                                                                    g8155)))
                                                          g8154)))
                                                g8153))))
                                    g8137)))
                          g8136))))
              g7249)))
    g7248))
