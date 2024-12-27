(letrec ((any? (lambda (v) (letrec ((g7243 #t)) g7243)))
         (meta (lambda (v) (letrec ((g7244 v)) g7244)))
         (member
          (lambda (v lst)
            (letrec ((g7245
                      (letrec ((g7246
                                (letrec ((x-e7247 lst))
                                  (match
                                   x-e7247
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7248 (eq? v v1)))
                                       (if x-cnd7248 #t (member v vs)))))))))
                        g7246)))
              g7245)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7249 (lambda (v) (letrec ((g7250 v)) g7250)))) g7249)))
         (nonzero?
          (lambda (v)
            (letrec ((g7251 (letrec ((x7252 (= v 0))) (not x7252)))) g7251))))
  (letrec ((g7253
            (letrec ((g7254
                      (letrec ((real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7255
                                            (letrec ((x-cnd7256 (real? g7162)))
                                              (if x-cnd7256
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7255)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7257
                                            (letrec ((x-cnd7258
                                                      (boolean? g7165)))
                                              (if x-cnd7258
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7257)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7259
                                            (letrec ((x-cnd7260
                                                      (number? g7168)))
                                              (if x-cnd7260
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7259)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7261
                                            (letrec ((x-cnd7262
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7262
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7261)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7263
                                            (letrec ((x-cnd7264
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7264
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7263)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7265
                                            (letrec ((x-cnd7266 (pair? g7177)))
                                              (if x-cnd7266
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7265)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7267
                                            (letrec ((x-cnd7268 (pair? g7180)))
                                              (if x-cnd7268
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7267)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7269
                                            (letrec ((x-cnd7270
                                                      (integer? g7183)))
                                              (if x-cnd7270
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7269)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7271
                                            (lambda (k j v)
                                              (letrec ((g7272
                                                        (letrec ((x-cnd7273
                                                                  (c1 k j v)))
                                                          (if x-cnd7273
                                                            (c2 k j v)
                                                            #f))))
                                                g7272))))
                                    g7271)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7274
                                            (lambda (k j v)
                                              (letrec ((g7275
                                                        (letrec ((x-cnd7276
                                                                  (null? v)))
                                                          (if x-cnd7276
                                                            '()
                                                            (letrec ((x7280
                                                                      (letrec ((x7281
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7281)))
                                                                     (x7277
                                                                      (letrec ((x7279
                                                                                (list-of
                                                                                 contract))
                                                                               (x7278
                                                                                (cdr
                                                                                 v)))
                                                                        (x7279
                                                                         k
                                                                         j
                                                                         x7278))))
                                                              (cons
                                                               x7280
                                                               x7277))))))
                                                g7275))))
                                    g7274)))
                               (any? (lambda (v) (letrec ((g7282 #t)) g7282)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7283
                                            (letrec ((x7284 (= v 0)))
                                              (not x7284))))
                                    g7283)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7285
                                            (letrec ((x-cnd7286
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7286
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7285)))
                               (meta (lambda (v) (letrec ((g7287 v)) g7287)))
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
                                (lambda (cnd) (letrec ((g7288 #t)) g7288)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7289
                                            (letrec ((x7290
                                                      (letrec ((x7291 (cdr x)))
                                                        (cdr x7291))))
                                              (cdr x7290))))
                                    g7289)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7292
                                            (letrec ((x7295 (procedure? f)))
                                              (assert x7295)))
                                           (g7293
                                            (letrec ((x7296 (list? l)))
                                              (assert x7296)))
                                           (g7294
                                            (letrec ((x-cnd7297 (null? l)))
                                              (if x-cnd7297
                                                '()
                                                (letrec ((x7300
                                                          (letrec ((x7301
                                                                    (car l)))
                                                            (f x7301)))
                                                         (x7298
                                                          (letrec ((x7299
                                                                    (cdr l)))
                                                            (map f x7299))))
                                                  (cons x7300 x7298))))))
                                    g7294)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7302
                                            (letrec ((x7303 (car x)))
                                              (cdr x7303))))
                                    g7302)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7304
                                            (letrec ((x7305
                                                      (letrec ((x7306
                                                                (letrec ((x7307
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7307))))
                                                        (cdr x7306))))
                                              (car x7305))))
                                    g7304)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7308
                                            (letrec ((x7309
                                                      (letrec ((x7310
                                                                (letrec ((x7311
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7311))))
                                                        (car x7310))))
                                              (cdr x7309))))
                                    g7308)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7312
                                            (letrec ((x7315
                                                      (string? filename)))
                                              (assert x7315)))
                                           (g7313
                                            (letrec ((x7316 (procedure? proc)))
                                              (assert x7316)))
                                           (g7314
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7317
                                                        (close-output-port
                                                         output-port))
                                                       (g7318 res))
                                                g7318))))
                                    g7314)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7319
                                            (letrec ((x7320
                                                      (letrec ((x7321 (cdr x)))
                                                        (cdr x7321))))
                                              (car x7320))))
                                    g7319)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7322
                                            (letrec ((x7323
                                                      (letrec ((x7324
                                                                (letrec ((x7325
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7325))))
                                                        (car x7324))))
                                              (cdr x7323))))
                                    g7322)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7326
                                            (letrec ((x7328 (list? l)))
                                              (assert x7328)))
                                           (g7327
                                            (letrec ((x-cnd7329 (null? l)))
                                              (if x-cnd7329
                                                #f
                                                (letrec ((x-cnd7330
                                                          (letrec ((x7331
                                                                    (caar l)))
                                                            (eq? x7331 k))))
                                                  (if x-cnd7330
                                                    (car l)
                                                    (letrec ((x7332 (cdr l)))
                                                      (assq k x7332))))))))
                                    g7327)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7333
                                            (letrec ((x7334 (modulo x 2)))
                                              (= 0 x7334))))
                                    g7333)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7335
                                            (letrec ((x7337 (list? l)))
                                              (assert x7337)))
                                           (g7336
                                            (letrec ((x-cnd7338 (null? l)))
                                              (if x-cnd7338
                                                ""
                                                (letrec ((x7341
                                                          (letrec ((x7342
                                                                    (car l)))
                                                            (char->string
                                                             x7342)))
                                                         (x7339
                                                          (letrec ((x7340
                                                                    (cdr l)))
                                                            (list->string
                                                             x7340))))
                                                  (string-append
                                                   x7341
                                                   x7339))))))
                                    g7336)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7343
                                            (letrec ((x7346 (char? c1)))
                                              (assert x7346)))
                                           (g7344
                                            (letrec ((x7347 (char? c2)))
                                              (assert x7347)))
                                           (g7345
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7348
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7348))))
                                    g7345)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7349
                                            (letrec ((x7350
                                                      (letrec ((x7351
                                                                (letrec ((x7352
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7352))))
                                                        (cdr x7351))))
                                              (cdr x7350))))
                                    g7349)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7353
                                            (letrec ((x7356 (list? l)))
                                              (assert x7356)))
                                           (g7354
                                            (letrec ((x7357 (numer?)))
                                              (assert x7357)))
                                           (g7355
                                            (letrec ((x-cnd7358 (zero? k)))
                                              (if x-cnd7358
                                                x
                                                (letrec ((x7360 (cdr x))
                                                         (x7359 (- k 1)))
                                                  (list-tail x7360 x7359))))))
                                    g7355)))
                               (halt (lambda () (letrec ((g7361 '())) g7361)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7362
                                            (letrec ((x-cnd7363
                                                      (letrec ((x7364 #\a))
                                                        (char-ci>=? c x7364))))
                                              (if x-cnd7363
                                                (letrec ((x7365 #\z))
                                                  (char-ci<=? c x7365))
                                                #f))))
                                    g7362)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7366
                                            (letrec ((x7368 (number? x)))
                                              (assert x7368)))
                                           (g7367
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7369
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7370
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7370)))))
                                                g7369))))
                                    g7367)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7371
                                            (letrec ((val7146
                                                      (letrec ((x7372
                                                                (char->integer
                                                                 c)))
                                                        (= x7372 9))))
                                              (letrec ((g7373
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7374
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7374
                                                                       10))))
                                                            (letrec ((g7375
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7376
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7376
                                                                           32)))))
                                                              g7375)))))
                                                g7373))))
                                    g7371)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7377
                                            (letrec ((x7378
                                                      (letrec ((x7379 (car x)))
                                                        (cdr x7379))))
                                              (cdr x7378))))
                                    g7377)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7380
                                            (letrec ((x7382 (number? x)))
                                              (assert x7382)))
                                           (g7381 (> x 0)))
                                    g7381)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7383 #f)) g7383)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7384
                                            (letrec ((x7385 (cdr x)))
                                              (cdr x7385))))
                                    g7384)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7386
                                            (letrec ((x7388 (number? x)))
                                              (assert x7388)))
                                           (g7387
                                            (letrec ((x-cnd7389 (< x 0)))
                                              (if x-cnd7389
                                                (ceiling x)
                                                (floor x)))))
                                    g7387)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7390
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7391
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7393
                                                                              (null?
                                                                               a))
                                                                             (x7392
                                                                              (null?
                                                                               b)))
                                                                      (and x7393
                                                                           x7392))))
                                                            (letrec ((g7394
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7397
                                                                                            (string?
                                                                                             a))
                                                                                           (x7396
                                                                                            (string?
                                                                                             b))
                                                                                           (x7395
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7397
                                                                                         x7396
                                                                                         x7395))))
                                                                          (letrec ((g7398
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7406
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7405
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7402
                                                                                                          (letrec ((x7404
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7403
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7404
                                                                                                             x7403)))
                                                                                                         (x7399
                                                                                                          (letrec ((x7401
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7400
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7401
                                                                                                             x7400))))
                                                                                                  (and x7406
                                                                                                       x7405
                                                                                                       x7402
                                                                                                       x7399))))
                                                                                        (letrec ((g7407
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7426
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7425
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7408
                                                                                                              (letrec ((x7422
                                                                                                                        (letrec ((x7423
                                                                                                                                  (letrec ((x7424
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7424))))
                                                                                                                          (x7423)))
                                                                                                                       (x7409
                                                                                                                        (letrec ((x7420
                                                                                                                                  (letrec ((x7421
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7421
                                                                                                                                     n)))
                                                                                                                                 (x7410
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7411
                                                                                                                                                        (letrec ((x7418
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7412
                                                                                                                                                                  (letrec ((x7415
                                                                                                                                                                            (letrec ((x7417
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7416
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7417
                                                                                                                                                                               x7416)))
                                                                                                                                                                           (x7413
                                                                                                                                                                            (letrec ((x7414
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7414))))
                                                                                                                                                                    (and x7415
                                                                                                                                                                         x7413))))
                                                                                                                                                          (or x7418
                                                                                                                                                              x7412))))
                                                                                                                                                g7411))))
                                                                                                                                    (letrec ((g7419
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7419))))
                                                                                                                          (and x7420
                                                                                                                               x7410))))
                                                                                                                (let x7422 x7409))))
                                                                                                      (and x7426
                                                                                                           x7425
                                                                                                           x7408)))))
                                                                                          g7407)))))
                                                                            g7398)))))
                                                              g7394)))))
                                                g7391))))
                                    g7390)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7427
                                            (letrec ((x7428
                                                      (letrec ((x7429
                                                                (letrec ((x7430
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7430))))
                                                        (car x7429))))
                                              (cdr x7428))))
                                    g7427)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7431
                                            (letrec ((x7432
                                                      (letrec ((x7433
                                                                (letrec ((x7434
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7434))))
                                                        (car x7433))))
                                              (car x7432))))
                                    g7431)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7435 (eq? x y))) g7435)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7436
                                            (letrec ((x7438 (number? x)))
                                              (assert x7438)))
                                           (g7437
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7439
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7440
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7440)))))
                                                g7439))))
                                    g7437)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7441
                                            (letrec ((x7444
                                                      (string? filename)))
                                              (assert x7444)))
                                           (g7442
                                            (letrec ((x7445 (procedure? proc)))
                                              (assert x7445)))
                                           (g7443
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7446
                                                        (close-input-port
                                                         input-port))
                                                       (g7447 res))
                                                g7447))))
                                    g7443)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7448 (cons x '()))) g7448)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7449
                                            (letrec ((x7452 (char? c1)))
                                              (assert x7452)))
                                           (g7450
                                            (letrec ((x7453 (char? c2)))
                                              (assert x7453)))
                                           (g7451
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7454
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7454))))
                                    g7451)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7455
                                            (letrec ((x7456
                                                      (letrec ((x7457 (car x)))
                                                        (car x7457))))
                                              (cdr x7456))))
                                    g7455)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7458
                                            (letrec ((x7459
                                                      (letrec ((x7460
                                                                (letrec ((x7461
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7461))))
                                                        (car x7460))))
                                              (cdr x7459))))
                                    g7458)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7462
                                            (letrec ((x7463
                                                      (letrec ((x7464 (car x)))
                                                        (cdr x7464))))
                                              (car x7463))))
                                    g7462)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7465
                                            (letrec ((x7466
                                                      (letrec ((x7467 (cdr x)))
                                                        (car x7467))))
                                              (car x7466))))
                                    g7465)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7468
                                            (letrec ((x7471 (char? c1)))
                                              (assert x7471)))
                                           (g7469
                                            (letrec ((x7472 (char? c2)))
                                              (assert x7472)))
                                           (g7470
                                            (letrec ((x7473
                                                      (char-ci<=? c1 c2)))
                                              (not x7473))))
                                    g7470)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7474
                                            (letrec ((x7475
                                                      (letrec ((x7476
                                                                (letrec ((x7477
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7477))))
                                                        (car x7476))))
                                              (car x7475))))
                                    g7474)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7478
                                            (letrec ((x7480 (number? x)))
                                              (assert x7480)))
                                           (g7479 (< x 0)))
                                    g7479)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7481 (memq e l))) g7481)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7482
                                            (letrec ((x7483
                                                      (letrec ((x7484 (car x)))
                                                        (car x7484))))
                                              (car x7483))))
                                    g7482)))
                               (debug
                                (lambda (e) (letrec ((g7485 '())) g7485)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7486
                                            (letrec ((x7488 (list? l)))
                                              (assert x7488)))
                                           (g7487
                                            (letrec ((x-cnd7489 (null? l)))
                                              (if x-cnd7489
                                                '()
                                                (letrec ((x7492
                                                          (letrec ((x7493
                                                                    (cdr l)))
                                                            (reverse x7493)))
                                                         (x7490
                                                          (letrec ((x7491
                                                                    (car l)))
                                                            (list x7491))))
                                                  (append x7492 x7490))))))
                                    g7487)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7494
                                            (letrec ((x7495
                                                      (letrec ((x7496
                                                                (letrec ((x7497
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7497))))
                                                        (car x7496))))
                                              (car x7495))))
                                    g7494)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7498
                                            (letrec ((x7499
                                                      (letrec ((x7500
                                                                (letrec ((x7501
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7501))))
                                                        (cdr x7500))))
                                              (cdr x7499))))
                                    g7498)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7502
                                            (letrec ((x7504 (number? x)))
                                              (assert x7504)))
                                           (g7503
                                            (letrec ((x7505 (modulo x 2)))
                                              (= 1 x7505))))
                                    g7503)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7506
                                            (letrec ((x7507
                                                      (letrec ((x7508
                                                                (letrec ((x7509
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7509))))
                                                        (car x7508))))
                                              (car x7507))))
                                    g7506)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7510
                                            (letrec ((x7513 (procedure? proc)))
                                              (assert x7513)))
                                           (g7511
                                            (letrec ((x7514 (list? args)))
                                              (assert x7514)))
                                           (g7512
                                            (if cnd
                                              (letrec ((g7515 (proc))) g7515)
                                              (if cnd
                                                (letrec ((g7516
                                                          (letrec ((x7517
                                                                    (car
                                                                     args)))
                                                            (proc x7517))))
                                                  g7516)
                                                (if cnd
                                                  (letrec ((g7518
                                                            (letrec ((x7520
                                                                      (car
                                                                       args))
                                                                     (x7519
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7520
                                                               x7519))))
                                                    g7518)
                                                  (if cnd
                                                    (letrec ((g7521
                                                              (letrec ((x7524
                                                                        (car
                                                                         args))
                                                                       (x7523
                                                                        (cadr
                                                                         args))
                                                                       (x7522
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7524
                                                                 x7523
                                                                 x7522))))
                                                      g7521)
                                                    (if cnd
                                                      (letrec ((g7525
                                                                (letrec ((x7529
                                                                          (car
                                                                           args))
                                                                         (x7528
                                                                          (cadr
                                                                           args))
                                                                         (x7527
                                                                          (caddr
                                                                           args))
                                                                         (x7526
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7529
                                                                   x7528
                                                                   x7527
                                                                   x7526))))
                                                        g7525)
                                                      (if cnd
                                                        (letrec ((g7530
                                                                  (letrec ((x7536
                                                                            (car
                                                                             args))
                                                                           (x7535
                                                                            (cadr
                                                                             args))
                                                                           (x7534
                                                                            (caddr
                                                                             args))
                                                                           (x7533
                                                                            (cadddr
                                                                             args))
                                                                           (x7531
                                                                            (letrec ((x7532
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7532))))
                                                                    (proc
                                                                     x7536
                                                                     x7535
                                                                     x7534
                                                                     x7533
                                                                     x7531))))
                                                          g7530)
                                                        (if cnd
                                                          (letrec ((g7537
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
                                                                                 x7539))))
                                                                      (proc
                                                                       x7545
                                                                       x7544
                                                                       x7543
                                                                       x7542
                                                                       x7540
                                                                       x7538))))
                                                            g7537)
                                                          (if cnd
                                                            (letrec ((g7546
                                                                      (letrec ((x7556
                                                                                (car
                                                                                 args))
                                                                               (x7555
                                                                                (cadr
                                                                                 args))
                                                                               (x7554
                                                                                (caddr
                                                                                 args))
                                                                               (x7553
                                                                                (cadddr
                                                                                 args))
                                                                               (x7551
                                                                                (letrec ((x7552
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7552)))
                                                                               (x7549
                                                                                (letrec ((x7550
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7550)))
                                                                               (x7547
                                                                                (letrec ((x7548
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7548))))
                                                                        (proc
                                                                         x7556
                                                                         x7555
                                                                         x7554
                                                                         x7553
                                                                         x7551
                                                                         x7549
                                                                         x7547))))
                                                              g7546)
                                                            (letrec ((g7557
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7557)))))))))))
                                    g7512)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7558
                                            (letrec ((x7560 (list? l)))
                                              (assert x7560)))
                                           (g7559
                                            (letrec ((x-cnd7561 (null? l)))
                                              (if x-cnd7561
                                                #f
                                                (letrec ((x-cnd7562
                                                          (letrec ((x7563
                                                                    (car l)))
                                                            (equal? x7563 e))))
                                                  (if x-cnd7562
                                                    l
                                                    (letrec ((x7564 (cdr l)))
                                                      (member e x7564))))))))
                                    g7559)))
                               (cddddr
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
                                              (cdr x7566))))
                                    g7565)))
                               (cadddr
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
                                              (car x7570))))
                                    g7569)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7573 (random 42))) g7573)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7574
                                            (letrec ((x7576 (number? x)))
                                              (assert x7576)))
                                           (g7575 (= x 0)))
                                    g7575)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7577
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7578
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7578))))
                                    g7577)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7579
                                            (letrec ((x7580 (cdr x)))
                                              (car x7580))))
                                    g7579)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7581
                                            (letrec ((val7156
                                                      (letrec ((x7584
                                                                (pair? l))
                                                               (x7582
                                                                (letrec ((x7583
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7583))))
                                                        (and x7584 x7582))))
                                              (letrec ((g7585
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7585))))
                                    g7581)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7586
                                            (letrec ((x7587
                                                      (letrec ((x7588
                                                                (letrec ((x7589
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7589))))
                                                        (cdr x7588))))
                                              (cdr x7587))))
                                    g7586)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7590
                                            (letrec ((x-cnd7591
                                                      (letrec ((x7592 #\0))
                                                        (char<=? x7592 c))))
                                              (if x-cnd7591
                                                (letrec ((x7593 #\9))
                                                  (char<=? c x7593))
                                                #f))))
                                    g7590)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7594
                                            (letrec ((x7596 (list? l)))
                                              (assert x7596)))
                                           (g7595
                                            (letrec ((x-cnd7597 (null? l)))
                                              (if x-cnd7597
                                                #f
                                                (letrec ((x-cnd7598
                                                          (letrec ((x7599
                                                                    (caar l)))
                                                            (eqv? x7599 k))))
                                                  (if x-cnd7598
                                                    (car l)
                                                    (letrec ((x7600 (cdr l)))
                                                      (assq k x7600))))))))
                                    g7595)))
                               (not
                                (lambda (x)
                                  (letrec ((g7601 (if x #f #t))) g7601)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7602 (append l1 l2))) g7602)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7603
                                            (letrec ((x7605 (list? l)))
                                              (assert x7605)))
                                           (g7604
                                            (letrec ((x-cnd7606 (null? l)))
                                              (if x-cnd7606
                                                #f
                                                (letrec ((x-cnd7607
                                                          (letrec ((x7608
                                                                    (car l)))
                                                            (eq? x7608 e))))
                                                  (if x-cnd7607
                                                    l
                                                    (letrec ((x7609 (cdr l)))
                                                      (memq e x7609))))))))
                                    g7604)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7610
                                            (letrec ((x7611
                                                      (letrec ((x7612
                                                                (letrec ((x7613
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7613))))
                                                        (cdr x7612))))
                                              (car x7611))))
                                    g7610)))
                               (length
                                (lambda (l)
                                  (letrec ((g7614
                                            (letrec ((x7616 (list? l)))
                                              (assert x7616)))
                                           (g7615
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7617
                                                                  (letrec ((x-cnd7618
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7618
                                                                      0
                                                                      (letrec ((x7619
                                                                                (letrec ((x7620
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7620))))
                                                                        (+
                                                                         1
                                                                         x7619))))))
                                                          g7617))))
                                              (letrec ((g7621 (rec l)))
                                                g7621))))
                                    g7615)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7622
                                            (letrec ((x7625 (char? c1)))
                                              (assert x7625)))
                                           (g7623
                                            (letrec ((x7626 (char? c2)))
                                              (assert x7626)))
                                           (g7624
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7627
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7627))))
                                    g7624)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7628
                                            (letrec ((x7629 (string<=? s1 s2)))
                                              (not x7629))))
                                    g7628)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7630
                                            (letrec ((x7631
                                                      (letrec ((x7632 (cdr x)))
                                                        (car x7632))))
                                              (cdr x7631))))
                                    g7630)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7633
                                            (letrec ((x7635 (list? l)))
                                              (assert x7635)))
                                           (g7634
                                            (letrec ((x-cnd7636 (null? l)))
                                              (if x-cnd7636
                                                #f
                                                (letrec ((x-cnd7637
                                                          (letrec ((x7638
                                                                    (caar l)))
                                                            (equal? x7638 k))))
                                                  (if x-cnd7637
                                                    (car l)
                                                    (letrec ((x7639 (cdr l)))
                                                      (assoc k x7639))))))))
                                    g7634)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7640
                                            (letrec ((x7641 (car x)))
                                              (car x7641))))
                                    g7640)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7642
                                            (letrec ((x7645 (char? c1)))
                                              (assert x7645)))
                                           (g7643
                                            (letrec ((x7646 (char? c2)))
                                              (assert x7646)))
                                           (g7644
                                            (letrec ((x7647 (char<=? c1 c2)))
                                              (not x7647))))
                                    g7644)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7648
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7649
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7649))))
                                    g7648)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7650
                                            (letrec ((x7653 (procedure? f)))
                                              (assert x7653)))
                                           (g7651
                                            (letrec ((x7654 (list? l)))
                                              (assert x7654)))
                                           (g7652
                                            (letrec ((x-cnd7655 (null? l)))
                                              (if x-cnd7655
                                                #t
                                                (letrec ((x-cnd7656 (pair? l)))
                                                  (if x-cnd7656
                                                    (letrec ((g7657
                                                              (letrec ((x7659
                                                                        (car
                                                                         l)))
                                                                (f x7659)))
                                                             (g7658
                                                              (letrec ((x7660
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7660))))
                                                      g7658)
                                                    '()))))))
                                    g7652)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7661
                                            (letrec ((x7663 (number? x)))
                                              (assert x7663)))
                                           (g7662
                                            (letrec ((x-cnd7664 (< x 0)))
                                              (if x-cnd7664 (- 0 x) x))))
                                    g7662)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7665
                                            (letrec ((x7668 (char? c1)))
                                              (assert x7668)))
                                           (g7666
                                            (letrec ((x7669 (char? c2)))
                                              (assert x7669)))
                                           (g7667
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7670
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7670))))
                                    g7667)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7671
                                            (letrec ((x7672
                                                      (letrec ((x7673
                                                                (letrec ((x7674
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7674))))
                                                        (cdr x7673))))
                                              (car x7672))))
                                    g7671)))
                               (newline
                                (lambda () (letrec ((g7675 #f)) g7675)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7676
                                            (letrec ((x7678
                                                      (letrec ((x7679 (* m n)))
                                                        (abs x7679)))
                                                     (x7677 (gcd m n)))
                                              (/ x7678 x7677))))
                                    g7676)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7680
                                            (letrec ((x7682 (number? x)))
                                              (assert x7682)))
                                           (g7681
                                            (letrec ((x7683 (<= x y)))
                                              (not x7683))))
                                    g7681)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7684
                                            (letrec ((x7688 (list? l)))
                                              (assert x7688)))
                                           (g7685
                                            (letrec ((x7689 (number? index)))
                                              (assert x7689)))
                                           (g7686
                                            (letrec ((x7690
                                                      (letrec ((x7691
                                                                (length l)))
                                                        (< index x7691))))
                                              (assert x7690)))
                                           (g7687
                                            (letrec ((x-cnd7692 (= index 0)))
                                              (if x-cnd7692
                                                (car l)
                                                (letrec ((x7694 (cdr l))
                                                         (x7693 (- index 1)))
                                                  (list-ref x7694 x7693))))))
                                    g7687)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7695
                                            (letrec ((x-cnd7696 (= b 0)))
                                              (if x-cnd7696
                                                a
                                                (letrec ((x7697 (modulo a b)))
                                                  (gcd b x7697))))))
                                    g7695)))
                               (real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7698
                                            (letrec ((x-cnd7699 (real? g7162)))
                                              (if x-cnd7699
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7698)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7700
                                            (letrec ((x-cnd7701
                                                      (boolean? g7165)))
                                              (if x-cnd7701
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7700)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7702
                                            (letrec ((x-cnd7703
                                                      (number? g7168)))
                                              (if x-cnd7703
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7702)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7704
                                            (letrec ((x-cnd7705
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7705
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7704)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7706
                                            (letrec ((x-cnd7707
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7707
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7706)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7708
                                            (letrec ((x-cnd7709 (pair? g7177)))
                                              (if x-cnd7709
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7708)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7710
                                            (letrec ((x-cnd7711 (pair? g7180)))
                                              (if x-cnd7711
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7710)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7712
                                            (letrec ((x-cnd7713
                                                      (integer? g7183)))
                                              (if x-cnd7713
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7712)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7714
                                            (lambda (k j v)
                                              (letrec ((g7715
                                                        (letrec ((x-cnd7716
                                                                  (c1 k j v)))
                                                          (if x-cnd7716
                                                            (c2 k j v)
                                                            #f))))
                                                g7715))))
                                    g7714)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7717
                                            (lambda (k j v)
                                              (letrec ((g7718
                                                        (letrec ((x-cnd7719
                                                                  (null? v)))
                                                          (if x-cnd7719
                                                            '()
                                                            (letrec ((x7723
                                                                      (letrec ((x7724
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7724)))
                                                                     (x7720
                                                                      (letrec ((x7722
                                                                                (list-of
                                                                                 contract))
                                                                               (x7721
                                                                                (cdr
                                                                                 v)))
                                                                        (x7722
                                                                         k
                                                                         j
                                                                         x7721))))
                                                              (cons
                                                               x7723
                                                               x7720))))))
                                                g7718))))
                                    g7717)))
                               (any? (lambda (v) (letrec ((g7725 #t)) g7725)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7726
                                            (letrec ((x7727 (= v 0)))
                                              (not x7727))))
                                    g7726)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7728
                                            (letrec ((x-cnd7729
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7729
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7728)))
                               (meta (lambda (v) (letrec ((g7730 v)) g7730)))
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
                                (lambda (cnd) (letrec ((g7731 #t)) g7731)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7732
                                            (letrec ((x7733
                                                      (letrec ((x7734 (cdr x)))
                                                        (cdr x7734))))
                                              (cdr x7733))))
                                    g7732)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7735
                                            (letrec ((x7738 (procedure? f)))
                                              (assert x7738)))
                                           (g7736
                                            (letrec ((x7739 (list? l)))
                                              (assert x7739)))
                                           (g7737
                                            (letrec ((x-cnd7740 (null? l)))
                                              (if x-cnd7740
                                                '()
                                                (letrec ((x7743
                                                          (letrec ((x7744
                                                                    (car l)))
                                                            (f x7744)))
                                                         (x7741
                                                          (letrec ((x7742
                                                                    (cdr l)))
                                                            (map f x7742))))
                                                  (cons x7743 x7741))))))
                                    g7737)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7745
                                            (letrec ((x7746 (car x)))
                                              (cdr x7746))))
                                    g7745)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7747
                                            (letrec ((x7748
                                                      (letrec ((x7749
                                                                (letrec ((x7750
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7750))))
                                                        (cdr x7749))))
                                              (car x7748))))
                                    g7747)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7751
                                            (letrec ((x7752
                                                      (letrec ((x7753
                                                                (letrec ((x7754
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7754))))
                                                        (car x7753))))
                                              (cdr x7752))))
                                    g7751)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7755
                                            (letrec ((x7758
                                                      (string? filename)))
                                              (assert x7758)))
                                           (g7756
                                            (letrec ((x7759 (procedure? proc)))
                                              (assert x7759)))
                                           (g7757
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7760
                                                        (close-output-port
                                                         output-port))
                                                       (g7761 res))
                                                g7761))))
                                    g7757)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7762
                                            (letrec ((x7763
                                                      (letrec ((x7764 (cdr x)))
                                                        (cdr x7764))))
                                              (car x7763))))
                                    g7762)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7765
                                            (letrec ((x7766
                                                      (letrec ((x7767
                                                                (letrec ((x7768
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7768))))
                                                        (car x7767))))
                                              (cdr x7766))))
                                    g7765)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7769
                                            (letrec ((x7771 (list? l)))
                                              (assert x7771)))
                                           (g7770
                                            (letrec ((x-cnd7772 (null? l)))
                                              (if x-cnd7772
                                                #f
                                                (letrec ((x-cnd7773
                                                          (letrec ((x7774
                                                                    (caar l)))
                                                            (eq? x7774 k))))
                                                  (if x-cnd7773
                                                    (car l)
                                                    (letrec ((x7775 (cdr l)))
                                                      (assq k x7775))))))))
                                    g7770)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7776
                                            (letrec ((x7777 (modulo x 2)))
                                              (= 0 x7777))))
                                    g7776)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7778
                                            (letrec ((x7780 (list? l)))
                                              (assert x7780)))
                                           (g7779
                                            (letrec ((x-cnd7781 (null? l)))
                                              (if x-cnd7781
                                                ""
                                                (letrec ((x7784
                                                          (letrec ((x7785
                                                                    (car l)))
                                                            (char->string
                                                             x7785)))
                                                         (x7782
                                                          (letrec ((x7783
                                                                    (cdr l)))
                                                            (list->string
                                                             x7783))))
                                                  (string-append
                                                   x7784
                                                   x7782))))))
                                    g7779)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7786
                                            (letrec ((x7789 (char? c1)))
                                              (assert x7789)))
                                           (g7787
                                            (letrec ((x7790 (char? c2)))
                                              (assert x7790)))
                                           (g7788
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7791
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7791))))
                                    g7788)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7792
                                            (letrec ((x7793
                                                      (letrec ((x7794
                                                                (letrec ((x7795
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7795))))
                                                        (cdr x7794))))
                                              (cdr x7793))))
                                    g7792)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7796
                                            (letrec ((x7799 (list? l)))
                                              (assert x7799)))
                                           (g7797
                                            (letrec ((x7800 (numer?)))
                                              (assert x7800)))
                                           (g7798
                                            (letrec ((x-cnd7801 (zero? k)))
                                              (if x-cnd7801
                                                x
                                                (letrec ((x7803 (cdr x))
                                                         (x7802 (- k 1)))
                                                  (list-tail x7803 x7802))))))
                                    g7798)))
                               (halt (lambda () (letrec ((g7804 '())) g7804)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7805
                                            (letrec ((x-cnd7806
                                                      (letrec ((x7807 #\a))
                                                        (char-ci>=? c x7807))))
                                              (if x-cnd7806
                                                (letrec ((x7808 #\z))
                                                  (char-ci<=? c x7808))
                                                #f))))
                                    g7805)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7809
                                            (letrec ((x7811 (number? x)))
                                              (assert x7811)))
                                           (g7810
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7812
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7813
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7813)))))
                                                g7812))))
                                    g7810)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7814
                                            (letrec ((val7146
                                                      (letrec ((x7815
                                                                (char->integer
                                                                 c)))
                                                        (= x7815 9))))
                                              (letrec ((g7816
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7817
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7817
                                                                       10))))
                                                            (letrec ((g7818
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7819
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7819
                                                                           32)))))
                                                              g7818)))))
                                                g7816))))
                                    g7814)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7820
                                            (letrec ((x7821
                                                      (letrec ((x7822 (car x)))
                                                        (cdr x7822))))
                                              (cdr x7821))))
                                    g7820)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7823
                                            (letrec ((x7825 (number? x)))
                                              (assert x7825)))
                                           (g7824 (> x 0)))
                                    g7824)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7826 #f)) g7826)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7827
                                            (letrec ((x7828 (cdr x)))
                                              (cdr x7828))))
                                    g7827)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7829
                                            (letrec ((x7831 (number? x)))
                                              (assert x7831)))
                                           (g7830
                                            (letrec ((x-cnd7832 (< x 0)))
                                              (if x-cnd7832
                                                (ceiling x)
                                                (floor x)))))
                                    g7830)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7833
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7834
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7836
                                                                              (null?
                                                                               a))
                                                                             (x7835
                                                                              (null?
                                                                               b)))
                                                                      (and x7836
                                                                           x7835))))
                                                            (letrec ((g7837
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7840
                                                                                            (string?
                                                                                             a))
                                                                                           (x7839
                                                                                            (string?
                                                                                             b))
                                                                                           (x7838
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7840
                                                                                         x7839
                                                                                         x7838))))
                                                                          (letrec ((g7841
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7849
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7848
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7845
                                                                                                          (letrec ((x7847
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7846
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7847
                                                                                                             x7846)))
                                                                                                         (x7842
                                                                                                          (letrec ((x7844
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7843
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7844
                                                                                                             x7843))))
                                                                                                  (and x7849
                                                                                                       x7848
                                                                                                       x7845
                                                                                                       x7842))))
                                                                                        (letrec ((g7850
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7869
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7868
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7851
                                                                                                              (letrec ((x7865
                                                                                                                        (letrec ((x7866
                                                                                                                                  (letrec ((x7867
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7867))))
                                                                                                                          (x7866)))
                                                                                                                       (x7852
                                                                                                                        (letrec ((x7863
                                                                                                                                  (letrec ((x7864
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7864
                                                                                                                                     n)))
                                                                                                                                 (x7853
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7854
                                                                                                                                                        (letrec ((x7861
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7855
                                                                                                                                                                  (letrec ((x7858
                                                                                                                                                                            (letrec ((x7860
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7859
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7860
                                                                                                                                                                               x7859)))
                                                                                                                                                                           (x7856
                                                                                                                                                                            (letrec ((x7857
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7857))))
                                                                                                                                                                    (and x7858
                                                                                                                                                                         x7856))))
                                                                                                                                                          (or x7861
                                                                                                                                                              x7855))))
                                                                                                                                                g7854))))
                                                                                                                                    (letrec ((g7862
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7862))))
                                                                                                                          (and x7863
                                                                                                                               x7853))))
                                                                                                                (let x7865 x7852))))
                                                                                                      (and x7869
                                                                                                           x7868
                                                                                                           x7851)))))
                                                                                          g7850)))))
                                                                            g7841)))))
                                                              g7837)))))
                                                g7834))))
                                    g7833)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7870
                                            (letrec ((x7871
                                                      (letrec ((x7872
                                                                (letrec ((x7873
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7873))))
                                                        (car x7872))))
                                              (cdr x7871))))
                                    g7870)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7874
                                            (letrec ((x7875
                                                      (letrec ((x7876
                                                                (letrec ((x7877
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7877))))
                                                        (car x7876))))
                                              (car x7875))))
                                    g7874)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7878 (eq? x y))) g7878)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7879
                                            (letrec ((x7881 (number? x)))
                                              (assert x7881)))
                                           (g7880
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7882
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7883
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7883)))))
                                                g7882))))
                                    g7880)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7884
                                            (letrec ((x7887
                                                      (string? filename)))
                                              (assert x7887)))
                                           (g7885
                                            (letrec ((x7888 (procedure? proc)))
                                              (assert x7888)))
                                           (g7886
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7889
                                                        (close-input-port
                                                         input-port))
                                                       (g7890 res))
                                                g7890))))
                                    g7886)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7891 (cons x '()))) g7891)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7892
                                            (letrec ((x7895 (char? c1)))
                                              (assert x7895)))
                                           (g7893
                                            (letrec ((x7896 (char? c2)))
                                              (assert x7896)))
                                           (g7894
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7897
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7897))))
                                    g7894)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7898
                                            (letrec ((x7899
                                                      (letrec ((x7900 (car x)))
                                                        (car x7900))))
                                              (cdr x7899))))
                                    g7898)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7901
                                            (letrec ((x7902
                                                      (letrec ((x7903
                                                                (letrec ((x7904
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7904))))
                                                        (car x7903))))
                                              (cdr x7902))))
                                    g7901)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7905
                                            (letrec ((x7906
                                                      (letrec ((x7907 (car x)))
                                                        (cdr x7907))))
                                              (car x7906))))
                                    g7905)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7908
                                            (letrec ((x7909
                                                      (letrec ((x7910 (cdr x)))
                                                        (car x7910))))
                                              (car x7909))))
                                    g7908)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7911
                                            (letrec ((x7914 (char? c1)))
                                              (assert x7914)))
                                           (g7912
                                            (letrec ((x7915 (char? c2)))
                                              (assert x7915)))
                                           (g7913
                                            (letrec ((x7916
                                                      (char-ci<=? c1 c2)))
                                              (not x7916))))
                                    g7913)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7917
                                            (letrec ((x7918
                                                      (letrec ((x7919
                                                                (letrec ((x7920
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7920))))
                                                        (car x7919))))
                                              (car x7918))))
                                    g7917)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7921
                                            (letrec ((x7923 (number? x)))
                                              (assert x7923)))
                                           (g7922 (< x 0)))
                                    g7922)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7924 (memq e l))) g7924)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7925
                                            (letrec ((x7926
                                                      (letrec ((x7927 (car x)))
                                                        (car x7927))))
                                              (car x7926))))
                                    g7925)))
                               (debug
                                (lambda (e) (letrec ((g7928 '())) g7928)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7929
                                            (letrec ((x7931 (list? l)))
                                              (assert x7931)))
                                           (g7930
                                            (letrec ((x-cnd7932 (null? l)))
                                              (if x-cnd7932
                                                '()
                                                (letrec ((x7935
                                                          (letrec ((x7936
                                                                    (cdr l)))
                                                            (reverse x7936)))
                                                         (x7933
                                                          (letrec ((x7934
                                                                    (car l)))
                                                            (list x7934))))
                                                  (append x7935 x7933))))))
                                    g7930)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7937
                                            (letrec ((x7938
                                                      (letrec ((x7939
                                                                (letrec ((x7940
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7940))))
                                                        (car x7939))))
                                              (car x7938))))
                                    g7937)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7941
                                            (letrec ((x7942
                                                      (letrec ((x7943
                                                                (letrec ((x7944
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7944))))
                                                        (cdr x7943))))
                                              (cdr x7942))))
                                    g7941)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7945
                                            (letrec ((x7947 (number? x)))
                                              (assert x7947)))
                                           (g7946
                                            (letrec ((x7948 (modulo x 2)))
                                              (= 1 x7948))))
                                    g7946)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7949
                                            (letrec ((x7950
                                                      (letrec ((x7951
                                                                (letrec ((x7952
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7952))))
                                                        (car x7951))))
                                              (car x7950))))
                                    g7949)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7953
                                            (letrec ((x7956 (procedure? proc)))
                                              (assert x7956)))
                                           (g7954
                                            (letrec ((x7957 (list? args)))
                                              (assert x7957)))
                                           (g7955
                                            (if cnd
                                              (letrec ((g7958 (proc))) g7958)
                                              (if cnd
                                                (letrec ((g7959
                                                          (letrec ((x7960
                                                                    (car
                                                                     args)))
                                                            (proc x7960))))
                                                  g7959)
                                                (if cnd
                                                  (letrec ((g7961
                                                            (letrec ((x7963
                                                                      (car
                                                                       args))
                                                                     (x7962
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7963
                                                               x7962))))
                                                    g7961)
                                                  (if cnd
                                                    (letrec ((g7964
                                                              (letrec ((x7967
                                                                        (car
                                                                         args))
                                                                       (x7966
                                                                        (cadr
                                                                         args))
                                                                       (x7965
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7967
                                                                 x7966
                                                                 x7965))))
                                                      g7964)
                                                    (if cnd
                                                      (letrec ((g7968
                                                                (letrec ((x7972
                                                                          (car
                                                                           args))
                                                                         (x7971
                                                                          (cadr
                                                                           args))
                                                                         (x7970
                                                                          (caddr
                                                                           args))
                                                                         (x7969
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7972
                                                                   x7971
                                                                   x7970
                                                                   x7969))))
                                                        g7968)
                                                      (if cnd
                                                        (letrec ((g7973
                                                                  (letrec ((x7979
                                                                            (car
                                                                             args))
                                                                           (x7978
                                                                            (cadr
                                                                             args))
                                                                           (x7977
                                                                            (caddr
                                                                             args))
                                                                           (x7976
                                                                            (cadddr
                                                                             args))
                                                                           (x7974
                                                                            (letrec ((x7975
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7975))))
                                                                    (proc
                                                                     x7979
                                                                     x7978
                                                                     x7977
                                                                     x7976
                                                                     x7974))))
                                                          g7973)
                                                        (if cnd
                                                          (letrec ((g7980
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
                                                                                 x7982))))
                                                                      (proc
                                                                       x7988
                                                                       x7987
                                                                       x7986
                                                                       x7985
                                                                       x7983
                                                                       x7981))))
                                                            g7980)
                                                          (if cnd
                                                            (letrec ((g7989
                                                                      (letrec ((x7999
                                                                                (car
                                                                                 args))
                                                                               (x7998
                                                                                (cadr
                                                                                 args))
                                                                               (x7997
                                                                                (caddr
                                                                                 args))
                                                                               (x7996
                                                                                (cadddr
                                                                                 args))
                                                                               (x7994
                                                                                (letrec ((x7995
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7995)))
                                                                               (x7992
                                                                                (letrec ((x7993
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7993)))
                                                                               (x7990
                                                                                (letrec ((x7991
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7991))))
                                                                        (proc
                                                                         x7999
                                                                         x7998
                                                                         x7997
                                                                         x7996
                                                                         x7994
                                                                         x7992
                                                                         x7990))))
                                                              g7989)
                                                            (letrec ((g8000
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g8000)))))))))))
                                    g7955)))
                               (member
                                (lambda (e l)
                                  (letrec ((g8001
                                            (letrec ((x8003 (list? l)))
                                              (assert x8003)))
                                           (g8002
                                            (letrec ((x-cnd8004 (null? l)))
                                              (if x-cnd8004
                                                #f
                                                (letrec ((x-cnd8005
                                                          (letrec ((x8006
                                                                    (car l)))
                                                            (equal? x8006 e))))
                                                  (if x-cnd8005
                                                    l
                                                    (letrec ((x8007 (cdr l)))
                                                      (member e x8007))))))))
                                    g8002)))
                               (cddddr
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
                                              (cdr x8009))))
                                    g8008)))
                               (cadddr
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
                                              (car x8013))))
                                    g8012)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8016 (random 42))) g8016)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8017
                                            (letrec ((x8019 (number? x)))
                                              (assert x8019)))
                                           (g8018 (= x 0)))
                                    g8018)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8020
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8021
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8021))))
                                    g8020)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8022
                                            (letrec ((x8023 (cdr x)))
                                              (car x8023))))
                                    g8022)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8024
                                            (letrec ((val7156
                                                      (letrec ((x8027
                                                                (pair? l))
                                                               (x8025
                                                                (letrec ((x8026
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8026))))
                                                        (and x8027 x8025))))
                                              (letrec ((g8028
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8028))))
                                    g8024)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8029
                                            (letrec ((x8030
                                                      (letrec ((x8031
                                                                (letrec ((x8032
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8032))))
                                                        (cdr x8031))))
                                              (cdr x8030))))
                                    g8029)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8033
                                            (letrec ((x-cnd8034
                                                      (letrec ((x8035 #\0))
                                                        (char<=? x8035 c))))
                                              (if x-cnd8034
                                                (letrec ((x8036 #\9))
                                                  (char<=? c x8036))
                                                #f))))
                                    g8033)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8037
                                            (letrec ((x8039 (list? l)))
                                              (assert x8039)))
                                           (g8038
                                            (letrec ((x-cnd8040 (null? l)))
                                              (if x-cnd8040
                                                #f
                                                (letrec ((x-cnd8041
                                                          (letrec ((x8042
                                                                    (caar l)))
                                                            (eqv? x8042 k))))
                                                  (if x-cnd8041
                                                    (car l)
                                                    (letrec ((x8043 (cdr l)))
                                                      (assq k x8043))))))))
                                    g8038)))
                               (not
                                (lambda (x)
                                  (letrec ((g8044 (if x #f #t))) g8044)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8045 (append l1 l2))) g8045)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8046
                                            (letrec ((x8048 (list? l)))
                                              (assert x8048)))
                                           (g8047
                                            (letrec ((x-cnd8049 (null? l)))
                                              (if x-cnd8049
                                                #f
                                                (letrec ((x-cnd8050
                                                          (letrec ((x8051
                                                                    (car l)))
                                                            (eq? x8051 e))))
                                                  (if x-cnd8050
                                                    l
                                                    (letrec ((x8052 (cdr l)))
                                                      (memq e x8052))))))))
                                    g8047)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8053
                                            (letrec ((x8054
                                                      (letrec ((x8055
                                                                (letrec ((x8056
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8056))))
                                                        (cdr x8055))))
                                              (car x8054))))
                                    g8053)))
                               (length
                                (lambda (l)
                                  (letrec ((g8057
                                            (letrec ((x8059 (list? l)))
                                              (assert x8059)))
                                           (g8058
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8060
                                                                  (letrec ((x-cnd8061
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8061
                                                                      0
                                                                      (letrec ((x8062
                                                                                (letrec ((x8063
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8063))))
                                                                        (+
                                                                         1
                                                                         x8062))))))
                                                          g8060))))
                                              (letrec ((g8064 (rec l)))
                                                g8064))))
                                    g8058)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8065
                                            (letrec ((x8068 (char? c1)))
                                              (assert x8068)))
                                           (g8066
                                            (letrec ((x8069 (char? c2)))
                                              (assert x8069)))
                                           (g8067
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8070
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8070))))
                                    g8067)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8071
                                            (letrec ((x8072 (string<=? s1 s2)))
                                              (not x8072))))
                                    g8071)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8073
                                            (letrec ((x8074
                                                      (letrec ((x8075 (cdr x)))
                                                        (car x8075))))
                                              (cdr x8074))))
                                    g8073)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8076
                                            (letrec ((x8078 (list? l)))
                                              (assert x8078)))
                                           (g8077
                                            (letrec ((x-cnd8079 (null? l)))
                                              (if x-cnd8079
                                                #f
                                                (letrec ((x-cnd8080
                                                          (letrec ((x8081
                                                                    (caar l)))
                                                            (equal? x8081 k))))
                                                  (if x-cnd8080
                                                    (car l)
                                                    (letrec ((x8082 (cdr l)))
                                                      (assoc k x8082))))))))
                                    g8077)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8083
                                            (letrec ((x8084 (car x)))
                                              (car x8084))))
                                    g8083)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8085
                                            (letrec ((x8088 (char? c1)))
                                              (assert x8088)))
                                           (g8086
                                            (letrec ((x8089 (char? c2)))
                                              (assert x8089)))
                                           (g8087
                                            (letrec ((x8090 (char<=? c1 c2)))
                                              (not x8090))))
                                    g8087)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8091
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8092
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8092))))
                                    g8091)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8093
                                            (letrec ((x8096 (procedure? f)))
                                              (assert x8096)))
                                           (g8094
                                            (letrec ((x8097 (list? l)))
                                              (assert x8097)))
                                           (g8095
                                            (letrec ((x-cnd8098 (null? l)))
                                              (if x-cnd8098
                                                #t
                                                (letrec ((x-cnd8099 (pair? l)))
                                                  (if x-cnd8099
                                                    (letrec ((g8100
                                                              (letrec ((x8102
                                                                        (car
                                                                         l)))
                                                                (f x8102)))
                                                             (g8101
                                                              (letrec ((x8103
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8103))))
                                                      g8101)
                                                    '()))))))
                                    g8095)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8104
                                            (letrec ((x8106 (number? x)))
                                              (assert x8106)))
                                           (g8105
                                            (letrec ((x-cnd8107 (< x 0)))
                                              (if x-cnd8107 (- 0 x) x))))
                                    g8105)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8108
                                            (letrec ((x8111 (char? c1)))
                                              (assert x8111)))
                                           (g8109
                                            (letrec ((x8112 (char? c2)))
                                              (assert x8112)))
                                           (g8110
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8113
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8113))))
                                    g8110)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8114
                                            (letrec ((x8115
                                                      (letrec ((x8116
                                                                (letrec ((x8117
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8117))))
                                                        (cdr x8116))))
                                              (car x8115))))
                                    g8114)))
                               (newline
                                (lambda () (letrec ((g8118 #f)) g8118)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8119
                                            (letrec ((x8121
                                                      (letrec ((x8122 (* m n)))
                                                        (abs x8122)))
                                                     (x8120 (gcd m n)))
                                              (/ x8121 x8120))))
                                    g8119)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8123
                                            (letrec ((x8125 (number? x)))
                                              (assert x8125)))
                                           (g8124
                                            (letrec ((x8126 (<= x y)))
                                              (not x8126))))
                                    g8124)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8127
                                            (letrec ((x8131 (list? l)))
                                              (assert x8131)))
                                           (g8128
                                            (letrec ((x8132 (number? index)))
                                              (assert x8132)))
                                           (g8129
                                            (letrec ((x8133
                                                      (letrec ((x8134
                                                                (length l)))
                                                        (< index x8134))))
                                              (assert x8133)))
                                           (g8130
                                            (letrec ((x-cnd8135 (= index 0)))
                                              (if x-cnd8135
                                                (car l)
                                                (letrec ((x8137 (cdr l))
                                                         (x8136 (- index 1)))
                                                  (list-ref x8137 x8136))))))
                                    g8130)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8138
                                            (letrec ((x-cnd8139 (= b 0)))
                                              (if x-cnd8139
                                                a
                                                (letrec ((x8140 (modulo a b)))
                                                  (gcd b x8140))))))
                                    g8138))))
                        (letrec ((g8141
                                  (letrec ((g8142
                                            (letrec ((mappend
                                                      (lambda (xs ys)
                                                        (letrec ((g8143
                                                                  (letrec ((x-cnd8144
                                                                            (empty?
                                                                             xs)))
                                                                    (if x-cnd8144
                                                                      ys
                                                                      (letrec ((x8147
                                                                                (car
                                                                                 xs))
                                                                               (x8145
                                                                                (letrec ((x8146
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (mappend
                                                                                   x8146
                                                                                   ys))))
                                                                        (cons
                                                                         x8147
                                                                         x8145))))))
                                                          g8143)))
                                                     (map-append
                                                      (lambda (f xs)
                                                        (letrec ((g8148
                                                                  (letrec ((x-cnd8149
                                                                            (empty?
                                                                             xs)))
                                                                    (if x-cnd8149
                                                                      empty
                                                                      (letrec ((x8152
                                                                                (letrec ((x8153
                                                                                          (car
                                                                                           xs)))
                                                                                  (f
                                                                                   x8153)))
                                                                               (x8150
                                                                                (letrec ((x8151
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (map-append
                                                                                   f
                                                                                   x8151))))
                                                                        (mappend
                                                                         x8152
                                                                         x8150))))))
                                                          g8148))))
                                              (letrec ((g8154
                                                        (letrec ((g8155
                                                                  (letrec ((g8156
                                                                            (letrec ((x8160
                                                                                      ((lambda (j7231
                                                                                                k7232
                                                                                                f7233)
                                                                                         (lambda (g7229
                                                                                                  g7230)
                                                                                           ((listof
                                                                                             any/c)
                                                                                            j7231
                                                                                            k7232
                                                                                            (f7233
                                                                                             ((lambda (j7235
                                                                                                       k7236
                                                                                                       f7237)
                                                                                                (lambda (g7234)
                                                                                                  ((listof
                                                                                                    any/c)
                                                                                                   j7235
                                                                                                   k7236
                                                                                                   (f7237
                                                                                                    (any/c
                                                                                                     j7235
                                                                                                     k7236
                                                                                                     g7234)))))
                                                                                              j7231
                                                                                              k7232
                                                                                              g7229)
                                                                                             ((listof
                                                                                               any/c)
                                                                                              j7231
                                                                                              k7232
                                                                                              g7230)))))
                                                                                       'module
                                                                                       'importer
                                                                                       map-append))
                                                                                     (x8159
                                                                                      (input))
                                                                                     (x8158
                                                                                      (input)))
                                                                              (x8160
                                                                               x8159
                                                                               x8158)))
                                                                           (g8157
                                                                            (letrec ((x8163
                                                                                      ((lambda (j7240
                                                                                                k7241
                                                                                                f7242)
                                                                                         (lambda (g7238
                                                                                                  g7239)
                                                                                           ((listof
                                                                                             any/c)
                                                                                            j7240
                                                                                            k7241
                                                                                            (f7242
                                                                                             ((listof
                                                                                               any/c)
                                                                                              j7240
                                                                                              k7241
                                                                                              g7238)
                                                                                             ((listof
                                                                                               any/c)
                                                                                              j7240
                                                                                              k7241
                                                                                              g7239)))))
                                                                                       'module
                                                                                       'importer
                                                                                       mappend))
                                                                                     (x8162
                                                                                      (input))
                                                                                     (x8161
                                                                                      (input)))
                                                                              (x8163
                                                                               x8162
                                                                               x8161))))
                                                                    g8157)))
                                                          g8155)))
                                                g8154))))
                                    g8142)))
                          g8141))))
              g7254)))
    g7253))
