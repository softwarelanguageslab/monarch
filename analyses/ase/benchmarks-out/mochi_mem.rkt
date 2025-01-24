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
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7258 '())
                                 (g7259
                                  (letrec ((real/c
                                            (lambda (g7162 g7163 g7164)
                                              (letrec ((g7260
                                                        (letrec ((x-cnd7261
                                                                  (real?
                                                                   g7164)))
                                                          (if x-cnd7261
                                                            g7164
                                                            (blame
                                                             g7162
                                                             'real?)))))
                                                g7260)))
                                           (boolean?/c
                                            (lambda (g7165 g7166 g7167)
                                              (letrec ((g7262
                                                        (letrec ((x-cnd7263
                                                                  (boolean?
                                                                   g7167)))
                                                          (if x-cnd7263
                                                            g7167
                                                            (blame
                                                             g7165
                                                             'boolean?)))))
                                                g7262)))
                                           (number?/c
                                            (lambda (g7168 g7169 g7170)
                                              (letrec ((g7264
                                                        (letrec ((x-cnd7265
                                                                  (number?
                                                                   g7170)))
                                                          (if x-cnd7265
                                                            g7170
                                                            (blame
                                                             g7168
                                                             'number?)))))
                                                g7264)))
                                           (any/c
                                            (lambda (g7171 g7172 g7173)
                                              (letrec ((g7266
                                                        (letrec ((x-cnd7267
                                                                  ((lambda (v)
                                                                     (letrec ((g7268
                                                                               #t))
                                                                       g7268))
                                                                   g7173)))
                                                          (if x-cnd7267
                                                            g7173
                                                            (blame
                                                             g7171
                                                             '(lambda (v)
                                                                #t))))))
                                                g7266)))
                                           (any?/c
                                            (lambda (g7174 g7175 g7176)
                                              (letrec ((g7269
                                                        (letrec ((x-cnd7270
                                                                  ((lambda (v)
                                                                     (letrec ((g7271
                                                                               #t))
                                                                       g7271))
                                                                   g7176)))
                                                          (if x-cnd7270
                                                            g7176
                                                            (blame
                                                             g7174
                                                             '(lambda (v)
                                                                #t))))))
                                                g7269)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7177 g7178 g7179)
                                              (letrec ((g7272
                                                        (letrec ((x-cnd7273
                                                                  (pair?
                                                                   g7179)))
                                                          (if x-cnd7273
                                                            g7179
                                                            (blame
                                                             g7177
                                                             'pair?)))))
                                                g7272)))
                                           (pair?/c
                                            (lambda (g7180 g7181 g7182)
                                              (letrec ((g7274
                                                        (letrec ((x-cnd7275
                                                                  (pair?
                                                                   g7182)))
                                                          (if x-cnd7275
                                                            g7182
                                                            (blame
                                                             g7180
                                                             'pair?)))))
                                                g7274)))
                                           (integer?/c
                                            (lambda (g7183 g7184 g7185)
                                              (letrec ((g7276
                                                        (letrec ((x-cnd7277
                                                                  (integer?
                                                                   g7185)))
                                                          (if x-cnd7277
                                                            g7185
                                                            (blame
                                                             g7183
                                                             'integer?)))))
                                                g7276)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7278
                                                        (lambda (k j v)
                                                          (letrec ((g7279
                                                                    (letrec ((x-cnd7280
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7280
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7279))))
                                                g7278)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7281
                                                        (lambda (k j v)
                                                          (letrec ((g7282
                                                                    (letrec ((x-cnd7283
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7283
                                                                        '()
                                                                        (letrec ((x7287
                                                                                  (letrec ((x7288
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7288)))
                                                                                 (x7284
                                                                                  (letrec ((x7286
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7285
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7286
                                                                                     k
                                                                                     j
                                                                                     x7285))))
                                                                          (cons
                                                                           x7287
                                                                           x7284))))))
                                                            g7282))))
                                                g7281)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7289 #t)) g7289)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7290
                                                        (letrec ((x7291
                                                                  (= v 0)))
                                                          (not x7291))))
                                                g7290)))
                                           (nonzero?/c
                                            (lambda (g7186 g7187 g7188)
                                              (letrec ((g7292
                                                        (letrec ((x-cnd7293
                                                                  ((lambda (v)
                                                                     (letrec ((g7294
                                                                               (letrec ((x7295
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7295))))
                                                                       g7294))
                                                                   g7188)))
                                                          (if x-cnd7293
                                                            g7188
                                                            (blame
                                                             g7186
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7292)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7296 v)) g7296)))
                                           (+
                                            ((lambda (j7191 k7192 f7193)
                                               (letrec ((g7298
                                                         (lambda (g7189 g7190)
                                                           (letrec ((g7299
                                                                     (letrec ((x7300
                                                                               (letrec ((x7302
                                                                                         (number?/c
                                                                                          j7191
                                                                                          k7192
                                                                                          g7189))
                                                                                        (x7301
                                                                                         (number?/c
                                                                                          j7191
                                                                                          k7192
                                                                                          g7190)))
                                                                                 (f7193
                                                                                  x7302
                                                                                  x7301))))
                                                                       (number?/c
                                                                        j7191
                                                                        k7192
                                                                        x7300))))
                                                             g7299))))
                                                 g7298))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7297 (orig-+ a b)))
                                                 g7297))))
                                           (-
                                            ((lambda (j7196 k7197 f7198)
                                               (letrec ((g7304
                                                         (lambda (g7194 g7195)
                                                           (letrec ((g7305
                                                                     (letrec ((x7306
                                                                               (letrec ((x7308
                                                                                         (number?/c
                                                                                          j7196
                                                                                          k7197
                                                                                          g7194))
                                                                                        (x7307
                                                                                         (number?/c
                                                                                          j7196
                                                                                          k7197
                                                                                          g7195)))
                                                                                 (f7198
                                                                                  x7308
                                                                                  x7307))))
                                                                       (number?/c
                                                                        j7196
                                                                        k7197
                                                                        x7306))))
                                                             g7305))))
                                                 g7304))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7303 (orig-- a b)))
                                                 g7303))))
                                           (*
                                            ((lambda (j7201 k7202 f7203)
                                               (letrec ((g7310
                                                         (lambda (g7199 g7200)
                                                           (letrec ((g7311
                                                                     (letrec ((x7312
                                                                               (letrec ((x7314
                                                                                         (number?/c
                                                                                          j7201
                                                                                          k7202
                                                                                          g7199))
                                                                                        (x7313
                                                                                         (number?/c
                                                                                          j7201
                                                                                          k7202
                                                                                          g7200)))
                                                                                 (f7203
                                                                                  x7314
                                                                                  x7313))))
                                                                       (number?/c
                                                                        j7201
                                                                        k7202
                                                                        x7312))))
                                                             g7311))))
                                                 g7310))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7309 (orig-* a b)))
                                                 g7309))))
                                           (/
                                            ((lambda (j7206 k7207 f7208)
                                               (letrec ((g7316
                                                         (lambda (g7204 g7205)
                                                           (letrec ((g7317
                                                                     (letrec ((x7318
                                                                               (letrec ((x7320
                                                                                         (number?/c
                                                                                          j7206
                                                                                          k7207
                                                                                          g7204))
                                                                                        (x7319
                                                                                         (number?/c
                                                                                          j7206
                                                                                          k7207
                                                                                          g7205)))
                                                                                 (f7208
                                                                                  x7320
                                                                                  x7319))))
                                                                       (number?/c
                                                                        j7206
                                                                        k7207
                                                                        x7318))))
                                                             g7317))))
                                                 g7316))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7315 (orig-/ a b)))
                                                 g7315))))
                                           (car
                                            ((lambda (j7210 k7211 f7212)
                                               (letrec ((g7322
                                                         (lambda (g7209)
                                                           (letrec ((g7323
                                                                     (letrec ((x7324
                                                                               (letrec ((x7325
                                                                                         (pair?/c
                                                                                          j7210
                                                                                          k7211
                                                                                          g7209)))
                                                                                 (f7212
                                                                                  x7325))))
                                                                       (any/c
                                                                        j7210
                                                                        k7211
                                                                        x7324))))
                                                             g7323))))
                                                 g7322))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7321 (orig-car p)))
                                                 g7321))))
                                           (cdr
                                            ((lambda (j7214 k7215 f7216)
                                               (letrec ((g7327
                                                         (lambda (g7213)
                                                           (letrec ((g7328
                                                                     (letrec ((x7329
                                                                               (letrec ((x7330
                                                                                         (pair?/c
                                                                                          j7214
                                                                                          k7215
                                                                                          g7213)))
                                                                                 (f7216
                                                                                  x7330))))
                                                                       (any/c
                                                                        j7214
                                                                        k7215
                                                                        x7329))))
                                                             g7328))))
                                                 g7327))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7326 (orig-cdr p)))
                                                 g7326))))
                                           (cons
                                            ((lambda (j7219 k7220 f7221)
                                               (letrec ((g7332
                                                         (lambda (g7217 g7218)
                                                           (letrec ((g7333
                                                                     (letrec ((x7334
                                                                               (letrec ((x7336
                                                                                         (any/c
                                                                                          j7219
                                                                                          k7220
                                                                                          g7217))
                                                                                        (x7335
                                                                                         (any/c
                                                                                          j7219
                                                                                          k7220
                                                                                          g7218)))
                                                                                 (f7221
                                                                                  x7336
                                                                                  x7335))))
                                                                       (pair?/c
                                                                        j7219
                                                                        k7220
                                                                        x7334))))
                                                             g7333))))
                                                 g7332))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7331 (cons a b)))
                                                 g7331))))
                                           (vector-ref
                                            ((lambda (j7223 k7224 f7225)
                                               (letrec ((g7338
                                                         (lambda (g7222)
                                                           (letrec ((g7339
                                                                     (letrec ((x7340
                                                                               (letrec ((x7341
                                                                                         (vector?/c
                                                                                          j7223
                                                                                          k7224
                                                                                          g7222)))
                                                                                 (f7225
                                                                                  x7341))))
                                                                       (integer?/c
                                                                        j7223
                                                                        k7224
                                                                        x7340))))
                                                             g7339))))
                                                 g7338))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7337
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7337))))
                                           (vector-set!
                                            ((lambda (j7228 k7229 f7230)
                                               (letrec ((g7343
                                                         (lambda (g7226 g7227)
                                                           (letrec ((g7344
                                                                     (letrec ((x7345
                                                                               (letrec ((x7347
                                                                                         (vector?/c
                                                                                          j7228
                                                                                          k7229
                                                                                          g7226))
                                                                                        (x7346
                                                                                         (integer?/c
                                                                                          j7228
                                                                                          k7229
                                                                                          g7227)))
                                                                                 (f7230
                                                                                  x7347
                                                                                  x7346))))
                                                                       (any/c
                                                                        j7228
                                                                        k7229
                                                                        x7345))))
                                                             g7344))))
                                                 g7343))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7342
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7342))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7348 #t)) g7348)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7349
                                                        (letrec ((x7350
                                                                  (letrec ((x7351
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7351))))
                                                          (cdr x7350))))
                                                g7349)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7352
                                                        (letrec ((x7355
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7355)))
                                                       (g7353
                                                        (letrec ((x7356
                                                                  (list? l)))
                                                          (assert x7356)))
                                                       (g7354
                                                        (letrec ((x-cnd7357
                                                                  (null? l)))
                                                          (if x-cnd7357
                                                            '()
                                                            (letrec ((x7360
                                                                      (letrec ((x7361
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7361)))
                                                                     (x7358
                                                                      (letrec ((x7359
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7359))))
                                                              (cons
                                                               x7360
                                                               x7358))))))
                                                g7354)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7362
                                                        (letrec ((x7363
                                                                  (car x)))
                                                          (cdr x7363))))
                                                g7362)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7364
                                                        (letrec ((x7365
                                                                  (letrec ((x7366
                                                                            (letrec ((x7367
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7367))))
                                                                    (cdr
                                                                     x7366))))
                                                          (car x7365))))
                                                g7364)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7368
                                                        (letrec ((x7369
                                                                  (letrec ((x7370
                                                                            (letrec ((x7371
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7371))))
                                                                    (car
                                                                     x7370))))
                                                          (cdr x7369))))
                                                g7368)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7372
                                                        (letrec ((x7375
                                                                  (string?
                                                                   filename)))
                                                          (assert x7375)))
                                                       (g7373
                                                        (letrec ((x7376
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7376)))
                                                       (g7374
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7377
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7378 res))
                                                            g7378))))
                                                g7374)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7379
                                                        (letrec ((x7380
                                                                  (letrec ((x7381
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7381))))
                                                          (car x7380))))
                                                g7379)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7382
                                                        (letrec ((x7383
                                                                  (letrec ((x7384
                                                                            (letrec ((x7385
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7385))))
                                                                    (car
                                                                     x7384))))
                                                          (cdr x7383))))
                                                g7382)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7386
                                                        (letrec ((x7388
                                                                  (list? l)))
                                                          (assert x7388)))
                                                       (g7387
                                                        (letrec ((x-cnd7389
                                                                  (null? l)))
                                                          (if x-cnd7389
                                                            #f
                                                            (letrec ((x-cnd7390
                                                                      (letrec ((x7391
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7391
                                                                         k))))
                                                              (if x-cnd7390
                                                                (car l)
                                                                (letrec ((x7392
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7392))))))))
                                                g7387)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7393
                                                        (letrec ((x7394
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7394))))
                                                g7393)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7395
                                                        (letrec ((x7397
                                                                  (list? l)))
                                                          (assert x7397)))
                                                       (g7396
                                                        (letrec ((x-cnd7398
                                                                  (null? l)))
                                                          (if x-cnd7398
                                                            ""
                                                            (letrec ((x7401
                                                                      (letrec ((x7402
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7402)))
                                                                     (x7399
                                                                      (letrec ((x7400
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7400))))
                                                              (string-append
                                                               x7401
                                                               x7399))))))
                                                g7396)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7403
                                                        (letrec ((x7406
                                                                  (char? c1)))
                                                          (assert x7406)))
                                                       (g7404
                                                        (letrec ((x7407
                                                                  (char? c2)))
                                                          (assert x7407)))
                                                       (g7405
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7408
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7408))))
                                                g7405)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7409
                                                        (letrec ((x7410
                                                                  (letrec ((x7411
                                                                            (letrec ((x7412
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7412))))
                                                                    (cdr
                                                                     x7411))))
                                                          (cdr x7410))))
                                                g7409)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7413
                                                        (letrec ((x7416
                                                                  (list? l)))
                                                          (assert x7416)))
                                                       (g7414
                                                        (letrec ((x7417
                                                                  (numer?)))
                                                          (assert x7417)))
                                                       (g7415
                                                        (letrec ((x-cnd7418
                                                                  (zero? k)))
                                                          (if x-cnd7418
                                                            x
                                                            (letrec ((x7420
                                                                      (cdr x))
                                                                     (x7419
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7420
                                                               x7419))))))
                                                g7415)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7421 '())) g7421)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7422
                                                        (letrec ((x-cnd7423
                                                                  (letrec ((x7424
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7424))))
                                                          (if x-cnd7423
                                                            (letrec ((x7425
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7425))
                                                            #f))))
                                                g7422)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7426
                                                        (letrec ((x7428
                                                                  (number? x)))
                                                          (assert x7428)))
                                                       (g7427
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7429
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7430
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7430)))))
                                                            g7429))))
                                                g7427)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7431
                                                        (letrec ((val7146
                                                                  (letrec ((x7432
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7432
                                                                     9))))
                                                          (letrec ((g7433
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7434
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7434
                                                                                   10))))
                                                                        (letrec ((g7435
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7436
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7436
                                                                                       32)))))
                                                                          g7435)))))
                                                            g7433))))
                                                g7431)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7437
                                                        (letrec ((x7438
                                                                  (letrec ((x7439
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7439))))
                                                          (cdr x7438))))
                                                g7437)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7440
                                                        (letrec ((x7442
                                                                  (number? x)))
                                                          (assert x7442)))
                                                       (g7441 (> x 0)))
                                                g7441)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7443 #f)) g7443)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7444
                                                        (letrec ((x7445
                                                                  (cdr x)))
                                                          (cdr x7445))))
                                                g7444)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7446
                                                        (letrec ((x7448
                                                                  (number? x)))
                                                          (assert x7448)))
                                                       (g7447
                                                        (letrec ((x-cnd7449
                                                                  (< x 0)))
                                                          (if x-cnd7449
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7447)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7450
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7451
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7453
                                                                                          (null?
                                                                                           a))
                                                                                         (x7452
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7453
                                                                                       x7452))))
                                                                        (letrec ((g7454
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7457
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7456
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7455
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7457
                                                                                                     x7456
                                                                                                     x7455))))
                                                                                      (letrec ((g7458
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7466
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7465
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7462
                                                                                                                      (letrec ((x7464
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7463
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7464
                                                                                                                         x7463)))
                                                                                                                     (x7459
                                                                                                                      (letrec ((x7461
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7460
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7461
                                                                                                                         x7460))))
                                                                                                              (and x7466
                                                                                                                   x7465
                                                                                                                   x7462
                                                                                                                   x7459))))
                                                                                                    (letrec ((g7467
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7486
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7485
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7468
                                                                                                                          (letrec ((x7482
                                                                                                                                    (letrec ((x7483
                                                                                                                                              (letrec ((x7484
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7484))))
                                                                                                                                      (x7483)))
                                                                                                                                   (x7469
                                                                                                                                    (letrec ((x7480
                                                                                                                                              (letrec ((x7481
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7481
                                                                                                                                                 n)))
                                                                                                                                             (x7470
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7471
                                                                                                                                                                    (letrec ((x7478
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7472
                                                                                                                                                                              (letrec ((x7475
                                                                                                                                                                                        (letrec ((x7477
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7476
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7477
                                                                                                                                                                                           x7476)))
                                                                                                                                                                                       (x7473
                                                                                                                                                                                        (letrec ((x7474
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7474))))
                                                                                                                                                                                (and x7475
                                                                                                                                                                                     x7473))))
                                                                                                                                                                      (or x7478
                                                                                                                                                                          x7472))))
                                                                                                                                                            g7471))))
                                                                                                                                                (letrec ((g7479
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7479))))
                                                                                                                                      (and x7480
                                                                                                                                           x7470))))
                                                                                                                            (let x7482 x7469))))
                                                                                                                  (and x7486
                                                                                                                       x7485
                                                                                                                       x7468)))))
                                                                                                      g7467)))))
                                                                                        g7458)))))
                                                                          g7454)))))
                                                            g7451))))
                                                g7450)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7487
                                                        (letrec ((x7488
                                                                  (letrec ((x7489
                                                                            (letrec ((x7490
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7490))))
                                                                    (car
                                                                     x7489))))
                                                          (cdr x7488))))
                                                g7487)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7491
                                                        (letrec ((x7492
                                                                  (letrec ((x7493
                                                                            (letrec ((x7494
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7494))))
                                                                    (car
                                                                     x7493))))
                                                          (car x7492))))
                                                g7491)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7495 (eq? x y)))
                                                g7495)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7496
                                                        (letrec ((x7498
                                                                  (number? x)))
                                                          (assert x7498)))
                                                       (g7497
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7499
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7500
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7500)))))
                                                            g7499))))
                                                g7497)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7501
                                                        (letrec ((x7504
                                                                  (string?
                                                                   filename)))
                                                          (assert x7504)))
                                                       (g7502
                                                        (letrec ((x7505
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7505)))
                                                       (g7503
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7506
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7507 res))
                                                            g7507))))
                                                g7503)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7508 (cons x '())))
                                                g7508)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7509
                                                        (letrec ((x7512
                                                                  (char? c1)))
                                                          (assert x7512)))
                                                       (g7510
                                                        (letrec ((x7513
                                                                  (char? c2)))
                                                          (assert x7513)))
                                                       (g7511
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7514
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7514))))
                                                g7511)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7515
                                                        (letrec ((x7516
                                                                  (letrec ((x7517
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7517))))
                                                          (cdr x7516))))
                                                g7515)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7518
                                                        (letrec ((x7519
                                                                  (letrec ((x7520
                                                                            (letrec ((x7521
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7521))))
                                                                    (car
                                                                     x7520))))
                                                          (cdr x7519))))
                                                g7518)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7522
                                                        (letrec ((x7523
                                                                  (letrec ((x7524
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7524))))
                                                          (car x7523))))
                                                g7522)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7525
                                                        (letrec ((x7526
                                                                  (letrec ((x7527
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7527))))
                                                          (car x7526))))
                                                g7525)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7528
                                                        (letrec ((x7531
                                                                  (char? c1)))
                                                          (assert x7531)))
                                                       (g7529
                                                        (letrec ((x7532
                                                                  (char? c2)))
                                                          (assert x7532)))
                                                       (g7530
                                                        (letrec ((x7533
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7533))))
                                                g7530)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7534
                                                        (letrec ((x7535
                                                                  (letrec ((x7536
                                                                            (letrec ((x7537
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7537))))
                                                                    (car
                                                                     x7536))))
                                                          (car x7535))))
                                                g7534)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7538
                                                        (letrec ((x7540
                                                                  (number? x)))
                                                          (assert x7540)))
                                                       (g7539 (< x 0)))
                                                g7539)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7541 (memq e l)))
                                                g7541)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7542
                                                        (letrec ((x7543
                                                                  (letrec ((x7544
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7544))))
                                                          (car x7543))))
                                                g7542)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7545 '())) g7545)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7546
                                                        (letrec ((x7548
                                                                  (list? l)))
                                                          (assert x7548)))
                                                       (g7547
                                                        (letrec ((x-cnd7549
                                                                  (null? l)))
                                                          (if x-cnd7549
                                                            '()
                                                            (letrec ((x7552
                                                                      (letrec ((x7553
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7553)))
                                                                     (x7550
                                                                      (letrec ((x7551
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7551))))
                                                              (append
                                                               x7552
                                                               x7550))))))
                                                g7547)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7554
                                                        (letrec ((x7555
                                                                  (letrec ((x7556
                                                                            (letrec ((x7557
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7557))))
                                                                    (car
                                                                     x7556))))
                                                          (car x7555))))
                                                g7554)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7558
                                                        (letrec ((x7559
                                                                  (letrec ((x7560
                                                                            (letrec ((x7561
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7561))))
                                                                    (cdr
                                                                     x7560))))
                                                          (cdr x7559))))
                                                g7558)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7562
                                                        (letrec ((x7564
                                                                  (number? x)))
                                                          (assert x7564)))
                                                       (g7563
                                                        (letrec ((x7565
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7565))))
                                                g7563)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7566
                                                        (letrec ((x7567
                                                                  (letrec ((x7568
                                                                            (letrec ((x7569
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7569))))
                                                                    (car
                                                                     x7568))))
                                                          (car x7567))))
                                                g7566)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7570
                                                        (letrec ((x7573
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7573)))
                                                       (g7571
                                                        (letrec ((x7574
                                                                  (list?
                                                                   args)))
                                                          (assert x7574)))
                                                       (g7572
                                                        (if cnd
                                                          (letrec ((g7575
                                                                    (proc)))
                                                            g7575)
                                                          (if cnd
                                                            (letrec ((g7576
                                                                      (letrec ((x7577
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7577))))
                                                              g7576)
                                                            (if cnd
                                                              (letrec ((g7578
                                                                        (letrec ((x7580
                                                                                  (car
                                                                                   args))
                                                                                 (x7579
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7580
                                                                           x7579))))
                                                                g7578)
                                                              (if cnd
                                                                (letrec ((g7581
                                                                          (letrec ((x7584
                                                                                    (car
                                                                                     args))
                                                                                   (x7583
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7582
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7584
                                                                             x7583
                                                                             x7582))))
                                                                  g7581)
                                                                (if cnd
                                                                  (letrec ((g7585
                                                                            (letrec ((x7589
                                                                                      (car
                                                                                       args))
                                                                                     (x7588
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7587
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7586
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7589
                                                                               x7588
                                                                               x7587
                                                                               x7586))))
                                                                    g7585)
                                                                  (if cnd
                                                                    (letrec ((g7590
                                                                              (letrec ((x7596
                                                                                        (car
                                                                                         args))
                                                                                       (x7595
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7594
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7593
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7591
                                                                                        (letrec ((x7592
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7592))))
                                                                                (proc
                                                                                 x7596
                                                                                 x7595
                                                                                 x7594
                                                                                 x7593
                                                                                 x7591))))
                                                                      g7590)
                                                                    (if cnd
                                                                      (letrec ((g7597
                                                                                (letrec ((x7605
                                                                                          (car
                                                                                           args))
                                                                                         (x7604
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7603
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7602
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7600
                                                                                          (letrec ((x7601
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7601)))
                                                                                         (x7598
                                                                                          (letrec ((x7599
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7599))))
                                                                                  (proc
                                                                                   x7605
                                                                                   x7604
                                                                                   x7603
                                                                                   x7602
                                                                                   x7600
                                                                                   x7598))))
                                                                        g7597)
                                                                      (if cnd
                                                                        (letrec ((g7606
                                                                                  (letrec ((x7616
                                                                                            (car
                                                                                             args))
                                                                                           (x7615
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7614
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7613
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7611
                                                                                            (letrec ((x7612
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7612)))
                                                                                           (x7609
                                                                                            (letrec ((x7610
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7610)))
                                                                                           (x7607
                                                                                            (letrec ((x7608
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7608))))
                                                                                    (proc
                                                                                     x7616
                                                                                     x7615
                                                                                     x7614
                                                                                     x7613
                                                                                     x7611
                                                                                     x7609
                                                                                     x7607))))
                                                                          g7606)
                                                                        (letrec ((g7617
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7617)))))))))))
                                                g7572)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7618
                                                        (letrec ((x7620
                                                                  (list? l)))
                                                          (assert x7620)))
                                                       (g7619
                                                        (letrec ((x-cnd7621
                                                                  (null? l)))
                                                          (if x-cnd7621
                                                            #f
                                                            (letrec ((x-cnd7622
                                                                      (letrec ((x7623
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7623
                                                                         e))))
                                                              (if x-cnd7622
                                                                l
                                                                (letrec ((x7624
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7624))))))))
                                                g7619)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7625
                                                        (letrec ((x7626
                                                                  (letrec ((x7627
                                                                            (letrec ((x7628
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7628))))
                                                                    (cdr
                                                                     x7627))))
                                                          (cdr x7626))))
                                                g7625)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7629
                                                        (letrec ((x7630
                                                                  (letrec ((x7631
                                                                            (letrec ((x7632
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7632))))
                                                                    (cdr
                                                                     x7631))))
                                                          (car x7630))))
                                                g7629)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7633 (random 42)))
                                                g7633)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7634
                                                        (letrec ((x7636
                                                                  (number? x)))
                                                          (assert x7636)))
                                                       (g7635 (= x 0)))
                                                g7635)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7637
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7638
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7638))))
                                                g7637)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7639
                                                        (letrec ((x7640
                                                                  (cdr x)))
                                                          (car x7640))))
                                                g7639)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7641
                                                        (letrec ((val7156
                                                                  (letrec ((x7644
                                                                            (pair?
                                                                             l))
                                                                           (x7642
                                                                            (letrec ((x7643
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7643))))
                                                                    (and x7644
                                                                         x7642))))
                                                          (letrec ((g7645
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7645))))
                                                g7641)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7646
                                                        (letrec ((x7647
                                                                  (letrec ((x7648
                                                                            (letrec ((x7649
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7649))))
                                                                    (cdr
                                                                     x7648))))
                                                          (cdr x7647))))
                                                g7646)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7650
                                                        (letrec ((x-cnd7651
                                                                  (letrec ((x7652
                                                                            #\0))
                                                                    (char<=?
                                                                     x7652
                                                                     c))))
                                                          (if x-cnd7651
                                                            (letrec ((x7653
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7653))
                                                            #f))))
                                                g7650)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7654
                                                        (letrec ((x7656
                                                                  (list? l)))
                                                          (assert x7656)))
                                                       (g7655
                                                        (letrec ((x-cnd7657
                                                                  (null? l)))
                                                          (if x-cnd7657
                                                            #f
                                                            (letrec ((x-cnd7658
                                                                      (letrec ((x7659
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7659
                                                                         k))))
                                                              (if x-cnd7658
                                                                (car l)
                                                                (letrec ((x7660
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7660))))))))
                                                g7655)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7661 (if x #f #t)))
                                                g7661)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7662 (append l1 l2)))
                                                g7662)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7663
                                                        (letrec ((x7665
                                                                  (list? l)))
                                                          (assert x7665)))
                                                       (g7664
                                                        (letrec ((x-cnd7666
                                                                  (null? l)))
                                                          (if x-cnd7666
                                                            #f
                                                            (letrec ((x-cnd7667
                                                                      (letrec ((x7668
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7668
                                                                         e))))
                                                              (if x-cnd7667
                                                                l
                                                                (letrec ((x7669
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7669))))))))
                                                g7664)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7670
                                                        (letrec ((x7671
                                                                  (letrec ((x7672
                                                                            (letrec ((x7673
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7673))))
                                                                    (cdr
                                                                     x7672))))
                                                          (car x7671))))
                                                g7670)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7674
                                                        (letrec ((x7676
                                                                  (list? l)))
                                                          (assert x7676)))
                                                       (g7675
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7677
                                                                              (letrec ((x-cnd7678
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7678
                                                                                  0
                                                                                  (letrec ((x7679
                                                                                            (letrec ((x7680
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7680))))
                                                                                    (+
                                                                                     1
                                                                                     x7679))))))
                                                                      g7677))))
                                                          (letrec ((g7681
                                                                    (rec l)))
                                                            g7681))))
                                                g7675)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7682
                                                        (letrec ((x7685
                                                                  (char? c1)))
                                                          (assert x7685)))
                                                       (g7683
                                                        (letrec ((x7686
                                                                  (char? c2)))
                                                          (assert x7686)))
                                                       (g7684
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7687
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7687))))
                                                g7684)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7688
                                                        (letrec ((x7689
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7689))))
                                                g7688)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7690
                                                        (letrec ((x7691
                                                                  (letrec ((x7692
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7692))))
                                                          (cdr x7691))))
                                                g7690)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7693
                                                        (letrec ((x7695
                                                                  (list? l)))
                                                          (assert x7695)))
                                                       (g7694
                                                        (letrec ((x-cnd7696
                                                                  (null? l)))
                                                          (if x-cnd7696
                                                            #f
                                                            (letrec ((x-cnd7697
                                                                      (letrec ((x7698
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7698
                                                                         k))))
                                                              (if x-cnd7697
                                                                (car l)
                                                                (letrec ((x7699
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7699))))))))
                                                g7694)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7700
                                                        (letrec ((x7701
                                                                  (car x)))
                                                          (car x7701))))
                                                g7700)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7702
                                                        (letrec ((x7705
                                                                  (char? c1)))
                                                          (assert x7705)))
                                                       (g7703
                                                        (letrec ((x7706
                                                                  (char? c2)))
                                                          (assert x7706)))
                                                       (g7704
                                                        (letrec ((x7707
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7707))))
                                                g7704)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7708
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7709
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7709))))
                                                g7708)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7710
                                                        (letrec ((x7713
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7713)))
                                                       (g7711
                                                        (letrec ((x7714
                                                                  (list? l)))
                                                          (assert x7714)))
                                                       (g7712
                                                        (letrec ((x-cnd7715
                                                                  (null? l)))
                                                          (if x-cnd7715
                                                            #t
                                                            (letrec ((x-cnd7716
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7716
                                                                (letrec ((g7717
                                                                          (letrec ((x7719
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7719)))
                                                                         (g7718
                                                                          (letrec ((x7720
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7720))))
                                                                  g7718)
                                                                '()))))))
                                                g7712)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7721
                                                        (letrec ((x7723
                                                                  (number? x)))
                                                          (assert x7723)))
                                                       (g7722
                                                        (letrec ((x-cnd7724
                                                                  (< x 0)))
                                                          (if x-cnd7724
                                                            (- 0 x)
                                                            x))))
                                                g7722)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7725
                                                        (letrec ((x7728
                                                                  (char? c1)))
                                                          (assert x7728)))
                                                       (g7726
                                                        (letrec ((x7729
                                                                  (char? c2)))
                                                          (assert x7729)))
                                                       (g7727
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7730
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7730))))
                                                g7727)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7731
                                                        (letrec ((x7732
                                                                  (letrec ((x7733
                                                                            (letrec ((x7734
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7734))))
                                                                    (cdr
                                                                     x7733))))
                                                          (car x7732))))
                                                g7731)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7735 #f)) g7735)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7736
                                                        (letrec ((x7738
                                                                  (letrec ((x7739
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7739)))
                                                                 (x7737
                                                                  (gcd m n)))
                                                          (/ x7738 x7737))))
                                                g7736)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7740
                                                        (letrec ((x7742
                                                                  (number? x)))
                                                          (assert x7742)))
                                                       (g7741
                                                        (letrec ((x7743
                                                                  (<= x y)))
                                                          (not x7743))))
                                                g7741)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7744
                                                        (letrec ((x7748
                                                                  (list? l)))
                                                          (assert x7748)))
                                                       (g7745
                                                        (letrec ((x7749
                                                                  (number?
                                                                   index)))
                                                          (assert x7749)))
                                                       (g7746
                                                        (letrec ((x7750
                                                                  (letrec ((x7751
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7751))))
                                                          (assert x7750)))
                                                       (g7747
                                                        (letrec ((x-cnd7752
                                                                  (= index 0)))
                                                          (if x-cnd7752
                                                            (car l)
                                                            (letrec ((x7754
                                                                      (cdr l))
                                                                     (x7753
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7754
                                                               x7753))))))
                                                g7747)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7755
                                                        (letrec ((x-cnd7756
                                                                  (= b 0)))
                                                          (if x-cnd7756
                                                            a
                                                            (letrec ((x7757
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7757))))))
                                                g7755)))
                                           (mk-list
                                            (lambda (n x)
                                              (letrec ((g7758
                                                        (letrec ((x-cnd7759
                                                                  (< n 0)))
                                                          (if x-cnd7759
                                                            empty
                                                            (letrec ((x7760
                                                                      (letrec ((x7761
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (mk-list
                                                                         x7761
                                                                         x))))
                                                              (cons
                                                               x
                                                               x7760))))))
                                                g7758)))
                                           (mem
                                            (lambda (x xs)
                                              (letrec ((g7762
                                                        (letrec ((x-cnd7763
                                                                  (empty? xs)))
                                                          (if x-cnd7763
                                                            #f
                                                            (letrec ((val7160
                                                                      (letrec ((x7764
                                                                                (car
                                                                                 xs)))
                                                                        (=
                                                                         x
                                                                         x7764))))
                                                              (letrec ((g7765
                                                                        (if val7160
                                                                          val7160
                                                                          (letrec ((x7766
                                                                                    (cdr
                                                                                     xs)))
                                                                            (mem
                                                                             x
                                                                             x7766)))))
                                                                g7765))))))
                                                g7762))))
                                    (letrec ((g7767
                                              ((lambda (j7233 k7234 f7235)
                                                 (letrec ((g7769
                                                           (lambda (g7231
                                                                    g7232)
                                                             (letrec ((g7770
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
                                                                         (letrec ((g7771
                                                                                   (letrec ((x7773
                                                                                             ((lambda (_
                                                                                                       x)
                                                                                                (letrec ((g7774
                                                                                                          (letrec ((x7779
                                                                                                                    (listof
                                                                                                                     integer?/c)))
                                                                                                            (and/c
                                                                                                             x7779
                                                                                                             (lambda (g7238
                                                                                                                      g7239
                                                                                                                      g7240)
                                                                                                               (letrec ((g7775
                                                                                                                         (letrec ((x-cnd7776
                                                                                                                                   ((lambda (l)
                                                                                                                                      (letrec ((g7777
                                                                                                                                                (letrec ((val7161
                                                                                                                                                          (empty?
                                                                                                                                                           l)))
                                                                                                                                                  (letrec ((g7778
                                                                                                                                                            (if val7161
                                                                                                                                                              val7161
                                                                                                                                                              (member
                                                                                                                                                               x
                                                                                                                                                               l))))
                                                                                                                                                    g7778))))
                                                                                                                                        g7777))
                                                                                                                                    g7240)))
                                                                                                                           (if x-cnd7776
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
                                                                                                                 g7775))))))
                                                                                                  g7774))
                                                                                              x7236
                                                                                              x7237))
                                                                                            (x7772
                                                                                             (f7235
                                                                                              x7236
                                                                                              x7237)))
                                                                                     (x7773
                                                                                      j7233
                                                                                      k7234
                                                                                      x7772))))
                                                                           g7771))))
                                                               g7770))))
                                                   g7769))
                                               'module
                                               'importer
                                               mk-list))
                                             (g7768
                                              (letrec ((x7782
                                                        ((lambda (j7243
                                                                  k7244
                                                                  f7245)
                                                           (letrec ((g7783
                                                                     (lambda (g7241
                                                                              g7242)
                                                                       (letrec ((g7784
                                                                                 (letrec ((x7785
                                                                                           (letrec ((x7788
                                                                                                     (integer?/c
                                                                                                      j7243
                                                                                                      k7244
                                                                                                      g7241))
                                                                                                    (x7786
                                                                                                     (letrec ((x7787
                                                                                                               (listof
                                                                                                                integer?/c)))
                                                                                                       (x7787
                                                                                                        j7243
                                                                                                        k7244
                                                                                                        g7242))))
                                                                                             (f7245
                                                                                              x7788
                                                                                              x7786))))
                                                                                   (boolean?/c
                                                                                    j7243
                                                                                    k7244
                                                                                    x7785))))
                                                                         g7784))))
                                                             g7783))
                                                         'module
                                                         'importer
                                                         mem))
                                                       (x7781 (input))
                                                       (x7780 (input)))
                                                (x7782 x7781 x7780))))
                                      g7768))))
                          g7259))))
              g7257)))
    g7256))
