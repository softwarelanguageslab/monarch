(letrec ((any? (lambda (v) (letrec ((g7237 #t)) g7237)))
         (meta (lambda (v) (letrec ((g7238 v)) g7238)))
         (member
          (lambda (v lst)
            (letrec ((g7239
                      (letrec ((g7240
                                (letrec ((x-e7241 lst))
                                  (match
                                   x-e7241
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7242 (eq? v v1)))
                                       (if x-cnd7242 #t (member v vs)))))))))
                        g7240)))
              g7239)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7243 (lambda (v) (letrec ((g7244 v)) g7244)))) g7243)))
         (nonzero?
          (lambda (v)
            (letrec ((g7245 (letrec ((x7246 (= v 0))) (not x7246)))) g7245))))
  (letrec ((g7247
            (letrec ((g7248
                      (letrec ((real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7249
                                            (letrec ((x-cnd7250 (real? g7162)))
                                              (if x-cnd7250
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7249)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7251
                                            (letrec ((x-cnd7252
                                                      (boolean? g7165)))
                                              (if x-cnd7252
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7251)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7253
                                            (letrec ((x-cnd7254
                                                      (number? g7168)))
                                              (if x-cnd7254
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7253)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7255
                                            (letrec ((x-cnd7256
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7256
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7255)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7257
                                            (letrec ((x-cnd7258
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7258
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7257)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7259
                                            (letrec ((x-cnd7260 (pair? g7177)))
                                              (if x-cnd7260
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7259)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7261
                                            (letrec ((x-cnd7262 (pair? g7180)))
                                              (if x-cnd7262
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7261)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7263
                                            (letrec ((x-cnd7264
                                                      (integer? g7183)))
                                              (if x-cnd7264
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7263)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7265
                                            (lambda (k j v)
                                              (letrec ((g7266
                                                        (letrec ((x-cnd7267
                                                                  (c1 k j v)))
                                                          (if x-cnd7267
                                                            (c2 k j v)
                                                            #f))))
                                                g7266))))
                                    g7265)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7268
                                            (lambda (k j v)
                                              (letrec ((g7269
                                                        (letrec ((x-cnd7270
                                                                  (null? v)))
                                                          (if x-cnd7270
                                                            '()
                                                            (letrec ((x7274
                                                                      (letrec ((x7275
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7275)))
                                                                     (x7271
                                                                      (letrec ((x7273
                                                                                (list-of
                                                                                 contract))
                                                                               (x7272
                                                                                (cdr
                                                                                 v)))
                                                                        (x7273
                                                                         k
                                                                         j
                                                                         x7272))))
                                                              (cons
                                                               x7274
                                                               x7271))))))
                                                g7269))))
                                    g7268)))
                               (any? (lambda (v) (letrec ((g7276 #t)) g7276)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7277
                                            (letrec ((x7278 (= v 0)))
                                              (not x7278))))
                                    g7277)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7279
                                            (letrec ((x-cnd7280
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7280
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7279)))
                               (meta (lambda (v) (letrec ((g7281 v)) g7281)))
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
                                (lambda (cnd) (letrec ((g7282 #t)) g7282)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7283
                                            (letrec ((x7284
                                                      (letrec ((x7285 (cdr x)))
                                                        (cdr x7285))))
                                              (cdr x7284))))
                                    g7283)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7286
                                            (letrec ((x7289 (procedure? f)))
                                              (assert x7289)))
                                           (g7287
                                            (letrec ((x7290 (list? l)))
                                              (assert x7290)))
                                           (g7288
                                            (letrec ((x-cnd7291 (null? l)))
                                              (if x-cnd7291
                                                '()
                                                (letrec ((x7294
                                                          (letrec ((x7295
                                                                    (car l)))
                                                            (f x7295)))
                                                         (x7292
                                                          (letrec ((x7293
                                                                    (cdr l)))
                                                            (map f x7293))))
                                                  (cons x7294 x7292))))))
                                    g7288)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7296
                                            (letrec ((x7297 (car x)))
                                              (cdr x7297))))
                                    g7296)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7298
                                            (letrec ((x7299
                                                      (letrec ((x7300
                                                                (letrec ((x7301
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7301))))
                                                        (cdr x7300))))
                                              (car x7299))))
                                    g7298)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7302
                                            (letrec ((x7303
                                                      (letrec ((x7304
                                                                (letrec ((x7305
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7305))))
                                                        (car x7304))))
                                              (cdr x7303))))
                                    g7302)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7306
                                            (letrec ((x7309
                                                      (string? filename)))
                                              (assert x7309)))
                                           (g7307
                                            (letrec ((x7310 (procedure? proc)))
                                              (assert x7310)))
                                           (g7308
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7311
                                                        (close-output-port
                                                         output-port))
                                                       (g7312 res))
                                                g7312))))
                                    g7308)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7313
                                            (letrec ((x7314
                                                      (letrec ((x7315 (cdr x)))
                                                        (cdr x7315))))
                                              (car x7314))))
                                    g7313)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7316
                                            (letrec ((x7317
                                                      (letrec ((x7318
                                                                (letrec ((x7319
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7319))))
                                                        (car x7318))))
                                              (cdr x7317))))
                                    g7316)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7320
                                            (letrec ((x7322 (list? l)))
                                              (assert x7322)))
                                           (g7321
                                            (letrec ((x-cnd7323 (null? l)))
                                              (if x-cnd7323
                                                #f
                                                (letrec ((x-cnd7324
                                                          (letrec ((x7325
                                                                    (caar l)))
                                                            (eq? x7325 k))))
                                                  (if x-cnd7324
                                                    (car l)
                                                    (letrec ((x7326 (cdr l)))
                                                      (assq k x7326))))))))
                                    g7321)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7327
                                            (letrec ((x7328 (modulo x 2)))
                                              (= 0 x7328))))
                                    g7327)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7329
                                            (letrec ((x7331 (list? l)))
                                              (assert x7331)))
                                           (g7330
                                            (letrec ((x-cnd7332 (null? l)))
                                              (if x-cnd7332
                                                ""
                                                (letrec ((x7335
                                                          (letrec ((x7336
                                                                    (car l)))
                                                            (char->string
                                                             x7336)))
                                                         (x7333
                                                          (letrec ((x7334
                                                                    (cdr l)))
                                                            (list->string
                                                             x7334))))
                                                  (string-append
                                                   x7335
                                                   x7333))))))
                                    g7330)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7337
                                            (letrec ((x7340 (char? c1)))
                                              (assert x7340)))
                                           (g7338
                                            (letrec ((x7341 (char? c2)))
                                              (assert x7341)))
                                           (g7339
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7342
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7342))))
                                    g7339)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7343
                                            (letrec ((x7344
                                                      (letrec ((x7345
                                                                (letrec ((x7346
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7346))))
                                                        (cdr x7345))))
                                              (cdr x7344))))
                                    g7343)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7347
                                            (letrec ((x7350 (list? l)))
                                              (assert x7350)))
                                           (g7348
                                            (letrec ((x7351 (numer?)))
                                              (assert x7351)))
                                           (g7349
                                            (letrec ((x-cnd7352 (zero? k)))
                                              (if x-cnd7352
                                                x
                                                (letrec ((x7354 (cdr x))
                                                         (x7353 (- k 1)))
                                                  (list-tail x7354 x7353))))))
                                    g7349)))
                               (halt (lambda () (letrec ((g7355 '())) g7355)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7356
                                            (letrec ((x-cnd7357
                                                      (letrec ((x7358 #\a))
                                                        (char-ci>=? c x7358))))
                                              (if x-cnd7357
                                                (letrec ((x7359 #\z))
                                                  (char-ci<=? c x7359))
                                                #f))))
                                    g7356)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7360
                                            (letrec ((x7362 (number? x)))
                                              (assert x7362)))
                                           (g7361
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7363
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7364
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7364)))))
                                                g7363))))
                                    g7361)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7365
                                            (letrec ((val7146
                                                      (letrec ((x7366
                                                                (char->integer
                                                                 c)))
                                                        (= x7366 9))))
                                              (letrec ((g7367
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7368
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7368
                                                                       10))))
                                                            (letrec ((g7369
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7370
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7370
                                                                           32)))))
                                                              g7369)))))
                                                g7367))))
                                    g7365)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7371
                                            (letrec ((x7372
                                                      (letrec ((x7373 (car x)))
                                                        (cdr x7373))))
                                              (cdr x7372))))
                                    g7371)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7374
                                            (letrec ((x7376 (number? x)))
                                              (assert x7376)))
                                           (g7375 (> x 0)))
                                    g7375)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7377 #f)) g7377)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7378
                                            (letrec ((x7379 (cdr x)))
                                              (cdr x7379))))
                                    g7378)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7380
                                            (letrec ((x7382 (number? x)))
                                              (assert x7382)))
                                           (g7381
                                            (letrec ((x-cnd7383 (< x 0)))
                                              (if x-cnd7383
                                                (ceiling x)
                                                (floor x)))))
                                    g7381)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7384
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7385
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7387
                                                                              (null?
                                                                               a))
                                                                             (x7386
                                                                              (null?
                                                                               b)))
                                                                      (and x7387
                                                                           x7386))))
                                                            (letrec ((g7388
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7391
                                                                                            (string?
                                                                                             a))
                                                                                           (x7390
                                                                                            (string?
                                                                                             b))
                                                                                           (x7389
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7391
                                                                                         x7390
                                                                                         x7389))))
                                                                          (letrec ((g7392
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7400
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7399
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7396
                                                                                                          (letrec ((x7398
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7397
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7398
                                                                                                             x7397)))
                                                                                                         (x7393
                                                                                                          (letrec ((x7395
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7394
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7395
                                                                                                             x7394))))
                                                                                                  (and x7400
                                                                                                       x7399
                                                                                                       x7396
                                                                                                       x7393))))
                                                                                        (letrec ((g7401
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7420
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7419
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7402
                                                                                                              (letrec ((x7416
                                                                                                                        (letrec ((x7417
                                                                                                                                  (letrec ((x7418
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7418))))
                                                                                                                          (x7417)))
                                                                                                                       (x7403
                                                                                                                        (letrec ((x7414
                                                                                                                                  (letrec ((x7415
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7415
                                                                                                                                     n)))
                                                                                                                                 (x7404
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7405
                                                                                                                                                        (letrec ((x7412
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7406
                                                                                                                                                                  (letrec ((x7409
                                                                                                                                                                            (letrec ((x7411
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7410
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7411
                                                                                                                                                                               x7410)))
                                                                                                                                                                           (x7407
                                                                                                                                                                            (letrec ((x7408
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7408))))
                                                                                                                                                                    (and x7409
                                                                                                                                                                         x7407))))
                                                                                                                                                          (or x7412
                                                                                                                                                              x7406))))
                                                                                                                                                g7405))))
                                                                                                                                    (letrec ((g7413
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7413))))
                                                                                                                          (and x7414
                                                                                                                               x7404))))
                                                                                                                (let x7416 x7403))))
                                                                                                      (and x7420
                                                                                                           x7419
                                                                                                           x7402)))))
                                                                                          g7401)))))
                                                                            g7392)))))
                                                              g7388)))))
                                                g7385))))
                                    g7384)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7421
                                            (letrec ((x7422
                                                      (letrec ((x7423
                                                                (letrec ((x7424
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7424))))
                                                        (car x7423))))
                                              (cdr x7422))))
                                    g7421)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7425
                                            (letrec ((x7426
                                                      (letrec ((x7427
                                                                (letrec ((x7428
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7428))))
                                                        (car x7427))))
                                              (car x7426))))
                                    g7425)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7429 (eq? x y))) g7429)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7430
                                            (letrec ((x7432 (number? x)))
                                              (assert x7432)))
                                           (g7431
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7433
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7434
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7434)))))
                                                g7433))))
                                    g7431)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7435
                                            (letrec ((x7438
                                                      (string? filename)))
                                              (assert x7438)))
                                           (g7436
                                            (letrec ((x7439 (procedure? proc)))
                                              (assert x7439)))
                                           (g7437
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7440
                                                        (close-input-port
                                                         input-port))
                                                       (g7441 res))
                                                g7441))))
                                    g7437)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7442 (cons x '()))) g7442)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7443
                                            (letrec ((x7446 (char? c1)))
                                              (assert x7446)))
                                           (g7444
                                            (letrec ((x7447 (char? c2)))
                                              (assert x7447)))
                                           (g7445
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7448
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7448))))
                                    g7445)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7449
                                            (letrec ((x7450
                                                      (letrec ((x7451 (car x)))
                                                        (car x7451))))
                                              (cdr x7450))))
                                    g7449)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7452
                                            (letrec ((x7453
                                                      (letrec ((x7454
                                                                (letrec ((x7455
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7455))))
                                                        (car x7454))))
                                              (cdr x7453))))
                                    g7452)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7456
                                            (letrec ((x7457
                                                      (letrec ((x7458 (car x)))
                                                        (cdr x7458))))
                                              (car x7457))))
                                    g7456)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7459
                                            (letrec ((x7460
                                                      (letrec ((x7461 (cdr x)))
                                                        (car x7461))))
                                              (car x7460))))
                                    g7459)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7462
                                            (letrec ((x7465 (char? c1)))
                                              (assert x7465)))
                                           (g7463
                                            (letrec ((x7466 (char? c2)))
                                              (assert x7466)))
                                           (g7464
                                            (letrec ((x7467
                                                      (char-ci<=? c1 c2)))
                                              (not x7467))))
                                    g7464)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7468
                                            (letrec ((x7469
                                                      (letrec ((x7470
                                                                (letrec ((x7471
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7471))))
                                                        (car x7470))))
                                              (car x7469))))
                                    g7468)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7472
                                            (letrec ((x7474 (number? x)))
                                              (assert x7474)))
                                           (g7473 (< x 0)))
                                    g7473)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7475 (memq e l))) g7475)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7476
                                            (letrec ((x7477
                                                      (letrec ((x7478 (car x)))
                                                        (car x7478))))
                                              (car x7477))))
                                    g7476)))
                               (debug
                                (lambda (e) (letrec ((g7479 '())) g7479)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7480
                                            (letrec ((x7482 (list? l)))
                                              (assert x7482)))
                                           (g7481
                                            (letrec ((x-cnd7483 (null? l)))
                                              (if x-cnd7483
                                                '()
                                                (letrec ((x7486
                                                          (letrec ((x7487
                                                                    (cdr l)))
                                                            (reverse x7487)))
                                                         (x7484
                                                          (letrec ((x7485
                                                                    (car l)))
                                                            (list x7485))))
                                                  (append x7486 x7484))))))
                                    g7481)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7488
                                            (letrec ((x7489
                                                      (letrec ((x7490
                                                                (letrec ((x7491
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7491))))
                                                        (car x7490))))
                                              (car x7489))))
                                    g7488)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7492
                                            (letrec ((x7493
                                                      (letrec ((x7494
                                                                (letrec ((x7495
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7495))))
                                                        (cdr x7494))))
                                              (cdr x7493))))
                                    g7492)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7496
                                            (letrec ((x7498 (number? x)))
                                              (assert x7498)))
                                           (g7497
                                            (letrec ((x7499 (modulo x 2)))
                                              (= 1 x7499))))
                                    g7497)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7500
                                            (letrec ((x7501
                                                      (letrec ((x7502
                                                                (letrec ((x7503
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7503))))
                                                        (car x7502))))
                                              (car x7501))))
                                    g7500)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7504
                                            (letrec ((x7507 (procedure? proc)))
                                              (assert x7507)))
                                           (g7505
                                            (letrec ((x7508 (list? args)))
                                              (assert x7508)))
                                           (g7506
                                            (if cnd
                                              (letrec ((g7509 (proc))) g7509)
                                              (if cnd
                                                (letrec ((g7510
                                                          (letrec ((x7511
                                                                    (car
                                                                     args)))
                                                            (proc x7511))))
                                                  g7510)
                                                (if cnd
                                                  (letrec ((g7512
                                                            (letrec ((x7514
                                                                      (car
                                                                       args))
                                                                     (x7513
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7514
                                                               x7513))))
                                                    g7512)
                                                  (if cnd
                                                    (letrec ((g7515
                                                              (letrec ((x7518
                                                                        (car
                                                                         args))
                                                                       (x7517
                                                                        (cadr
                                                                         args))
                                                                       (x7516
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7518
                                                                 x7517
                                                                 x7516))))
                                                      g7515)
                                                    (if cnd
                                                      (letrec ((g7519
                                                                (letrec ((x7523
                                                                          (car
                                                                           args))
                                                                         (x7522
                                                                          (cadr
                                                                           args))
                                                                         (x7521
                                                                          (caddr
                                                                           args))
                                                                         (x7520
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7523
                                                                   x7522
                                                                   x7521
                                                                   x7520))))
                                                        g7519)
                                                      (if cnd
                                                        (letrec ((g7524
                                                                  (letrec ((x7530
                                                                            (car
                                                                             args))
                                                                           (x7529
                                                                            (cadr
                                                                             args))
                                                                           (x7528
                                                                            (caddr
                                                                             args))
                                                                           (x7527
                                                                            (cadddr
                                                                             args))
                                                                           (x7525
                                                                            (letrec ((x7526
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7526))))
                                                                    (proc
                                                                     x7530
                                                                     x7529
                                                                     x7528
                                                                     x7527
                                                                     x7525))))
                                                          g7524)
                                                        (if cnd
                                                          (letrec ((g7531
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
                                                                                 x7535)))
                                                                             (x7532
                                                                              (letrec ((x7533
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7533))))
                                                                      (proc
                                                                       x7539
                                                                       x7538
                                                                       x7537
                                                                       x7536
                                                                       x7534
                                                                       x7532))))
                                                            g7531)
                                                          (if cnd
                                                            (letrec ((g7540
                                                                      (letrec ((x7550
                                                                                (car
                                                                                 args))
                                                                               (x7549
                                                                                (cadr
                                                                                 args))
                                                                               (x7548
                                                                                (caddr
                                                                                 args))
                                                                               (x7547
                                                                                (cadddr
                                                                                 args))
                                                                               (x7545
                                                                                (letrec ((x7546
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7546)))
                                                                               (x7543
                                                                                (letrec ((x7544
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7544)))
                                                                               (x7541
                                                                                (letrec ((x7542
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7542))))
                                                                        (proc
                                                                         x7550
                                                                         x7549
                                                                         x7548
                                                                         x7547
                                                                         x7545
                                                                         x7543
                                                                         x7541))))
                                                              g7540)
                                                            (letrec ((g7551
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7551)))))))))))
                                    g7506)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7552
                                            (letrec ((x7554 (list? l)))
                                              (assert x7554)))
                                           (g7553
                                            (letrec ((x-cnd7555 (null? l)))
                                              (if x-cnd7555
                                                #f
                                                (letrec ((x-cnd7556
                                                          (letrec ((x7557
                                                                    (car l)))
                                                            (equal? x7557 e))))
                                                  (if x-cnd7556
                                                    l
                                                    (letrec ((x7558 (cdr l)))
                                                      (member e x7558))))))))
                                    g7553)))
                               (cddddr
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
                                              (cdr x7560))))
                                    g7559)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g7563
                                            (letrec ((x7564
                                                      (letrec ((x7565
                                                                (letrec ((x7566
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7566))))
                                                        (cdr x7565))))
                                              (car x7564))))
                                    g7563)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7567 (random 42))) g7567)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7568
                                            (letrec ((x7570 (number? x)))
                                              (assert x7570)))
                                           (g7569 (= x 0)))
                                    g7569)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7571
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7572
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7572))))
                                    g7571)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7573
                                            (letrec ((x7574 (cdr x)))
                                              (car x7574))))
                                    g7573)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7575
                                            (letrec ((val7156
                                                      (letrec ((x7578
                                                                (pair? l))
                                                               (x7576
                                                                (letrec ((x7577
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7577))))
                                                        (and x7578 x7576))))
                                              (letrec ((g7579
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7579))))
                                    g7575)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7580
                                            (letrec ((x7581
                                                      (letrec ((x7582
                                                                (letrec ((x7583
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7583))))
                                                        (cdr x7582))))
                                              (cdr x7581))))
                                    g7580)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7584
                                            (letrec ((x-cnd7585
                                                      (letrec ((x7586 #\0))
                                                        (char<=? x7586 c))))
                                              (if x-cnd7585
                                                (letrec ((x7587 #\9))
                                                  (char<=? c x7587))
                                                #f))))
                                    g7584)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7588
                                            (letrec ((x7590 (list? l)))
                                              (assert x7590)))
                                           (g7589
                                            (letrec ((x-cnd7591 (null? l)))
                                              (if x-cnd7591
                                                #f
                                                (letrec ((x-cnd7592
                                                          (letrec ((x7593
                                                                    (caar l)))
                                                            (eqv? x7593 k))))
                                                  (if x-cnd7592
                                                    (car l)
                                                    (letrec ((x7594 (cdr l)))
                                                      (assq k x7594))))))))
                                    g7589)))
                               (not
                                (lambda (x)
                                  (letrec ((g7595 (if x #f #t))) g7595)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7596 (append l1 l2))) g7596)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7597
                                            (letrec ((x7599 (list? l)))
                                              (assert x7599)))
                                           (g7598
                                            (letrec ((x-cnd7600 (null? l)))
                                              (if x-cnd7600
                                                #f
                                                (letrec ((x-cnd7601
                                                          (letrec ((x7602
                                                                    (car l)))
                                                            (eq? x7602 e))))
                                                  (if x-cnd7601
                                                    l
                                                    (letrec ((x7603 (cdr l)))
                                                      (memq e x7603))))))))
                                    g7598)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7604
                                            (letrec ((x7605
                                                      (letrec ((x7606
                                                                (letrec ((x7607
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7607))))
                                                        (cdr x7606))))
                                              (car x7605))))
                                    g7604)))
                               (length
                                (lambda (l)
                                  (letrec ((g7608
                                            (letrec ((x7610 (list? l)))
                                              (assert x7610)))
                                           (g7609
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7611
                                                                  (letrec ((x-cnd7612
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7612
                                                                      0
                                                                      (letrec ((x7613
                                                                                (letrec ((x7614
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7614))))
                                                                        (+
                                                                         1
                                                                         x7613))))))
                                                          g7611))))
                                              (letrec ((g7615 (rec l)))
                                                g7615))))
                                    g7609)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7616
                                            (letrec ((x7619 (char? c1)))
                                              (assert x7619)))
                                           (g7617
                                            (letrec ((x7620 (char? c2)))
                                              (assert x7620)))
                                           (g7618
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7621
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7621))))
                                    g7618)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7622
                                            (letrec ((x7623 (string<=? s1 s2)))
                                              (not x7623))))
                                    g7622)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7624
                                            (letrec ((x7625
                                                      (letrec ((x7626 (cdr x)))
                                                        (car x7626))))
                                              (cdr x7625))))
                                    g7624)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7627
                                            (letrec ((x7629 (list? l)))
                                              (assert x7629)))
                                           (g7628
                                            (letrec ((x-cnd7630 (null? l)))
                                              (if x-cnd7630
                                                #f
                                                (letrec ((x-cnd7631
                                                          (letrec ((x7632
                                                                    (caar l)))
                                                            (equal? x7632 k))))
                                                  (if x-cnd7631
                                                    (car l)
                                                    (letrec ((x7633 (cdr l)))
                                                      (assoc k x7633))))))))
                                    g7628)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7634
                                            (letrec ((x7635 (car x)))
                                              (car x7635))))
                                    g7634)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7636
                                            (letrec ((x7639 (char? c1)))
                                              (assert x7639)))
                                           (g7637
                                            (letrec ((x7640 (char? c2)))
                                              (assert x7640)))
                                           (g7638
                                            (letrec ((x7641 (char<=? c1 c2)))
                                              (not x7641))))
                                    g7638)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7642
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7643
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7643))))
                                    g7642)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7644
                                            (letrec ((x7647 (procedure? f)))
                                              (assert x7647)))
                                           (g7645
                                            (letrec ((x7648 (list? l)))
                                              (assert x7648)))
                                           (g7646
                                            (letrec ((x-cnd7649 (null? l)))
                                              (if x-cnd7649
                                                #t
                                                (letrec ((x-cnd7650 (pair? l)))
                                                  (if x-cnd7650
                                                    (letrec ((g7651
                                                              (letrec ((x7653
                                                                        (car
                                                                         l)))
                                                                (f x7653)))
                                                             (g7652
                                                              (letrec ((x7654
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7654))))
                                                      g7652)
                                                    '()))))))
                                    g7646)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7655
                                            (letrec ((x7657 (number? x)))
                                              (assert x7657)))
                                           (g7656
                                            (letrec ((x-cnd7658 (< x 0)))
                                              (if x-cnd7658 (- 0 x) x))))
                                    g7656)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7659
                                            (letrec ((x7662 (char? c1)))
                                              (assert x7662)))
                                           (g7660
                                            (letrec ((x7663 (char? c2)))
                                              (assert x7663)))
                                           (g7661
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7664
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7664))))
                                    g7661)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7665
                                            (letrec ((x7666
                                                      (letrec ((x7667
                                                                (letrec ((x7668
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7668))))
                                                        (cdr x7667))))
                                              (car x7666))))
                                    g7665)))
                               (newline
                                (lambda () (letrec ((g7669 #f)) g7669)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7670
                                            (letrec ((x7672
                                                      (letrec ((x7673 (* m n)))
                                                        (abs x7673)))
                                                     (x7671 (gcd m n)))
                                              (/ x7672 x7671))))
                                    g7670)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7674
                                            (letrec ((x7676 (number? x)))
                                              (assert x7676)))
                                           (g7675
                                            (letrec ((x7677 (<= x y)))
                                              (not x7677))))
                                    g7675)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7678
                                            (letrec ((x7682 (list? l)))
                                              (assert x7682)))
                                           (g7679
                                            (letrec ((x7683 (number? index)))
                                              (assert x7683)))
                                           (g7680
                                            (letrec ((x7684
                                                      (letrec ((x7685
                                                                (length l)))
                                                        (< index x7685))))
                                              (assert x7684)))
                                           (g7681
                                            (letrec ((x-cnd7686 (= index 0)))
                                              (if x-cnd7686
                                                (car l)
                                                (letrec ((x7688 (cdr l))
                                                         (x7687 (- index 1)))
                                                  (list-ref x7688 x7687))))))
                                    g7681)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7689
                                            (letrec ((x-cnd7690 (= b 0)))
                                              (if x-cnd7690
                                                a
                                                (letrec ((x7691 (modulo a b)))
                                                  (gcd b x7691))))))
                                    g7689)))
                               (real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7692
                                            (letrec ((x-cnd7693 (real? g7162)))
                                              (if x-cnd7693
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7692)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7694
                                            (letrec ((x-cnd7695
                                                      (boolean? g7165)))
                                              (if x-cnd7695
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7694)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7696
                                            (letrec ((x-cnd7697
                                                      (number? g7168)))
                                              (if x-cnd7697
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7696)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7698
                                            (letrec ((x-cnd7699
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7699
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7698)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7700
                                            (letrec ((x-cnd7701
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7701
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7700)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7702
                                            (letrec ((x-cnd7703 (pair? g7177)))
                                              (if x-cnd7703
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7702)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7704
                                            (letrec ((x-cnd7705 (pair? g7180)))
                                              (if x-cnd7705
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7704)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7706
                                            (letrec ((x-cnd7707
                                                      (integer? g7183)))
                                              (if x-cnd7707
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7706)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7708
                                            (lambda (k j v)
                                              (letrec ((g7709
                                                        (letrec ((x-cnd7710
                                                                  (c1 k j v)))
                                                          (if x-cnd7710
                                                            (c2 k j v)
                                                            #f))))
                                                g7709))))
                                    g7708)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7711
                                            (lambda (k j v)
                                              (letrec ((g7712
                                                        (letrec ((x-cnd7713
                                                                  (null? v)))
                                                          (if x-cnd7713
                                                            '()
                                                            (letrec ((x7717
                                                                      (letrec ((x7718
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7718)))
                                                                     (x7714
                                                                      (letrec ((x7716
                                                                                (list-of
                                                                                 contract))
                                                                               (x7715
                                                                                (cdr
                                                                                 v)))
                                                                        (x7716
                                                                         k
                                                                         j
                                                                         x7715))))
                                                              (cons
                                                               x7717
                                                               x7714))))))
                                                g7712))))
                                    g7711)))
                               (any? (lambda (v) (letrec ((g7719 #t)) g7719)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7720
                                            (letrec ((x7721 (= v 0)))
                                              (not x7721))))
                                    g7720)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7722
                                            (letrec ((x-cnd7723
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7723
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7722)))
                               (meta (lambda (v) (letrec ((g7724 v)) g7724)))
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
                                (lambda (cnd) (letrec ((g7725 #t)) g7725)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7726
                                            (letrec ((x7727
                                                      (letrec ((x7728 (cdr x)))
                                                        (cdr x7728))))
                                              (cdr x7727))))
                                    g7726)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7729
                                            (letrec ((x7732 (procedure? f)))
                                              (assert x7732)))
                                           (g7730
                                            (letrec ((x7733 (list? l)))
                                              (assert x7733)))
                                           (g7731
                                            (letrec ((x-cnd7734 (null? l)))
                                              (if x-cnd7734
                                                '()
                                                (letrec ((x7737
                                                          (letrec ((x7738
                                                                    (car l)))
                                                            (f x7738)))
                                                         (x7735
                                                          (letrec ((x7736
                                                                    (cdr l)))
                                                            (map f x7736))))
                                                  (cons x7737 x7735))))))
                                    g7731)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7739
                                            (letrec ((x7740 (car x)))
                                              (cdr x7740))))
                                    g7739)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7741
                                            (letrec ((x7742
                                                      (letrec ((x7743
                                                                (letrec ((x7744
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7744))))
                                                        (cdr x7743))))
                                              (car x7742))))
                                    g7741)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7745
                                            (letrec ((x7746
                                                      (letrec ((x7747
                                                                (letrec ((x7748
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7748))))
                                                        (car x7747))))
                                              (cdr x7746))))
                                    g7745)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7749
                                            (letrec ((x7752
                                                      (string? filename)))
                                              (assert x7752)))
                                           (g7750
                                            (letrec ((x7753 (procedure? proc)))
                                              (assert x7753)))
                                           (g7751
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7754
                                                        (close-output-port
                                                         output-port))
                                                       (g7755 res))
                                                g7755))))
                                    g7751)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7756
                                            (letrec ((x7757
                                                      (letrec ((x7758 (cdr x)))
                                                        (cdr x7758))))
                                              (car x7757))))
                                    g7756)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7759
                                            (letrec ((x7760
                                                      (letrec ((x7761
                                                                (letrec ((x7762
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7762))))
                                                        (car x7761))))
                                              (cdr x7760))))
                                    g7759)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7763
                                            (letrec ((x7765 (list? l)))
                                              (assert x7765)))
                                           (g7764
                                            (letrec ((x-cnd7766 (null? l)))
                                              (if x-cnd7766
                                                #f
                                                (letrec ((x-cnd7767
                                                          (letrec ((x7768
                                                                    (caar l)))
                                                            (eq? x7768 k))))
                                                  (if x-cnd7767
                                                    (car l)
                                                    (letrec ((x7769 (cdr l)))
                                                      (assq k x7769))))))))
                                    g7764)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7770
                                            (letrec ((x7771 (modulo x 2)))
                                              (= 0 x7771))))
                                    g7770)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7772
                                            (letrec ((x7774 (list? l)))
                                              (assert x7774)))
                                           (g7773
                                            (letrec ((x-cnd7775 (null? l)))
                                              (if x-cnd7775
                                                ""
                                                (letrec ((x7778
                                                          (letrec ((x7779
                                                                    (car l)))
                                                            (char->string
                                                             x7779)))
                                                         (x7776
                                                          (letrec ((x7777
                                                                    (cdr l)))
                                                            (list->string
                                                             x7777))))
                                                  (string-append
                                                   x7778
                                                   x7776))))))
                                    g7773)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7780
                                            (letrec ((x7783 (char? c1)))
                                              (assert x7783)))
                                           (g7781
                                            (letrec ((x7784 (char? c2)))
                                              (assert x7784)))
                                           (g7782
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7785
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7785))))
                                    g7782)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7786
                                            (letrec ((x7787
                                                      (letrec ((x7788
                                                                (letrec ((x7789
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7789))))
                                                        (cdr x7788))))
                                              (cdr x7787))))
                                    g7786)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7790
                                            (letrec ((x7793 (list? l)))
                                              (assert x7793)))
                                           (g7791
                                            (letrec ((x7794 (numer?)))
                                              (assert x7794)))
                                           (g7792
                                            (letrec ((x-cnd7795 (zero? k)))
                                              (if x-cnd7795
                                                x
                                                (letrec ((x7797 (cdr x))
                                                         (x7796 (- k 1)))
                                                  (list-tail x7797 x7796))))))
                                    g7792)))
                               (halt (lambda () (letrec ((g7798 '())) g7798)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7799
                                            (letrec ((x-cnd7800
                                                      (letrec ((x7801 #\a))
                                                        (char-ci>=? c x7801))))
                                              (if x-cnd7800
                                                (letrec ((x7802 #\z))
                                                  (char-ci<=? c x7802))
                                                #f))))
                                    g7799)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7803
                                            (letrec ((x7805 (number? x)))
                                              (assert x7805)))
                                           (g7804
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7806
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7807
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7807)))))
                                                g7806))))
                                    g7804)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7808
                                            (letrec ((val7146
                                                      (letrec ((x7809
                                                                (char->integer
                                                                 c)))
                                                        (= x7809 9))))
                                              (letrec ((g7810
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7811
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7811
                                                                       10))))
                                                            (letrec ((g7812
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7813
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7813
                                                                           32)))))
                                                              g7812)))))
                                                g7810))))
                                    g7808)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7814
                                            (letrec ((x7815
                                                      (letrec ((x7816 (car x)))
                                                        (cdr x7816))))
                                              (cdr x7815))))
                                    g7814)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7817
                                            (letrec ((x7819 (number? x)))
                                              (assert x7819)))
                                           (g7818 (> x 0)))
                                    g7818)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7820 #f)) g7820)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7821
                                            (letrec ((x7822 (cdr x)))
                                              (cdr x7822))))
                                    g7821)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7823
                                            (letrec ((x7825 (number? x)))
                                              (assert x7825)))
                                           (g7824
                                            (letrec ((x-cnd7826 (< x 0)))
                                              (if x-cnd7826
                                                (ceiling x)
                                                (floor x)))))
                                    g7824)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7827
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7828
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7830
                                                                              (null?
                                                                               a))
                                                                             (x7829
                                                                              (null?
                                                                               b)))
                                                                      (and x7830
                                                                           x7829))))
                                                            (letrec ((g7831
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7834
                                                                                            (string?
                                                                                             a))
                                                                                           (x7833
                                                                                            (string?
                                                                                             b))
                                                                                           (x7832
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7834
                                                                                         x7833
                                                                                         x7832))))
                                                                          (letrec ((g7835
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7843
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7842
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7839
                                                                                                          (letrec ((x7841
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7840
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7841
                                                                                                             x7840)))
                                                                                                         (x7836
                                                                                                          (letrec ((x7838
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7837
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7838
                                                                                                             x7837))))
                                                                                                  (and x7843
                                                                                                       x7842
                                                                                                       x7839
                                                                                                       x7836))))
                                                                                        (letrec ((g7844
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7863
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7862
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7845
                                                                                                              (letrec ((x7859
                                                                                                                        (letrec ((x7860
                                                                                                                                  (letrec ((x7861
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7861))))
                                                                                                                          (x7860)))
                                                                                                                       (x7846
                                                                                                                        (letrec ((x7857
                                                                                                                                  (letrec ((x7858
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7858
                                                                                                                                     n)))
                                                                                                                                 (x7847
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7848
                                                                                                                                                        (letrec ((x7855
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7849
                                                                                                                                                                  (letrec ((x7852
                                                                                                                                                                            (letrec ((x7854
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7853
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7854
                                                                                                                                                                               x7853)))
                                                                                                                                                                           (x7850
                                                                                                                                                                            (letrec ((x7851
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7851))))
                                                                                                                                                                    (and x7852
                                                                                                                                                                         x7850))))
                                                                                                                                                          (or x7855
                                                                                                                                                              x7849))))
                                                                                                                                                g7848))))
                                                                                                                                    (letrec ((g7856
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7856))))
                                                                                                                          (and x7857
                                                                                                                               x7847))))
                                                                                                                (let x7859 x7846))))
                                                                                                      (and x7863
                                                                                                           x7862
                                                                                                           x7845)))))
                                                                                          g7844)))))
                                                                            g7835)))))
                                                              g7831)))))
                                                g7828))))
                                    g7827)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7864
                                            (letrec ((x7865
                                                      (letrec ((x7866
                                                                (letrec ((x7867
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7867))))
                                                        (car x7866))))
                                              (cdr x7865))))
                                    g7864)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7868
                                            (letrec ((x7869
                                                      (letrec ((x7870
                                                                (letrec ((x7871
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7871))))
                                                        (car x7870))))
                                              (car x7869))))
                                    g7868)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7872 (eq? x y))) g7872)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7873
                                            (letrec ((x7875 (number? x)))
                                              (assert x7875)))
                                           (g7874
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7876
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7877
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7877)))))
                                                g7876))))
                                    g7874)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7878
                                            (letrec ((x7881
                                                      (string? filename)))
                                              (assert x7881)))
                                           (g7879
                                            (letrec ((x7882 (procedure? proc)))
                                              (assert x7882)))
                                           (g7880
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7883
                                                        (close-input-port
                                                         input-port))
                                                       (g7884 res))
                                                g7884))))
                                    g7880)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7885 (cons x '()))) g7885)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7886
                                            (letrec ((x7889 (char? c1)))
                                              (assert x7889)))
                                           (g7887
                                            (letrec ((x7890 (char? c2)))
                                              (assert x7890)))
                                           (g7888
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7891
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7891))))
                                    g7888)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7892
                                            (letrec ((x7893
                                                      (letrec ((x7894 (car x)))
                                                        (car x7894))))
                                              (cdr x7893))))
                                    g7892)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7895
                                            (letrec ((x7896
                                                      (letrec ((x7897
                                                                (letrec ((x7898
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7898))))
                                                        (car x7897))))
                                              (cdr x7896))))
                                    g7895)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7899
                                            (letrec ((x7900
                                                      (letrec ((x7901 (car x)))
                                                        (cdr x7901))))
                                              (car x7900))))
                                    g7899)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7902
                                            (letrec ((x7903
                                                      (letrec ((x7904 (cdr x)))
                                                        (car x7904))))
                                              (car x7903))))
                                    g7902)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7905
                                            (letrec ((x7908 (char? c1)))
                                              (assert x7908)))
                                           (g7906
                                            (letrec ((x7909 (char? c2)))
                                              (assert x7909)))
                                           (g7907
                                            (letrec ((x7910
                                                      (char-ci<=? c1 c2)))
                                              (not x7910))))
                                    g7907)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7911
                                            (letrec ((x7912
                                                      (letrec ((x7913
                                                                (letrec ((x7914
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7914))))
                                                        (car x7913))))
                                              (car x7912))))
                                    g7911)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7915
                                            (letrec ((x7917 (number? x)))
                                              (assert x7917)))
                                           (g7916 (< x 0)))
                                    g7916)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7918 (memq e l))) g7918)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7919
                                            (letrec ((x7920
                                                      (letrec ((x7921 (car x)))
                                                        (car x7921))))
                                              (car x7920))))
                                    g7919)))
                               (debug
                                (lambda (e) (letrec ((g7922 '())) g7922)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7923
                                            (letrec ((x7925 (list? l)))
                                              (assert x7925)))
                                           (g7924
                                            (letrec ((x-cnd7926 (null? l)))
                                              (if x-cnd7926
                                                '()
                                                (letrec ((x7929
                                                          (letrec ((x7930
                                                                    (cdr l)))
                                                            (reverse x7930)))
                                                         (x7927
                                                          (letrec ((x7928
                                                                    (car l)))
                                                            (list x7928))))
                                                  (append x7929 x7927))))))
                                    g7924)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7931
                                            (letrec ((x7932
                                                      (letrec ((x7933
                                                                (letrec ((x7934
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7934))))
                                                        (car x7933))))
                                              (car x7932))))
                                    g7931)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7935
                                            (letrec ((x7936
                                                      (letrec ((x7937
                                                                (letrec ((x7938
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7938))))
                                                        (cdr x7937))))
                                              (cdr x7936))))
                                    g7935)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7939
                                            (letrec ((x7941 (number? x)))
                                              (assert x7941)))
                                           (g7940
                                            (letrec ((x7942 (modulo x 2)))
                                              (= 1 x7942))))
                                    g7940)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7943
                                            (letrec ((x7944
                                                      (letrec ((x7945
                                                                (letrec ((x7946
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7946))))
                                                        (car x7945))))
                                              (car x7944))))
                                    g7943)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7947
                                            (letrec ((x7950 (procedure? proc)))
                                              (assert x7950)))
                                           (g7948
                                            (letrec ((x7951 (list? args)))
                                              (assert x7951)))
                                           (g7949
                                            (if cnd
                                              (letrec ((g7952 (proc))) g7952)
                                              (if cnd
                                                (letrec ((g7953
                                                          (letrec ((x7954
                                                                    (car
                                                                     args)))
                                                            (proc x7954))))
                                                  g7953)
                                                (if cnd
                                                  (letrec ((g7955
                                                            (letrec ((x7957
                                                                      (car
                                                                       args))
                                                                     (x7956
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7957
                                                               x7956))))
                                                    g7955)
                                                  (if cnd
                                                    (letrec ((g7958
                                                              (letrec ((x7961
                                                                        (car
                                                                         args))
                                                                       (x7960
                                                                        (cadr
                                                                         args))
                                                                       (x7959
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7961
                                                                 x7960
                                                                 x7959))))
                                                      g7958)
                                                    (if cnd
                                                      (letrec ((g7962
                                                                (letrec ((x7966
                                                                          (car
                                                                           args))
                                                                         (x7965
                                                                          (cadr
                                                                           args))
                                                                         (x7964
                                                                          (caddr
                                                                           args))
                                                                         (x7963
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7966
                                                                   x7965
                                                                   x7964
                                                                   x7963))))
                                                        g7962)
                                                      (if cnd
                                                        (letrec ((g7967
                                                                  (letrec ((x7973
                                                                            (car
                                                                             args))
                                                                           (x7972
                                                                            (cadr
                                                                             args))
                                                                           (x7971
                                                                            (caddr
                                                                             args))
                                                                           (x7970
                                                                            (cadddr
                                                                             args))
                                                                           (x7968
                                                                            (letrec ((x7969
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7969))))
                                                                    (proc
                                                                     x7973
                                                                     x7972
                                                                     x7971
                                                                     x7970
                                                                     x7968))))
                                                          g7967)
                                                        (if cnd
                                                          (letrec ((g7974
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
                                                                                 x7978)))
                                                                             (x7975
                                                                              (letrec ((x7976
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7976))))
                                                                      (proc
                                                                       x7982
                                                                       x7981
                                                                       x7980
                                                                       x7979
                                                                       x7977
                                                                       x7975))))
                                                            g7974)
                                                          (if cnd
                                                            (letrec ((g7983
                                                                      (letrec ((x7993
                                                                                (car
                                                                                 args))
                                                                               (x7992
                                                                                (cadr
                                                                                 args))
                                                                               (x7991
                                                                                (caddr
                                                                                 args))
                                                                               (x7990
                                                                                (cadddr
                                                                                 args))
                                                                               (x7988
                                                                                (letrec ((x7989
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7989)))
                                                                               (x7986
                                                                                (letrec ((x7987
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7987)))
                                                                               (x7984
                                                                                (letrec ((x7985
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7985))))
                                                                        (proc
                                                                         x7993
                                                                         x7992
                                                                         x7991
                                                                         x7990
                                                                         x7988
                                                                         x7986
                                                                         x7984))))
                                                              g7983)
                                                            (letrec ((g7994
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7994)))))))))))
                                    g7949)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7995
                                            (letrec ((x7997 (list? l)))
                                              (assert x7997)))
                                           (g7996
                                            (letrec ((x-cnd7998 (null? l)))
                                              (if x-cnd7998
                                                #f
                                                (letrec ((x-cnd7999
                                                          (letrec ((x8000
                                                                    (car l)))
                                                            (equal? x8000 e))))
                                                  (if x-cnd7999
                                                    l
                                                    (letrec ((x8001 (cdr l)))
                                                      (member e x8001))))))))
                                    g7996)))
                               (cddddr
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
                                              (cdr x8003))))
                                    g8002)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g8006
                                            (letrec ((x8007
                                                      (letrec ((x8008
                                                                (letrec ((x8009
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8009))))
                                                        (cdr x8008))))
                                              (car x8007))))
                                    g8006)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8010 (random 42))) g8010)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8011
                                            (letrec ((x8013 (number? x)))
                                              (assert x8013)))
                                           (g8012 (= x 0)))
                                    g8012)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8014
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8015
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8015))))
                                    g8014)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8016
                                            (letrec ((x8017 (cdr x)))
                                              (car x8017))))
                                    g8016)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8018
                                            (letrec ((val7156
                                                      (letrec ((x8021
                                                                (pair? l))
                                                               (x8019
                                                                (letrec ((x8020
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8020))))
                                                        (and x8021 x8019))))
                                              (letrec ((g8022
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8022))))
                                    g8018)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8023
                                            (letrec ((x8024
                                                      (letrec ((x8025
                                                                (letrec ((x8026
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8026))))
                                                        (cdr x8025))))
                                              (cdr x8024))))
                                    g8023)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8027
                                            (letrec ((x-cnd8028
                                                      (letrec ((x8029 #\0))
                                                        (char<=? x8029 c))))
                                              (if x-cnd8028
                                                (letrec ((x8030 #\9))
                                                  (char<=? c x8030))
                                                #f))))
                                    g8027)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8031
                                            (letrec ((x8033 (list? l)))
                                              (assert x8033)))
                                           (g8032
                                            (letrec ((x-cnd8034 (null? l)))
                                              (if x-cnd8034
                                                #f
                                                (letrec ((x-cnd8035
                                                          (letrec ((x8036
                                                                    (caar l)))
                                                            (eqv? x8036 k))))
                                                  (if x-cnd8035
                                                    (car l)
                                                    (letrec ((x8037 (cdr l)))
                                                      (assq k x8037))))))))
                                    g8032)))
                               (not
                                (lambda (x)
                                  (letrec ((g8038 (if x #f #t))) g8038)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8039 (append l1 l2))) g8039)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8040
                                            (letrec ((x8042 (list? l)))
                                              (assert x8042)))
                                           (g8041
                                            (letrec ((x-cnd8043 (null? l)))
                                              (if x-cnd8043
                                                #f
                                                (letrec ((x-cnd8044
                                                          (letrec ((x8045
                                                                    (car l)))
                                                            (eq? x8045 e))))
                                                  (if x-cnd8044
                                                    l
                                                    (letrec ((x8046 (cdr l)))
                                                      (memq e x8046))))))))
                                    g8041)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8047
                                            (letrec ((x8048
                                                      (letrec ((x8049
                                                                (letrec ((x8050
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8050))))
                                                        (cdr x8049))))
                                              (car x8048))))
                                    g8047)))
                               (length
                                (lambda (l)
                                  (letrec ((g8051
                                            (letrec ((x8053 (list? l)))
                                              (assert x8053)))
                                           (g8052
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8054
                                                                  (letrec ((x-cnd8055
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8055
                                                                      0
                                                                      (letrec ((x8056
                                                                                (letrec ((x8057
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8057))))
                                                                        (+
                                                                         1
                                                                         x8056))))))
                                                          g8054))))
                                              (letrec ((g8058 (rec l)))
                                                g8058))))
                                    g8052)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8059
                                            (letrec ((x8062 (char? c1)))
                                              (assert x8062)))
                                           (g8060
                                            (letrec ((x8063 (char? c2)))
                                              (assert x8063)))
                                           (g8061
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8064
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8064))))
                                    g8061)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8065
                                            (letrec ((x8066 (string<=? s1 s2)))
                                              (not x8066))))
                                    g8065)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8067
                                            (letrec ((x8068
                                                      (letrec ((x8069 (cdr x)))
                                                        (car x8069))))
                                              (cdr x8068))))
                                    g8067)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8070
                                            (letrec ((x8072 (list? l)))
                                              (assert x8072)))
                                           (g8071
                                            (letrec ((x-cnd8073 (null? l)))
                                              (if x-cnd8073
                                                #f
                                                (letrec ((x-cnd8074
                                                          (letrec ((x8075
                                                                    (caar l)))
                                                            (equal? x8075 k))))
                                                  (if x-cnd8074
                                                    (car l)
                                                    (letrec ((x8076 (cdr l)))
                                                      (assoc k x8076))))))))
                                    g8071)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8077
                                            (letrec ((x8078 (car x)))
                                              (car x8078))))
                                    g8077)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8079
                                            (letrec ((x8082 (char? c1)))
                                              (assert x8082)))
                                           (g8080
                                            (letrec ((x8083 (char? c2)))
                                              (assert x8083)))
                                           (g8081
                                            (letrec ((x8084 (char<=? c1 c2)))
                                              (not x8084))))
                                    g8081)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8085
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8086
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8086))))
                                    g8085)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8087
                                            (letrec ((x8090 (procedure? f)))
                                              (assert x8090)))
                                           (g8088
                                            (letrec ((x8091 (list? l)))
                                              (assert x8091)))
                                           (g8089
                                            (letrec ((x-cnd8092 (null? l)))
                                              (if x-cnd8092
                                                #t
                                                (letrec ((x-cnd8093 (pair? l)))
                                                  (if x-cnd8093
                                                    (letrec ((g8094
                                                              (letrec ((x8096
                                                                        (car
                                                                         l)))
                                                                (f x8096)))
                                                             (g8095
                                                              (letrec ((x8097
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8097))))
                                                      g8095)
                                                    '()))))))
                                    g8089)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8098
                                            (letrec ((x8100 (number? x)))
                                              (assert x8100)))
                                           (g8099
                                            (letrec ((x-cnd8101 (< x 0)))
                                              (if x-cnd8101 (- 0 x) x))))
                                    g8099)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8102
                                            (letrec ((x8105 (char? c1)))
                                              (assert x8105)))
                                           (g8103
                                            (letrec ((x8106 (char? c2)))
                                              (assert x8106)))
                                           (g8104
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8107
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8107))))
                                    g8104)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8108
                                            (letrec ((x8109
                                                      (letrec ((x8110
                                                                (letrec ((x8111
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8111))))
                                                        (cdr x8110))))
                                              (car x8109))))
                                    g8108)))
                               (newline
                                (lambda () (letrec ((g8112 #f)) g8112)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8113
                                            (letrec ((x8115
                                                      (letrec ((x8116 (* m n)))
                                                        (abs x8116)))
                                                     (x8114 (gcd m n)))
                                              (/ x8115 x8114))))
                                    g8113)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8117
                                            (letrec ((x8119 (number? x)))
                                              (assert x8119)))
                                           (g8118
                                            (letrec ((x8120 (<= x y)))
                                              (not x8120))))
                                    g8118)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8121
                                            (letrec ((x8125 (list? l)))
                                              (assert x8125)))
                                           (g8122
                                            (letrec ((x8126 (number? index)))
                                              (assert x8126)))
                                           (g8123
                                            (letrec ((x8127
                                                      (letrec ((x8128
                                                                (length l)))
                                                        (< index x8128))))
                                              (assert x8127)))
                                           (g8124
                                            (letrec ((x-cnd8129 (= index 0)))
                                              (if x-cnd8129
                                                (car l)
                                                (letrec ((x8131 (cdr l))
                                                         (x8130 (- index 1)))
                                                  (list-ref x8131 x8130))))))
                                    g8124)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8132
                                            (letrec ((x-cnd8133 (= b 0)))
                                              (if x-cnd8133
                                                a
                                                (letrec ((x8134 (modulo a b)))
                                                  (gcd b x8134))))))
                                    g8132))))
                        (letrec ((g8135
                                  (letrec ((g8136
                                            (letrec ((zip
                                                      (lambda (xs ys)
                                                        (letrec ((g8137
                                                                  (if cnd
                                                                    (letrec ((g8138
                                                                              empty))
                                                                      g8138)
                                                                    (if cnd
                                                                      (letrec ((g8139
                                                                                (letrec ((x8143
                                                                                          (letrec ((x8145
                                                                                                    (car
                                                                                                     xs))
                                                                                                   (x8144
                                                                                                    (car
                                                                                                     ys)))
                                                                                            (cons
                                                                                             x8145
                                                                                             x8144)))
                                                                                         (x8140
                                                                                          (letrec ((x8142
                                                                                                    (cdr
                                                                                                     xs))
                                                                                                   (x8141
                                                                                                    (cdr
                                                                                                     ys)))
                                                                                            (zip
                                                                                             x8142
                                                                                             x8141))))
                                                                                  (cons
                                                                                   x8143
                                                                                   x8140))))
                                                                        g8139)
                                                                      (letrec ((g8146
                                                                                'fail))
                                                                        g8146)))))
                                                          g8137)))
                                                     (mk-list
                                                      (lambda (n)
                                                        (letrec ((g8147
                                                                  (letrec ((x-cnd8148
                                                                            (<
                                                                             n
                                                                             0)))
                                                                    (if x-cnd8148
                                                                      empty
                                                                      (letrec ((x8149
                                                                                (letrec ((x8150
                                                                                          (-
                                                                                           n
                                                                                           1)))
                                                                                  (mk-list
                                                                                   x8150))))
                                                                        (cons
                                                                         n
                                                                         x8149))))))
                                                          g8147)))
                                                     (main
                                                      (lambda (n)
                                                        (letrec ((g8151
                                                                  (letrec ((xs
                                                                            (mk-list
                                                                             n)))
                                                                    (letrec ((g8152
                                                                              (zip
                                                                               xs
                                                                               xs)))
                                                                      g8152))))
                                                          g8151))))
                                              (letrec ((g8153
                                                        (letrec ((g8154
                                                                  (letrec ((g8155
                                                                            (letrec ((x8158
                                                                                      ((lambda (j7230
                                                                                                k7231
                                                                                                f7232)
                                                                                         (lambda (g7229)
                                                                                           ((listof
                                                                                             integer?/c)
                                                                                            j7230
                                                                                            k7231
                                                                                            (f7232
                                                                                             (integer?/c
                                                                                              j7230
                                                                                              k7231
                                                                                              g7229)))))
                                                                                       'module
                                                                                       'importer
                                                                                       mk-list))
                                                                                     (x8157
                                                                                      (input)))
                                                                              (x8158
                                                                               x8157)))
                                                                           (g8156
                                                                            (letrec ((x8160
                                                                                      ((lambda (j7234
                                                                                                k7235
                                                                                                f7236)
                                                                                         (lambda (g7233)
                                                                                           ((listof
                                                                                             (cons/c
                                                                                              integer?/c
                                                                                              integer?/c))
                                                                                            j7234
                                                                                            k7235
                                                                                            (f7236
                                                                                             (integer?/c
                                                                                              j7234
                                                                                              k7235
                                                                                              g7233)))))
                                                                                       'module
                                                                                       'importer
                                                                                       main))
                                                                                     (x8159
                                                                                      (input)))
                                                                              (x8160
                                                                               x8159))))
                                                                    g8156)))
                                                          g8154)))
                                                g8153))))
                                    g8136)))
                          g8135))))
              g7248)))
    g7247))
