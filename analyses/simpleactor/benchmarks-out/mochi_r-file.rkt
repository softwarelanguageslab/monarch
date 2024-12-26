(letrec ((any? (lambda (v) (letrec ((g7240 #t)) g7240)))
         (meta (lambda (v) (letrec ((g7241 v)) g7241)))
         (member
          (lambda (v lst)
            (letrec ((g7242
                      (letrec ((g7243
                                (letrec ((x-e7244 lst))
                                  (match
                                   x-e7244
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7245 (eq? v v1)))
                                       (if x-cnd7245 #t (member v vs)))))))))
                        g7243)))
              g7242)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7246 (lambda (v) (letrec ((g7247 v)) g7247)))) g7246)))
         (nonzero?
          (lambda (v)
            (letrec ((g7248 (letrec ((x7249 (= v 0))) (not x7249)))) g7248))))
  (letrec ((g7250
            (letrec ((g7251
                      (letrec ((real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7252
                                            (letrec ((x-cnd7253 (real? g7162)))
                                              (if x-cnd7253
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7252)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7254
                                            (letrec ((x-cnd7255
                                                      (boolean? g7165)))
                                              (if x-cnd7255
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7254)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7256
                                            (letrec ((x-cnd7257
                                                      (number? g7168)))
                                              (if x-cnd7257
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7256)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7258
                                            (letrec ((x-cnd7259
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7259
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7258)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7260
                                            (letrec ((x-cnd7261
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7261
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7260)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7262
                                            (letrec ((x-cnd7263 (pair? g7177)))
                                              (if x-cnd7263
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7262)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7264
                                            (letrec ((x-cnd7265 (pair? g7180)))
                                              (if x-cnd7265
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7264)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7266
                                            (letrec ((x-cnd7267
                                                      (integer? g7183)))
                                              (if x-cnd7267
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7266)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7268
                                            (lambda (k j v)
                                              (letrec ((g7269
                                                        (letrec ((x-cnd7270
                                                                  (c1 k j v)))
                                                          (if x-cnd7270
                                                            (c2 k j v)
                                                            #f))))
                                                g7269))))
                                    g7268)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7271
                                            (lambda (k j v)
                                              (letrec ((g7272
                                                        (letrec ((x-cnd7273
                                                                  (null? v)))
                                                          (if x-cnd7273
                                                            '()
                                                            (letrec ((x7277
                                                                      (letrec ((x7278
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7278)))
                                                                     (x7274
                                                                      (letrec ((x7276
                                                                                (list-of
                                                                                 contract))
                                                                               (x7275
                                                                                (cdr
                                                                                 v)))
                                                                        (x7276
                                                                         k
                                                                         j
                                                                         x7275))))
                                                              (cons
                                                               x7277
                                                               x7274))))))
                                                g7272))))
                                    g7271)))
                               (any? (lambda (v) (letrec ((g7279 #t)) g7279)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7280
                                            (letrec ((x7281 (= v 0)))
                                              (not x7281))))
                                    g7280)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7282
                                            (letrec ((x-cnd7283
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7283
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7282)))
                               (meta (lambda (v) (letrec ((g7284 v)) g7284)))
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
                                (lambda (cnd) (letrec ((g7285 #t)) g7285)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7286
                                            (letrec ((x7287
                                                      (letrec ((x7288 (cdr x)))
                                                        (cdr x7288))))
                                              (cdr x7287))))
                                    g7286)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7289
                                            (letrec ((x7292 (procedure? f)))
                                              (assert x7292)))
                                           (g7290
                                            (letrec ((x7293 (list? l)))
                                              (assert x7293)))
                                           (g7291
                                            (letrec ((x-cnd7294 (null? l)))
                                              (if x-cnd7294
                                                '()
                                                (letrec ((x7297
                                                          (letrec ((x7298
                                                                    (car l)))
                                                            (f x7298)))
                                                         (x7295
                                                          (letrec ((x7296
                                                                    (cdr l)))
                                                            (map f x7296))))
                                                  (cons x7297 x7295))))))
                                    g7291)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7299
                                            (letrec ((x7300 (car x)))
                                              (cdr x7300))))
                                    g7299)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7301
                                            (letrec ((x7302
                                                      (letrec ((x7303
                                                                (letrec ((x7304
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7304))))
                                                        (cdr x7303))))
                                              (car x7302))))
                                    g7301)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7305
                                            (letrec ((x7306
                                                      (letrec ((x7307
                                                                (letrec ((x7308
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7308))))
                                                        (car x7307))))
                                              (cdr x7306))))
                                    g7305)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7309
                                            (letrec ((x7312
                                                      (string? filename)))
                                              (assert x7312)))
                                           (g7310
                                            (letrec ((x7313 (procedure? proc)))
                                              (assert x7313)))
                                           (g7311
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7314
                                                        (close-output-port
                                                         output-port))
                                                       (g7315 res))
                                                g7315))))
                                    g7311)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7316
                                            (letrec ((x7317
                                                      (letrec ((x7318 (cdr x)))
                                                        (cdr x7318))))
                                              (car x7317))))
                                    g7316)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7319
                                            (letrec ((x7320
                                                      (letrec ((x7321
                                                                (letrec ((x7322
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7322))))
                                                        (car x7321))))
                                              (cdr x7320))))
                                    g7319)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7323
                                            (letrec ((x7325 (list? l)))
                                              (assert x7325)))
                                           (g7324
                                            (letrec ((x-cnd7326 (null? l)))
                                              (if x-cnd7326
                                                #f
                                                (letrec ((x-cnd7327
                                                          (letrec ((x7328
                                                                    (caar l)))
                                                            (eq? x7328 k))))
                                                  (if x-cnd7327
                                                    (car l)
                                                    (letrec ((x7329 (cdr l)))
                                                      (assq k x7329))))))))
                                    g7324)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7330
                                            (letrec ((x7331 (modulo x 2)))
                                              (= 0 x7331))))
                                    g7330)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7332
                                            (letrec ((x7334 (list? l)))
                                              (assert x7334)))
                                           (g7333
                                            (letrec ((x-cnd7335 (null? l)))
                                              (if x-cnd7335
                                                ""
                                                (letrec ((x7338
                                                          (letrec ((x7339
                                                                    (car l)))
                                                            (char->string
                                                             x7339)))
                                                         (x7336
                                                          (letrec ((x7337
                                                                    (cdr l)))
                                                            (list->string
                                                             x7337))))
                                                  (string-append
                                                   x7338
                                                   x7336))))))
                                    g7333)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7340
                                            (letrec ((x7343 (char? c1)))
                                              (assert x7343)))
                                           (g7341
                                            (letrec ((x7344 (char? c2)))
                                              (assert x7344)))
                                           (g7342
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7345
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7345))))
                                    g7342)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7346
                                            (letrec ((x7347
                                                      (letrec ((x7348
                                                                (letrec ((x7349
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7349))))
                                                        (cdr x7348))))
                                              (cdr x7347))))
                                    g7346)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7350
                                            (letrec ((x7353 (list? l)))
                                              (assert x7353)))
                                           (g7351
                                            (letrec ((x7354 (numer?)))
                                              (assert x7354)))
                                           (g7352
                                            (letrec ((x-cnd7355 (zero? k)))
                                              (if x-cnd7355
                                                x
                                                (letrec ((x7357 (cdr x))
                                                         (x7356 (- k 1)))
                                                  (list-tail x7357 x7356))))))
                                    g7352)))
                               (halt (lambda () (letrec ((g7358 '())) g7358)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7359
                                            (letrec ((x-cnd7360
                                                      (letrec ((x7361 #\a))
                                                        (char-ci>=? c x7361))))
                                              (if x-cnd7360
                                                (letrec ((x7362 #\z))
                                                  (char-ci<=? c x7362))
                                                #f))))
                                    g7359)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7363
                                            (letrec ((x7365 (number? x)))
                                              (assert x7365)))
                                           (g7364
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7366
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7367
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7367)))))
                                                g7366))))
                                    g7364)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7368
                                            (letrec ((val7146
                                                      (letrec ((x7369
                                                                (char->integer
                                                                 c)))
                                                        (= x7369 9))))
                                              (letrec ((g7370
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7371
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7371
                                                                       10))))
                                                            (letrec ((g7372
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7373
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7373
                                                                           32)))))
                                                              g7372)))))
                                                g7370))))
                                    g7368)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7374
                                            (letrec ((x7375
                                                      (letrec ((x7376 (car x)))
                                                        (cdr x7376))))
                                              (cdr x7375))))
                                    g7374)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7377
                                            (letrec ((x7379 (number? x)))
                                              (assert x7379)))
                                           (g7378 (> x 0)))
                                    g7378)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7380 #f)) g7380)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7381
                                            (letrec ((x7382 (cdr x)))
                                              (cdr x7382))))
                                    g7381)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7383
                                            (letrec ((x7385 (number? x)))
                                              (assert x7385)))
                                           (g7384
                                            (letrec ((x-cnd7386 (< x 0)))
                                              (if x-cnd7386
                                                (ceiling x)
                                                (floor x)))))
                                    g7384)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7387
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7388
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7390
                                                                              (null?
                                                                               a))
                                                                             (x7389
                                                                              (null?
                                                                               b)))
                                                                      (and x7390
                                                                           x7389))))
                                                            (letrec ((g7391
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7394
                                                                                            (string?
                                                                                             a))
                                                                                           (x7393
                                                                                            (string?
                                                                                             b))
                                                                                           (x7392
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7394
                                                                                         x7393
                                                                                         x7392))))
                                                                          (letrec ((g7395
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7403
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7402
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7399
                                                                                                          (letrec ((x7401
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7400
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7401
                                                                                                             x7400)))
                                                                                                         (x7396
                                                                                                          (letrec ((x7398
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7397
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7398
                                                                                                             x7397))))
                                                                                                  (and x7403
                                                                                                       x7402
                                                                                                       x7399
                                                                                                       x7396))))
                                                                                        (letrec ((g7404
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7423
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7422
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7405
                                                                                                              (letrec ((x7419
                                                                                                                        (letrec ((x7420
                                                                                                                                  (letrec ((x7421
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7421))))
                                                                                                                          (x7420)))
                                                                                                                       (x7406
                                                                                                                        (letrec ((x7417
                                                                                                                                  (letrec ((x7418
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7418
                                                                                                                                     n)))
                                                                                                                                 (x7407
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7408
                                                                                                                                                        (letrec ((x7415
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7409
                                                                                                                                                                  (letrec ((x7412
                                                                                                                                                                            (letrec ((x7414
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7413
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7414
                                                                                                                                                                               x7413)))
                                                                                                                                                                           (x7410
                                                                                                                                                                            (letrec ((x7411
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7411))))
                                                                                                                                                                    (and x7412
                                                                                                                                                                         x7410))))
                                                                                                                                                          (or x7415
                                                                                                                                                              x7409))))
                                                                                                                                                g7408))))
                                                                                                                                    (letrec ((g7416
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7416))))
                                                                                                                          (and x7417
                                                                                                                               x7407))))
                                                                                                                (let x7419 x7406))))
                                                                                                      (and x7423
                                                                                                           x7422
                                                                                                           x7405)))))
                                                                                          g7404)))))
                                                                            g7395)))))
                                                              g7391)))))
                                                g7388))))
                                    g7387)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7424
                                            (letrec ((x7425
                                                      (letrec ((x7426
                                                                (letrec ((x7427
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7427))))
                                                        (car x7426))))
                                              (cdr x7425))))
                                    g7424)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7428
                                            (letrec ((x7429
                                                      (letrec ((x7430
                                                                (letrec ((x7431
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7431))))
                                                        (car x7430))))
                                              (car x7429))))
                                    g7428)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7432 (eq? x y))) g7432)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7433
                                            (letrec ((x7435 (number? x)))
                                              (assert x7435)))
                                           (g7434
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7436
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7437
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7437)))))
                                                g7436))))
                                    g7434)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7438
                                            (letrec ((x7441
                                                      (string? filename)))
                                              (assert x7441)))
                                           (g7439
                                            (letrec ((x7442 (procedure? proc)))
                                              (assert x7442)))
                                           (g7440
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7443
                                                        (close-input-port
                                                         input-port))
                                                       (g7444 res))
                                                g7444))))
                                    g7440)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7445 (cons x '()))) g7445)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7446
                                            (letrec ((x7449 (char? c1)))
                                              (assert x7449)))
                                           (g7447
                                            (letrec ((x7450 (char? c2)))
                                              (assert x7450)))
                                           (g7448
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7451
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7451))))
                                    g7448)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7452
                                            (letrec ((x7453
                                                      (letrec ((x7454 (car x)))
                                                        (car x7454))))
                                              (cdr x7453))))
                                    g7452)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7455
                                            (letrec ((x7456
                                                      (letrec ((x7457
                                                                (letrec ((x7458
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7458))))
                                                        (car x7457))))
                                              (cdr x7456))))
                                    g7455)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7459
                                            (letrec ((x7460
                                                      (letrec ((x7461 (car x)))
                                                        (cdr x7461))))
                                              (car x7460))))
                                    g7459)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7462
                                            (letrec ((x7463
                                                      (letrec ((x7464 (cdr x)))
                                                        (car x7464))))
                                              (car x7463))))
                                    g7462)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7465
                                            (letrec ((x7468 (char? c1)))
                                              (assert x7468)))
                                           (g7466
                                            (letrec ((x7469 (char? c2)))
                                              (assert x7469)))
                                           (g7467
                                            (letrec ((x7470
                                                      (char-ci<=? c1 c2)))
                                              (not x7470))))
                                    g7467)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7471
                                            (letrec ((x7472
                                                      (letrec ((x7473
                                                                (letrec ((x7474
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7474))))
                                                        (car x7473))))
                                              (car x7472))))
                                    g7471)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7475
                                            (letrec ((x7477 (number? x)))
                                              (assert x7477)))
                                           (g7476 (< x 0)))
                                    g7476)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7478 (memq e l))) g7478)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7479
                                            (letrec ((x7480
                                                      (letrec ((x7481 (car x)))
                                                        (car x7481))))
                                              (car x7480))))
                                    g7479)))
                               (debug
                                (lambda (e) (letrec ((g7482 '())) g7482)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7483
                                            (letrec ((x7485 (list? l)))
                                              (assert x7485)))
                                           (g7484
                                            (letrec ((x-cnd7486 (null? l)))
                                              (if x-cnd7486
                                                '()
                                                (letrec ((x7489
                                                          (letrec ((x7490
                                                                    (cdr l)))
                                                            (reverse x7490)))
                                                         (x7487
                                                          (letrec ((x7488
                                                                    (car l)))
                                                            (list x7488))))
                                                  (append x7489 x7487))))))
                                    g7484)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7491
                                            (letrec ((x7492
                                                      (letrec ((x7493
                                                                (letrec ((x7494
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7494))))
                                                        (car x7493))))
                                              (car x7492))))
                                    g7491)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7495
                                            (letrec ((x7496
                                                      (letrec ((x7497
                                                                (letrec ((x7498
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7498))))
                                                        (cdr x7497))))
                                              (cdr x7496))))
                                    g7495)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7499
                                            (letrec ((x7501 (number? x)))
                                              (assert x7501)))
                                           (g7500
                                            (letrec ((x7502 (modulo x 2)))
                                              (= 1 x7502))))
                                    g7500)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7503
                                            (letrec ((x7504
                                                      (letrec ((x7505
                                                                (letrec ((x7506
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7506))))
                                                        (car x7505))))
                                              (car x7504))))
                                    g7503)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7507
                                            (letrec ((x7510 (procedure? proc)))
                                              (assert x7510)))
                                           (g7508
                                            (letrec ((x7511 (list? args)))
                                              (assert x7511)))
                                           (g7509
                                            (if cnd
                                              (letrec ((g7512 (proc))) g7512)
                                              (if cnd
                                                (letrec ((g7513
                                                          (letrec ((x7514
                                                                    (car
                                                                     args)))
                                                            (proc x7514))))
                                                  g7513)
                                                (if cnd
                                                  (letrec ((g7515
                                                            (letrec ((x7517
                                                                      (car
                                                                       args))
                                                                     (x7516
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7517
                                                               x7516))))
                                                    g7515)
                                                  (if cnd
                                                    (letrec ((g7518
                                                              (letrec ((x7521
                                                                        (car
                                                                         args))
                                                                       (x7520
                                                                        (cadr
                                                                         args))
                                                                       (x7519
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7521
                                                                 x7520
                                                                 x7519))))
                                                      g7518)
                                                    (if cnd
                                                      (letrec ((g7522
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
                                                                           args)))
                                                                  (proc
                                                                   x7526
                                                                   x7525
                                                                   x7524
                                                                   x7523))))
                                                        g7522)
                                                      (if cnd
                                                        (letrec ((g7527
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
                                                                             args))
                                                                           (x7528
                                                                            (letrec ((x7529
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7529))))
                                                                    (proc
                                                                     x7533
                                                                     x7532
                                                                     x7531
                                                                     x7530
                                                                     x7528))))
                                                          g7527)
                                                        (if cnd
                                                          (letrec ((g7534
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
                                                                                 x7538)))
                                                                             (x7535
                                                                              (letrec ((x7536
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7536))))
                                                                      (proc
                                                                       x7542
                                                                       x7541
                                                                       x7540
                                                                       x7539
                                                                       x7537
                                                                       x7535))))
                                                            g7534)
                                                          (if cnd
                                                            (letrec ((g7543
                                                                      (letrec ((x7553
                                                                                (car
                                                                                 args))
                                                                               (x7552
                                                                                (cadr
                                                                                 args))
                                                                               (x7551
                                                                                (caddr
                                                                                 args))
                                                                               (x7550
                                                                                (cadddr
                                                                                 args))
                                                                               (x7548
                                                                                (letrec ((x7549
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7549)))
                                                                               (x7546
                                                                                (letrec ((x7547
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7547)))
                                                                               (x7544
                                                                                (letrec ((x7545
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7545))))
                                                                        (proc
                                                                         x7553
                                                                         x7552
                                                                         x7551
                                                                         x7550
                                                                         x7548
                                                                         x7546
                                                                         x7544))))
                                                              g7543)
                                                            (letrec ((g7554
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7554)))))))))))
                                    g7509)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7555
                                            (letrec ((x7557 (list? l)))
                                              (assert x7557)))
                                           (g7556
                                            (letrec ((x-cnd7558 (null? l)))
                                              (if x-cnd7558
                                                #f
                                                (letrec ((x-cnd7559
                                                          (letrec ((x7560
                                                                    (car l)))
                                                            (equal? x7560 e))))
                                                  (if x-cnd7559
                                                    l
                                                    (letrec ((x7561 (cdr l)))
                                                      (member e x7561))))))))
                                    g7556)))
                               (call-with-current-continuation call/cc)
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7562
                                            (letrec ((x7563
                                                      (letrec ((x7564
                                                                (letrec ((x7565
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7565))))
                                                        (cdr x7564))))
                                              (cdr x7563))))
                                    g7562)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g7566
                                            (letrec ((x7567
                                                      (letrec ((x7568
                                                                (letrec ((x7569
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7569))))
                                                        (cdr x7568))))
                                              (car x7567))))
                                    g7566)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7570 (random 42))) g7570)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7571
                                            (letrec ((x7573 (number? x)))
                                              (assert x7573)))
                                           (g7572 (= x 0)))
                                    g7572)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7574
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7575
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7575))))
                                    g7574)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7576
                                            (letrec ((x7577 (cdr x)))
                                              (car x7577))))
                                    g7576)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7578
                                            (letrec ((val7156
                                                      (letrec ((x7581
                                                                (pair? l))
                                                               (x7579
                                                                (letrec ((x7580
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7580))))
                                                        (and x7581 x7579))))
                                              (letrec ((g7582
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7582))))
                                    g7578)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7583
                                            (letrec ((x7584
                                                      (letrec ((x7585
                                                                (letrec ((x7586
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7586))))
                                                        (cdr x7585))))
                                              (cdr x7584))))
                                    g7583)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7587
                                            (letrec ((x-cnd7588
                                                      (letrec ((x7589 #\0))
                                                        (char<=? x7589 c))))
                                              (if x-cnd7588
                                                (letrec ((x7590 #\9))
                                                  (char<=? c x7590))
                                                #f))))
                                    g7587)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7591
                                            (letrec ((x7593 (list? l)))
                                              (assert x7593)))
                                           (g7592
                                            (letrec ((x-cnd7594 (null? l)))
                                              (if x-cnd7594
                                                #f
                                                (letrec ((x-cnd7595
                                                          (letrec ((x7596
                                                                    (caar l)))
                                                            (eqv? x7596 k))))
                                                  (if x-cnd7595
                                                    (car l)
                                                    (letrec ((x7597 (cdr l)))
                                                      (assq k x7597))))))))
                                    g7592)))
                               (not
                                (lambda (x)
                                  (letrec ((g7598 (if x #f #t))) g7598)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7599 (append l1 l2))) g7599)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7600
                                            (letrec ((x7602 (list? l)))
                                              (assert x7602)))
                                           (g7601
                                            (letrec ((x-cnd7603 (null? l)))
                                              (if x-cnd7603
                                                #f
                                                (letrec ((x-cnd7604
                                                          (letrec ((x7605
                                                                    (car l)))
                                                            (eq? x7605 e))))
                                                  (if x-cnd7604
                                                    l
                                                    (letrec ((x7606 (cdr l)))
                                                      (memq e x7606))))))))
                                    g7601)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7607
                                            (letrec ((x7608
                                                      (letrec ((x7609
                                                                (letrec ((x7610
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7610))))
                                                        (cdr x7609))))
                                              (car x7608))))
                                    g7607)))
                               (length
                                (lambda (l)
                                  (letrec ((g7611
                                            (letrec ((x7613 (list? l)))
                                              (assert x7613)))
                                           (g7612
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7614
                                                                  (letrec ((x-cnd7615
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7615
                                                                      0
                                                                      (letrec ((x7616
                                                                                (letrec ((x7617
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7617))))
                                                                        (+
                                                                         1
                                                                         x7616))))))
                                                          g7614))))
                                              (letrec ((g7618 (rec l)))
                                                g7618))))
                                    g7612)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7619
                                            (letrec ((x7622 (char? c1)))
                                              (assert x7622)))
                                           (g7620
                                            (letrec ((x7623 (char? c2)))
                                              (assert x7623)))
                                           (g7621
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7624
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7624))))
                                    g7621)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7625
                                            (letrec ((x7626 (string<=? s1 s2)))
                                              (not x7626))))
                                    g7625)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7627
                                            (letrec ((x7628
                                                      (letrec ((x7629 (cdr x)))
                                                        (car x7629))))
                                              (cdr x7628))))
                                    g7627)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7630
                                            (letrec ((x7632 (list? l)))
                                              (assert x7632)))
                                           (g7631
                                            (letrec ((x-cnd7633 (null? l)))
                                              (if x-cnd7633
                                                #f
                                                (letrec ((x-cnd7634
                                                          (letrec ((x7635
                                                                    (caar l)))
                                                            (equal? x7635 k))))
                                                  (if x-cnd7634
                                                    (car l)
                                                    (letrec ((x7636 (cdr l)))
                                                      (assoc k x7636))))))))
                                    g7631)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7637
                                            (letrec ((x7638 (car x)))
                                              (car x7638))))
                                    g7637)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7639
                                            (letrec ((x7642 (char? c1)))
                                              (assert x7642)))
                                           (g7640
                                            (letrec ((x7643 (char? c2)))
                                              (assert x7643)))
                                           (g7641
                                            (letrec ((x7644 (char<=? c1 c2)))
                                              (not x7644))))
                                    g7641)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7645
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7646
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7646))))
                                    g7645)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7647
                                            (letrec ((x7650 (procedure? f)))
                                              (assert x7650)))
                                           (g7648
                                            (letrec ((x7651 (list? l)))
                                              (assert x7651)))
                                           (g7649
                                            (letrec ((x-cnd7652 (null? l)))
                                              (if x-cnd7652
                                                #t
                                                (letrec ((x-cnd7653 (pair? l)))
                                                  (if x-cnd7653
                                                    (letrec ((g7654
                                                              (letrec ((x7656
                                                                        (car
                                                                         l)))
                                                                (f x7656)))
                                                             (g7655
                                                              (letrec ((x7657
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7657))))
                                                      g7655)
                                                    '()))))))
                                    g7649)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7658
                                            (letrec ((x7660 (number? x)))
                                              (assert x7660)))
                                           (g7659
                                            (letrec ((x-cnd7661 (< x 0)))
                                              (if x-cnd7661 (- 0 x) x))))
                                    g7659)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7662
                                            (letrec ((x7665 (char? c1)))
                                              (assert x7665)))
                                           (g7663
                                            (letrec ((x7666 (char? c2)))
                                              (assert x7666)))
                                           (g7664
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7667
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7667))))
                                    g7664)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7668
                                            (letrec ((x7669
                                                      (letrec ((x7670
                                                                (letrec ((x7671
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7671))))
                                                        (cdr x7670))))
                                              (car x7669))))
                                    g7668)))
                               (newline
                                (lambda () (letrec ((g7672 #f)) g7672)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7673
                                            (letrec ((x7675
                                                      (letrec ((x7676 (* m n)))
                                                        (abs x7676)))
                                                     (x7674 (gcd m n)))
                                              (/ x7675 x7674))))
                                    g7673)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7677
                                            (letrec ((x7679 (number? x)))
                                              (assert x7679)))
                                           (g7678
                                            (letrec ((x7680 (<= x y)))
                                              (not x7680))))
                                    g7678)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7681
                                            (letrec ((x7685 (list? l)))
                                              (assert x7685)))
                                           (g7682
                                            (letrec ((x7686 (number? index)))
                                              (assert x7686)))
                                           (g7683
                                            (letrec ((x7687
                                                      (letrec ((x7688
                                                                (length l)))
                                                        (< index x7688))))
                                              (assert x7687)))
                                           (g7684
                                            (letrec ((x-cnd7689 (= index 0)))
                                              (if x-cnd7689
                                                (car l)
                                                (letrec ((x7691 (cdr l))
                                                         (x7690 (- index 1)))
                                                  (list-ref x7691 x7690))))))
                                    g7684)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7692
                                            (letrec ((x-cnd7693 (= b 0)))
                                              (if x-cnd7693
                                                a
                                                (letrec ((x7694 (modulo a b)))
                                                  (gcd b x7694))))))
                                    g7692)))
                               (real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7695
                                            (letrec ((x-cnd7696 (real? g7162)))
                                              (if x-cnd7696
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7695)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7697
                                            (letrec ((x-cnd7698
                                                      (boolean? g7165)))
                                              (if x-cnd7698
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7697)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7699
                                            (letrec ((x-cnd7700
                                                      (number? g7168)))
                                              (if x-cnd7700
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7699)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7701
                                            (letrec ((x-cnd7702
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7702
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7701)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7703
                                            (letrec ((x-cnd7704
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7704
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7703)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7705
                                            (letrec ((x-cnd7706 (pair? g7177)))
                                              (if x-cnd7706
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7705)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7707
                                            (letrec ((x-cnd7708 (pair? g7180)))
                                              (if x-cnd7708
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7707)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7709
                                            (letrec ((x-cnd7710
                                                      (integer? g7183)))
                                              (if x-cnd7710
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7709)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7711
                                            (lambda (k j v)
                                              (letrec ((g7712
                                                        (letrec ((x-cnd7713
                                                                  (c1 k j v)))
                                                          (if x-cnd7713
                                                            (c2 k j v)
                                                            #f))))
                                                g7712))))
                                    g7711)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7714
                                            (lambda (k j v)
                                              (letrec ((g7715
                                                        (letrec ((x-cnd7716
                                                                  (null? v)))
                                                          (if x-cnd7716
                                                            '()
                                                            (letrec ((x7720
                                                                      (letrec ((x7721
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7721)))
                                                                     (x7717
                                                                      (letrec ((x7719
                                                                                (list-of
                                                                                 contract))
                                                                               (x7718
                                                                                (cdr
                                                                                 v)))
                                                                        (x7719
                                                                         k
                                                                         j
                                                                         x7718))))
                                                              (cons
                                                               x7720
                                                               x7717))))))
                                                g7715))))
                                    g7714)))
                               (any? (lambda (v) (letrec ((g7722 #t)) g7722)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7723
                                            (letrec ((x7724 (= v 0)))
                                              (not x7724))))
                                    g7723)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7725
                                            (letrec ((x-cnd7726
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7726
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7725)))
                               (meta (lambda (v) (letrec ((g7727 v)) g7727)))
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
                                (lambda (cnd) (letrec ((g7728 #t)) g7728)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7729
                                            (letrec ((x7730
                                                      (letrec ((x7731 (cdr x)))
                                                        (cdr x7731))))
                                              (cdr x7730))))
                                    g7729)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7732
                                            (letrec ((x7735 (procedure? f)))
                                              (assert x7735)))
                                           (g7733
                                            (letrec ((x7736 (list? l)))
                                              (assert x7736)))
                                           (g7734
                                            (letrec ((x-cnd7737 (null? l)))
                                              (if x-cnd7737
                                                '()
                                                (letrec ((x7740
                                                          (letrec ((x7741
                                                                    (car l)))
                                                            (f x7741)))
                                                         (x7738
                                                          (letrec ((x7739
                                                                    (cdr l)))
                                                            (map f x7739))))
                                                  (cons x7740 x7738))))))
                                    g7734)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7742
                                            (letrec ((x7743 (car x)))
                                              (cdr x7743))))
                                    g7742)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7744
                                            (letrec ((x7745
                                                      (letrec ((x7746
                                                                (letrec ((x7747
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7747))))
                                                        (cdr x7746))))
                                              (car x7745))))
                                    g7744)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7748
                                            (letrec ((x7749
                                                      (letrec ((x7750
                                                                (letrec ((x7751
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7751))))
                                                        (car x7750))))
                                              (cdr x7749))))
                                    g7748)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7752
                                            (letrec ((x7755
                                                      (string? filename)))
                                              (assert x7755)))
                                           (g7753
                                            (letrec ((x7756 (procedure? proc)))
                                              (assert x7756)))
                                           (g7754
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7757
                                                        (close-output-port
                                                         output-port))
                                                       (g7758 res))
                                                g7758))))
                                    g7754)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7759
                                            (letrec ((x7760
                                                      (letrec ((x7761 (cdr x)))
                                                        (cdr x7761))))
                                              (car x7760))))
                                    g7759)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7762
                                            (letrec ((x7763
                                                      (letrec ((x7764
                                                                (letrec ((x7765
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7765))))
                                                        (car x7764))))
                                              (cdr x7763))))
                                    g7762)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7766
                                            (letrec ((x7768 (list? l)))
                                              (assert x7768)))
                                           (g7767
                                            (letrec ((x-cnd7769 (null? l)))
                                              (if x-cnd7769
                                                #f
                                                (letrec ((x-cnd7770
                                                          (letrec ((x7771
                                                                    (caar l)))
                                                            (eq? x7771 k))))
                                                  (if x-cnd7770
                                                    (car l)
                                                    (letrec ((x7772 (cdr l)))
                                                      (assq k x7772))))))))
                                    g7767)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7773
                                            (letrec ((x7774 (modulo x 2)))
                                              (= 0 x7774))))
                                    g7773)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7775
                                            (letrec ((x7777 (list? l)))
                                              (assert x7777)))
                                           (g7776
                                            (letrec ((x-cnd7778 (null? l)))
                                              (if x-cnd7778
                                                ""
                                                (letrec ((x7781
                                                          (letrec ((x7782
                                                                    (car l)))
                                                            (char->string
                                                             x7782)))
                                                         (x7779
                                                          (letrec ((x7780
                                                                    (cdr l)))
                                                            (list->string
                                                             x7780))))
                                                  (string-append
                                                   x7781
                                                   x7779))))))
                                    g7776)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7783
                                            (letrec ((x7786 (char? c1)))
                                              (assert x7786)))
                                           (g7784
                                            (letrec ((x7787 (char? c2)))
                                              (assert x7787)))
                                           (g7785
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7788
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7788))))
                                    g7785)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7789
                                            (letrec ((x7790
                                                      (letrec ((x7791
                                                                (letrec ((x7792
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7792))))
                                                        (cdr x7791))))
                                              (cdr x7790))))
                                    g7789)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7793
                                            (letrec ((x7796 (list? l)))
                                              (assert x7796)))
                                           (g7794
                                            (letrec ((x7797 (numer?)))
                                              (assert x7797)))
                                           (g7795
                                            (letrec ((x-cnd7798 (zero? k)))
                                              (if x-cnd7798
                                                x
                                                (letrec ((x7800 (cdr x))
                                                         (x7799 (- k 1)))
                                                  (list-tail x7800 x7799))))))
                                    g7795)))
                               (halt (lambda () (letrec ((g7801 '())) g7801)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7802
                                            (letrec ((x-cnd7803
                                                      (letrec ((x7804 #\a))
                                                        (char-ci>=? c x7804))))
                                              (if x-cnd7803
                                                (letrec ((x7805 #\z))
                                                  (char-ci<=? c x7805))
                                                #f))))
                                    g7802)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7806
                                            (letrec ((x7808 (number? x)))
                                              (assert x7808)))
                                           (g7807
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7809
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7810
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7810)))))
                                                g7809))))
                                    g7807)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7811
                                            (letrec ((val7146
                                                      (letrec ((x7812
                                                                (char->integer
                                                                 c)))
                                                        (= x7812 9))))
                                              (letrec ((g7813
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7814
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7814
                                                                       10))))
                                                            (letrec ((g7815
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7816
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7816
                                                                           32)))))
                                                              g7815)))))
                                                g7813))))
                                    g7811)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7817
                                            (letrec ((x7818
                                                      (letrec ((x7819 (car x)))
                                                        (cdr x7819))))
                                              (cdr x7818))))
                                    g7817)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7820
                                            (letrec ((x7822 (number? x)))
                                              (assert x7822)))
                                           (g7821 (> x 0)))
                                    g7821)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7823 #f)) g7823)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7824
                                            (letrec ((x7825 (cdr x)))
                                              (cdr x7825))))
                                    g7824)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7826
                                            (letrec ((x7828 (number? x)))
                                              (assert x7828)))
                                           (g7827
                                            (letrec ((x-cnd7829 (< x 0)))
                                              (if x-cnd7829
                                                (ceiling x)
                                                (floor x)))))
                                    g7827)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7830
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7831
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7833
                                                                              (null?
                                                                               a))
                                                                             (x7832
                                                                              (null?
                                                                               b)))
                                                                      (and x7833
                                                                           x7832))))
                                                            (letrec ((g7834
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7837
                                                                                            (string?
                                                                                             a))
                                                                                           (x7836
                                                                                            (string?
                                                                                             b))
                                                                                           (x7835
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7837
                                                                                         x7836
                                                                                         x7835))))
                                                                          (letrec ((g7838
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7846
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7845
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7842
                                                                                                          (letrec ((x7844
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7843
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7844
                                                                                                             x7843)))
                                                                                                         (x7839
                                                                                                          (letrec ((x7841
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7840
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7841
                                                                                                             x7840))))
                                                                                                  (and x7846
                                                                                                       x7845
                                                                                                       x7842
                                                                                                       x7839))))
                                                                                        (letrec ((g7847
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7866
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7865
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7848
                                                                                                              (letrec ((x7862
                                                                                                                        (letrec ((x7863
                                                                                                                                  (letrec ((x7864
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7864))))
                                                                                                                          (x7863)))
                                                                                                                       (x7849
                                                                                                                        (letrec ((x7860
                                                                                                                                  (letrec ((x7861
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7861
                                                                                                                                     n)))
                                                                                                                                 (x7850
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7851
                                                                                                                                                        (letrec ((x7858
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7852
                                                                                                                                                                  (letrec ((x7855
                                                                                                                                                                            (letrec ((x7857
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7856
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7857
                                                                                                                                                                               x7856)))
                                                                                                                                                                           (x7853
                                                                                                                                                                            (letrec ((x7854
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7854))))
                                                                                                                                                                    (and x7855
                                                                                                                                                                         x7853))))
                                                                                                                                                          (or x7858
                                                                                                                                                              x7852))))
                                                                                                                                                g7851))))
                                                                                                                                    (letrec ((g7859
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7859))))
                                                                                                                          (and x7860
                                                                                                                               x7850))))
                                                                                                                (let x7862 x7849))))
                                                                                                      (and x7866
                                                                                                           x7865
                                                                                                           x7848)))))
                                                                                          g7847)))))
                                                                            g7838)))))
                                                              g7834)))))
                                                g7831))))
                                    g7830)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7867
                                            (letrec ((x7868
                                                      (letrec ((x7869
                                                                (letrec ((x7870
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7870))))
                                                        (car x7869))))
                                              (cdr x7868))))
                                    g7867)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7871
                                            (letrec ((x7872
                                                      (letrec ((x7873
                                                                (letrec ((x7874
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7874))))
                                                        (car x7873))))
                                              (car x7872))))
                                    g7871)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7875 (eq? x y))) g7875)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7876
                                            (letrec ((x7878 (number? x)))
                                              (assert x7878)))
                                           (g7877
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7879
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7880
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7880)))))
                                                g7879))))
                                    g7877)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7881
                                            (letrec ((x7884
                                                      (string? filename)))
                                              (assert x7884)))
                                           (g7882
                                            (letrec ((x7885 (procedure? proc)))
                                              (assert x7885)))
                                           (g7883
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7886
                                                        (close-input-port
                                                         input-port))
                                                       (g7887 res))
                                                g7887))))
                                    g7883)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7888 (cons x '()))) g7888)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7889
                                            (letrec ((x7892 (char? c1)))
                                              (assert x7892)))
                                           (g7890
                                            (letrec ((x7893 (char? c2)))
                                              (assert x7893)))
                                           (g7891
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7894
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7894))))
                                    g7891)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7895
                                            (letrec ((x7896
                                                      (letrec ((x7897 (car x)))
                                                        (car x7897))))
                                              (cdr x7896))))
                                    g7895)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7898
                                            (letrec ((x7899
                                                      (letrec ((x7900
                                                                (letrec ((x7901
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7901))))
                                                        (car x7900))))
                                              (cdr x7899))))
                                    g7898)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7902
                                            (letrec ((x7903
                                                      (letrec ((x7904 (car x)))
                                                        (cdr x7904))))
                                              (car x7903))))
                                    g7902)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7905
                                            (letrec ((x7906
                                                      (letrec ((x7907 (cdr x)))
                                                        (car x7907))))
                                              (car x7906))))
                                    g7905)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7908
                                            (letrec ((x7911 (char? c1)))
                                              (assert x7911)))
                                           (g7909
                                            (letrec ((x7912 (char? c2)))
                                              (assert x7912)))
                                           (g7910
                                            (letrec ((x7913
                                                      (char-ci<=? c1 c2)))
                                              (not x7913))))
                                    g7910)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7914
                                            (letrec ((x7915
                                                      (letrec ((x7916
                                                                (letrec ((x7917
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7917))))
                                                        (car x7916))))
                                              (car x7915))))
                                    g7914)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7918
                                            (letrec ((x7920 (number? x)))
                                              (assert x7920)))
                                           (g7919 (< x 0)))
                                    g7919)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7921 (memq e l))) g7921)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7922
                                            (letrec ((x7923
                                                      (letrec ((x7924 (car x)))
                                                        (car x7924))))
                                              (car x7923))))
                                    g7922)))
                               (debug
                                (lambda (e) (letrec ((g7925 '())) g7925)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7926
                                            (letrec ((x7928 (list? l)))
                                              (assert x7928)))
                                           (g7927
                                            (letrec ((x-cnd7929 (null? l)))
                                              (if x-cnd7929
                                                '()
                                                (letrec ((x7932
                                                          (letrec ((x7933
                                                                    (cdr l)))
                                                            (reverse x7933)))
                                                         (x7930
                                                          (letrec ((x7931
                                                                    (car l)))
                                                            (list x7931))))
                                                  (append x7932 x7930))))))
                                    g7927)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7934
                                            (letrec ((x7935
                                                      (letrec ((x7936
                                                                (letrec ((x7937
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7937))))
                                                        (car x7936))))
                                              (car x7935))))
                                    g7934)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7938
                                            (letrec ((x7939
                                                      (letrec ((x7940
                                                                (letrec ((x7941
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7941))))
                                                        (cdr x7940))))
                                              (cdr x7939))))
                                    g7938)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7942
                                            (letrec ((x7944 (number? x)))
                                              (assert x7944)))
                                           (g7943
                                            (letrec ((x7945 (modulo x 2)))
                                              (= 1 x7945))))
                                    g7943)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7946
                                            (letrec ((x7947
                                                      (letrec ((x7948
                                                                (letrec ((x7949
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7949))))
                                                        (car x7948))))
                                              (car x7947))))
                                    g7946)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7950
                                            (letrec ((x7953 (procedure? proc)))
                                              (assert x7953)))
                                           (g7951
                                            (letrec ((x7954 (list? args)))
                                              (assert x7954)))
                                           (g7952
                                            (if cnd
                                              (letrec ((g7955 (proc))) g7955)
                                              (if cnd
                                                (letrec ((g7956
                                                          (letrec ((x7957
                                                                    (car
                                                                     args)))
                                                            (proc x7957))))
                                                  g7956)
                                                (if cnd
                                                  (letrec ((g7958
                                                            (letrec ((x7960
                                                                      (car
                                                                       args))
                                                                     (x7959
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7960
                                                               x7959))))
                                                    g7958)
                                                  (if cnd
                                                    (letrec ((g7961
                                                              (letrec ((x7964
                                                                        (car
                                                                         args))
                                                                       (x7963
                                                                        (cadr
                                                                         args))
                                                                       (x7962
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7964
                                                                 x7963
                                                                 x7962))))
                                                      g7961)
                                                    (if cnd
                                                      (letrec ((g7965
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
                                                                           args)))
                                                                  (proc
                                                                   x7969
                                                                   x7968
                                                                   x7967
                                                                   x7966))))
                                                        g7965)
                                                      (if cnd
                                                        (letrec ((g7970
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
                                                                             args))
                                                                           (x7971
                                                                            (letrec ((x7972
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7972))))
                                                                    (proc
                                                                     x7976
                                                                     x7975
                                                                     x7974
                                                                     x7973
                                                                     x7971))))
                                                          g7970)
                                                        (if cnd
                                                          (letrec ((g7977
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
                                                                                 x7981)))
                                                                             (x7978
                                                                              (letrec ((x7979
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7979))))
                                                                      (proc
                                                                       x7985
                                                                       x7984
                                                                       x7983
                                                                       x7982
                                                                       x7980
                                                                       x7978))))
                                                            g7977)
                                                          (if cnd
                                                            (letrec ((g7986
                                                                      (letrec ((x7996
                                                                                (car
                                                                                 args))
                                                                               (x7995
                                                                                (cadr
                                                                                 args))
                                                                               (x7994
                                                                                (caddr
                                                                                 args))
                                                                               (x7993
                                                                                (cadddr
                                                                                 args))
                                                                               (x7991
                                                                                (letrec ((x7992
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7992)))
                                                                               (x7989
                                                                                (letrec ((x7990
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7990)))
                                                                               (x7987
                                                                                (letrec ((x7988
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7988))))
                                                                        (proc
                                                                         x7996
                                                                         x7995
                                                                         x7994
                                                                         x7993
                                                                         x7991
                                                                         x7989
                                                                         x7987))))
                                                              g7986)
                                                            (letrec ((g7997
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7997)))))))))))
                                    g7952)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7998
                                            (letrec ((x8000 (list? l)))
                                              (assert x8000)))
                                           (g7999
                                            (letrec ((x-cnd8001 (null? l)))
                                              (if x-cnd8001
                                                #f
                                                (letrec ((x-cnd8002
                                                          (letrec ((x8003
                                                                    (car l)))
                                                            (equal? x8003 e))))
                                                  (if x-cnd8002
                                                    l
                                                    (letrec ((x8004 (cdr l)))
                                                      (member e x8004))))))))
                                    g7999)))
                               (call-with-current-continuation call/cc)
                               (cddddr
                                (lambda (x)
                                  (letrec ((g8005
                                            (letrec ((x8006
                                                      (letrec ((x8007
                                                                (letrec ((x8008
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8008))))
                                                        (cdr x8007))))
                                              (cdr x8006))))
                                    g8005)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g8009
                                            (letrec ((x8010
                                                      (letrec ((x8011
                                                                (letrec ((x8012
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8012))))
                                                        (cdr x8011))))
                                              (car x8010))))
                                    g8009)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8013 (random 42))) g8013)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8014
                                            (letrec ((x8016 (number? x)))
                                              (assert x8016)))
                                           (g8015 (= x 0)))
                                    g8015)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8017
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8018
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8018))))
                                    g8017)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8019
                                            (letrec ((x8020 (cdr x)))
                                              (car x8020))))
                                    g8019)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8021
                                            (letrec ((val7156
                                                      (letrec ((x8024
                                                                (pair? l))
                                                               (x8022
                                                                (letrec ((x8023
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8023))))
                                                        (and x8024 x8022))))
                                              (letrec ((g8025
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8025))))
                                    g8021)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8026
                                            (letrec ((x8027
                                                      (letrec ((x8028
                                                                (letrec ((x8029
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8029))))
                                                        (cdr x8028))))
                                              (cdr x8027))))
                                    g8026)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8030
                                            (letrec ((x-cnd8031
                                                      (letrec ((x8032 #\0))
                                                        (char<=? x8032 c))))
                                              (if x-cnd8031
                                                (letrec ((x8033 #\9))
                                                  (char<=? c x8033))
                                                #f))))
                                    g8030)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8034
                                            (letrec ((x8036 (list? l)))
                                              (assert x8036)))
                                           (g8035
                                            (letrec ((x-cnd8037 (null? l)))
                                              (if x-cnd8037
                                                #f
                                                (letrec ((x-cnd8038
                                                          (letrec ((x8039
                                                                    (caar l)))
                                                            (eqv? x8039 k))))
                                                  (if x-cnd8038
                                                    (car l)
                                                    (letrec ((x8040 (cdr l)))
                                                      (assq k x8040))))))))
                                    g8035)))
                               (not
                                (lambda (x)
                                  (letrec ((g8041 (if x #f #t))) g8041)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8042 (append l1 l2))) g8042)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8043
                                            (letrec ((x8045 (list? l)))
                                              (assert x8045)))
                                           (g8044
                                            (letrec ((x-cnd8046 (null? l)))
                                              (if x-cnd8046
                                                #f
                                                (letrec ((x-cnd8047
                                                          (letrec ((x8048
                                                                    (car l)))
                                                            (eq? x8048 e))))
                                                  (if x-cnd8047
                                                    l
                                                    (letrec ((x8049 (cdr l)))
                                                      (memq e x8049))))))))
                                    g8044)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8050
                                            (letrec ((x8051
                                                      (letrec ((x8052
                                                                (letrec ((x8053
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8053))))
                                                        (cdr x8052))))
                                              (car x8051))))
                                    g8050)))
                               (length
                                (lambda (l)
                                  (letrec ((g8054
                                            (letrec ((x8056 (list? l)))
                                              (assert x8056)))
                                           (g8055
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8057
                                                                  (letrec ((x-cnd8058
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8058
                                                                      0
                                                                      (letrec ((x8059
                                                                                (letrec ((x8060
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8060))))
                                                                        (+
                                                                         1
                                                                         x8059))))))
                                                          g8057))))
                                              (letrec ((g8061 (rec l)))
                                                g8061))))
                                    g8055)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8062
                                            (letrec ((x8065 (char? c1)))
                                              (assert x8065)))
                                           (g8063
                                            (letrec ((x8066 (char? c2)))
                                              (assert x8066)))
                                           (g8064
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8067
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8067))))
                                    g8064)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8068
                                            (letrec ((x8069 (string<=? s1 s2)))
                                              (not x8069))))
                                    g8068)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8070
                                            (letrec ((x8071
                                                      (letrec ((x8072 (cdr x)))
                                                        (car x8072))))
                                              (cdr x8071))))
                                    g8070)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8073
                                            (letrec ((x8075 (list? l)))
                                              (assert x8075)))
                                           (g8074
                                            (letrec ((x-cnd8076 (null? l)))
                                              (if x-cnd8076
                                                #f
                                                (letrec ((x-cnd8077
                                                          (letrec ((x8078
                                                                    (caar l)))
                                                            (equal? x8078 k))))
                                                  (if x-cnd8077
                                                    (car l)
                                                    (letrec ((x8079 (cdr l)))
                                                      (assoc k x8079))))))))
                                    g8074)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8080
                                            (letrec ((x8081 (car x)))
                                              (car x8081))))
                                    g8080)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8082
                                            (letrec ((x8085 (char? c1)))
                                              (assert x8085)))
                                           (g8083
                                            (letrec ((x8086 (char? c2)))
                                              (assert x8086)))
                                           (g8084
                                            (letrec ((x8087 (char<=? c1 c2)))
                                              (not x8087))))
                                    g8084)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8088
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8089
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8089))))
                                    g8088)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8090
                                            (letrec ((x8093 (procedure? f)))
                                              (assert x8093)))
                                           (g8091
                                            (letrec ((x8094 (list? l)))
                                              (assert x8094)))
                                           (g8092
                                            (letrec ((x-cnd8095 (null? l)))
                                              (if x-cnd8095
                                                #t
                                                (letrec ((x-cnd8096 (pair? l)))
                                                  (if x-cnd8096
                                                    (letrec ((g8097
                                                              (letrec ((x8099
                                                                        (car
                                                                         l)))
                                                                (f x8099)))
                                                             (g8098
                                                              (letrec ((x8100
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8100))))
                                                      g8098)
                                                    '()))))))
                                    g8092)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8101
                                            (letrec ((x8103 (number? x)))
                                              (assert x8103)))
                                           (g8102
                                            (letrec ((x-cnd8104 (< x 0)))
                                              (if x-cnd8104 (- 0 x) x))))
                                    g8102)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8105
                                            (letrec ((x8108 (char? c1)))
                                              (assert x8108)))
                                           (g8106
                                            (letrec ((x8109 (char? c2)))
                                              (assert x8109)))
                                           (g8107
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8110
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8110))))
                                    g8107)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8111
                                            (letrec ((x8112
                                                      (letrec ((x8113
                                                                (letrec ((x8114
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8114))))
                                                        (cdr x8113))))
                                              (car x8112))))
                                    g8111)))
                               (newline
                                (lambda () (letrec ((g8115 #f)) g8115)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8116
                                            (letrec ((x8118
                                                      (letrec ((x8119 (* m n)))
                                                        (abs x8119)))
                                                     (x8117 (gcd m n)))
                                              (/ x8118 x8117))))
                                    g8116)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8120
                                            (letrec ((x8122 (number? x)))
                                              (assert x8122)))
                                           (g8121
                                            (letrec ((x8123 (<= x y)))
                                              (not x8123))))
                                    g8121)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8124
                                            (letrec ((x8128 (list? l)))
                                              (assert x8128)))
                                           (g8125
                                            (letrec ((x8129 (number? index)))
                                              (assert x8129)))
                                           (g8126
                                            (letrec ((x8130
                                                      (letrec ((x8131
                                                                (length l)))
                                                        (< index x8131))))
                                              (assert x8130)))
                                           (g8127
                                            (letrec ((x-cnd8132 (= index 0)))
                                              (if x-cnd8132
                                                (car l)
                                                (letrec ((x8134 (cdr l))
                                                         (x8133 (- index 1)))
                                                  (list-ref x8134 x8133))))))
                                    g8127)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8135
                                            (letrec ((x-cnd8136 (= b 0)))
                                              (if x-cnd8136
                                                a
                                                (letrec ((x8137 (modulo a b)))
                                                  (gcd b x8137))))))
                                    g8135))))
                        (letrec ((g8138
                                  (letrec ((g8139
                                            (letrec ((STATE/C
                                                      (lambda (g7232
                                                               g7233
                                                               g7234)
                                                        (letrec ((g8140
                                                                  (letrec ((x-cnd8141
                                                                            ((lambda (v7231)
                                                                               (if (eq?
                                                                                    'init
                                                                                    v7231)
                                                                                 #t
                                                                                 (if (eq?
                                                                                      'opened
                                                                                      v7231)
                                                                                   #t
                                                                                   (if (eq?
                                                                                        'closed
                                                                                        v7231)
                                                                                     #t
                                                                                     (eq?
                                                                                      'ignore
                                                                                      v7231)))))
                                                                             g7234)))
                                                                    (if x-cnd8141
                                                                      g7234
                                                                      (blame
                                                                       g7232
                                                                       '(lambda (v7231)
                                                                          (if (eq?
                                                                               'init
                                                                               v7231)
                                                                            #t
                                                                            (if (eq?
                                                                                 'opened
                                                                                 v7231)
                                                                              #t
                                                                              (if (eq?
                                                                                   'closed
                                                                                   v7231)
                                                                                #t
                                                                                (eq?
                                                                                 'ignore
                                                                                 v7231))))))))))
                                                          g8140)))
                                                     (loop
                                                      (lambda ()
                                                        (letrec ((g8142
                                                                  (loop)))
                                                          g8142)))
                                                     (readit
                                                      (lambda (st)
                                                        (letrec ((g8143
                                                                  (letrec ((x-cnd8144
                                                                            (equal?
                                                                             'opened
                                                                             st)))
                                                                    (if x-cnd8144
                                                                      'opened
                                                                      'ignore))))
                                                          g8143)))
                                                     (read_
                                                      (lambda (x st)
                                                        (letrec ((g8145
                                                                  (if x
                                                                    (readit st)
                                                                    st)))
                                                          g8145)))
                                                     (closeit
                                                      (lambda (st)
                                                        (letrec ((g8146
                                                                  (if cnd
                                                                    (letrec ((g8147
                                                                              'closed))
                                                                      g8147)
                                                                    (if cnd
                                                                      (letrec ((g8148
                                                                                'ignore))
                                                                        g8148)
                                                                      (letrec ((g8149
                                                                                (loop))
                                                                               (g8150
                                                                                0))
                                                                        g8150)))))
                                                          g8146)))
                                                     (close_
                                                      (lambda (x st)
                                                        (letrec ((g8151
                                                                  (if x
                                                                    (closeit
                                                                     st)
                                                                    st)))
                                                          g8151)))
                                                     (f
                                                      (lambda (x y st)
                                                        (letrec ((g8152
                                                                  (letrec ((x8154
                                                                            (close_
                                                                             x
                                                                             st)))
                                                                    (close_
                                                                     y
                                                                     x8154)))
                                                                 (g8153
                                                                  (letrec ((x8155
                                                                            (letrec ((x8156
                                                                                      (read_
                                                                                       x
                                                                                       st)))
                                                                              (read_
                                                                               y
                                                                               x8156))))
                                                                    (f
                                                                     x
                                                                     y
                                                                     x8155))))
                                                          g8153)))
                                                     (next
                                                      (lambda (st)
                                                        (letrec ((g8157
                                                                  (letrec ((x-cnd8158
                                                                            (equal?
                                                                             'init
                                                                             st)))
                                                                    (if x-cnd8158
                                                                      'opened
                                                                      'ignore))))
                                                          g8157)))
                                                     (g
                                                      (lambda (b3 x st)
                                                        (letrec ((g8159
                                                                  (letrec ((x-cnd8160
                                                                            (>
                                                                             b3
                                                                             0)))
                                                                    (if x-cnd8160
                                                                      (letrec ((x8161
                                                                                (next
                                                                                 st)))
                                                                        (f
                                                                         x
                                                                         #t
                                                                         x8161))
                                                                      (f
                                                                       x
                                                                       #f
                                                                       st)))))
                                                          g8159)))
                                                     (main
                                                      (lambda (b2 b3)
                                                        (letrec ((g8162
                                                                  (letrec ((x-cnd8164
                                                                            (>
                                                                             b2
                                                                             0)))
                                                                    (if x-cnd8164
                                                                      (g
                                                                       b3
                                                                       #t
                                                                       'opened)
                                                                      (g
                                                                       b3
                                                                       #f
                                                                       'init))))
                                                                 (g8163 'unit))
                                                          g8163))))
                                              (letrec ((g8165
                                                        (letrec ((g8166
                                                                  (letrec ((g8167
                                                                            (letrec ((x8170
                                                                                      ((lambda (j7237
                                                                                                k7238
                                                                                                f7239)
                                                                                         (lambda (g7235
                                                                                                  g7236)
                                                                                           (any/c
                                                                                            j7237
                                                                                            k7238
                                                                                            (f7239
                                                                                             (integer?/c
                                                                                              j7237
                                                                                              k7238
                                                                                              g7235)
                                                                                             (integer?/c
                                                                                              j7237
                                                                                              k7238
                                                                                              g7236)))))
                                                                                       'module
                                                                                       'importer
                                                                                       main))
                                                                                     (x8169
                                                                                      (input))
                                                                                     (x8168
                                                                                      (input)))
                                                                              (x8170
                                                                               x8169
                                                                               x8168))))
                                                                    g8167)))
                                                          g8166)))
                                                g8165))))
                                    g8139)))
                          g8138))))
              g7251)))
    g7250))
