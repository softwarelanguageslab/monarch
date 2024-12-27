(letrec ((any? (lambda (v) (letrec ((g7351 #t)) g7351)))
         (meta (lambda (v) (letrec ((g7352 v)) g7352)))
         (member
          (lambda (v lst)
            (letrec ((g7353
                      (letrec ((g7354
                                (letrec ((x-e7355 lst))
                                  (match
                                   x-e7355
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7356 (eq? v v1)))
                                       (if x-cnd7356 #t (member v vs)))))))))
                        g7354)))
              g7353)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7357 (lambda (v) (letrec ((g7358 v)) g7358)))) g7357)))
         (nonzero?
          (lambda (v)
            (letrec ((g7359 (letrec ((x7360 (= v 0))) (not x7360)))) g7359))))
  (letrec ((g7361
            (letrec ((g7362
                      (letrec ((real/c
                                (lambda (g7164 g7165 g7166)
                                  (letrec ((g7363
                                            (letrec ((x-cnd7364 (real? g7166)))
                                              (if x-cnd7364
                                                g7166
                                                (blame g7164 'real?)))))
                                    g7363)))
                               (boolean?/c
                                (lambda (g7167 g7168 g7169)
                                  (letrec ((g7365
                                            (letrec ((x-cnd7366
                                                      (boolean? g7169)))
                                              (if x-cnd7366
                                                g7169
                                                (blame g7167 'boolean?)))))
                                    g7365)))
                               (number?/c
                                (lambda (g7170 g7171 g7172)
                                  (letrec ((g7367
                                            (letrec ((x-cnd7368
                                                      (number? g7172)))
                                              (if x-cnd7368
                                                g7172
                                                (blame g7170 'number?)))))
                                    g7367)))
                               (any/c
                                (lambda (g7173 g7174 g7175)
                                  (letrec ((g7369
                                            (letrec ((x-cnd7370
                                                      ((lambda (v) #t) g7175)))
                                              (if x-cnd7370
                                                g7175
                                                (blame
                                                 g7173
                                                 '(lambda (v) #t))))))
                                    g7369)))
                               (any?/c
                                (lambda (g7176 g7177 g7178)
                                  (letrec ((g7371
                                            (letrec ((x-cnd7372
                                                      ((lambda (v) #t) g7178)))
                                              (if x-cnd7372
                                                g7178
                                                (blame
                                                 g7176
                                                 '(lambda (v) #t))))))
                                    g7371)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7179 g7180 g7181)
                                  (letrec ((g7373
                                            (letrec ((x-cnd7374 (pair? g7181)))
                                              (if x-cnd7374
                                                g7181
                                                (blame g7179 'pair?)))))
                                    g7373)))
                               (pair?/c
                                (lambda (g7182 g7183 g7184)
                                  (letrec ((g7375
                                            (letrec ((x-cnd7376 (pair? g7184)))
                                              (if x-cnd7376
                                                g7184
                                                (blame g7182 'pair?)))))
                                    g7375)))
                               (integer?
                                (lambda (g7185 g7186 g7187)
                                  (letrec ((g7377
                                            (letrec ((x-cnd7378
                                                      (integer? g7187)))
                                              (if x-cnd7378
                                                g7187
                                                (blame g7185 'integer?)))))
                                    g7377)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7379
                                            (lambda (k j v)
                                              (letrec ((g7380
                                                        (letrec ((x-cnd7381
                                                                  (c1 k j v)))
                                                          (if x-cnd7381
                                                            (c2 k j v)
                                                            #f))))
                                                g7380))))
                                    g7379)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7382
                                            (lambda (k j v)
                                              (letrec ((g7383
                                                        (letrec ((x-cnd7384
                                                                  (null? v)))
                                                          (if x-cnd7384
                                                            '()
                                                            (letrec ((x7388
                                                                      (letrec ((x7389
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7389)))
                                                                     (x7385
                                                                      (letrec ((x7387
                                                                                (list-of
                                                                                 contract))
                                                                               (x7386
                                                                                (cdr
                                                                                 v)))
                                                                        (x7387
                                                                         k
                                                                         j
                                                                         x7386))))
                                                              (cons
                                                               x7388
                                                               x7385))))))
                                                g7383))))
                                    g7382)))
                               (any? (lambda (v) (letrec ((g7390 #t)) g7390)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7391
                                            (letrec ((x7392 (= v 0)))
                                              (not x7392))))
                                    g7391)))
                               (nonzero?/c
                                (lambda (g7188 g7189 g7190)
                                  (letrec ((g7393
                                            (letrec ((x-cnd7394
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7190)))
                                              (if x-cnd7394
                                                g7190
                                                (blame
                                                 g7188
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7393)))
                               (meta (lambda (v) (letrec ((g7395 v)) g7395)))
                               (orig-+ +)
                               (+
                                ((lambda (j7193 k7194 f7195)
                                   (lambda (g7191 g7192)
                                     (number?/c
                                      j7193
                                      k7194
                                      (f7195
                                       (number?/c j7193 k7194 g7191)
                                       (number?/c j7193 k7194 g7192)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-+ a b))))
                               (orig-- -)
                               (-
                                ((lambda (j7198 k7199 f7200)
                                   (lambda (g7196 g7197)
                                     (number?/c
                                      j7198
                                      k7199
                                      (f7200
                                       (number?/c j7198 k7199 g7196)
                                       (number?/c j7198 k7199 g7197)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-- a b))))
                               (orig-* *)
                               (*
                                ((lambda (j7203 k7204 f7205)
                                   (lambda (g7201 g7202)
                                     (number?/c
                                      j7203
                                      k7204
                                      (f7205
                                       (number?/c j7203 k7204 g7201)
                                       (number?/c j7203 k7204 g7202)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-* a b))))
                               (orig-/ /)
                               (/
                                ((lambda (j7208 k7209 f7210)
                                   (lambda (g7206 g7207)
                                     (number?/c
                                      j7208
                                      k7209
                                      (f7210
                                       (number?/c j7208 k7209 g7206)
                                       (number?/c j7208 k7209 g7207)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-/ a b))))
                               (orig-car car)
                               (car
                                ((lambda (j7212 k7213 f7214)
                                   (lambda (g7211)
                                     (any/c
                                      j7212
                                      k7213
                                      (f7214 (pair?/c j7212 k7213 g7211)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-car p))))
                               (orig-cdr cdr)
                               (cdr
                                ((lambda (j7216 k7217 f7218)
                                   (lambda (g7215)
                                     (any/c
                                      j7216
                                      k7217
                                      (f7218 (pair?/c j7216 k7217 g7215)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-cdr p))))
                               (orig-cons cons)
                               (cons
                                ((lambda (j7221 k7222 f7223)
                                   (lambda (g7219 g7220)
                                     (pair?/c
                                      j7221
                                      k7222
                                      (f7223
                                       (any/c j7221 k7222 g7219)
                                       (any/c j7221 k7222 g7220)))))
                                 'server
                                 'client
                                 (lambda (a b) (cons a b))))
                               (orig-vector-ref vector-ref)
                               (vector-ref
                                ((lambda (j7225 k7226 f7227)
                                   (lambda (g7224)
                                     (integer?/c
                                      j7225
                                      k7226
                                      (f7227 (vector?/c j7225 k7226 g7224)))))
                                 'server
                                 'client
                                 (lambda (v i) (orig-vector-ref v i))))
                               (orig-vector-set vector-set!)
                               (vector-set!
                                ((lambda (j7230 k7231 f7232)
                                   (lambda (g7228 g7229)
                                     (any/c
                                      j7230
                                      k7231
                                      (f7232
                                       (vector?/c j7230 k7231 g7228)
                                       (integer?/c j7230 k7231 g7229)))))
                                 'server
                                 'client
                                 (lambda (vec i v)
                                   (orig-vector-set! vec i v))))
                               (assert
                                (lambda (cnd) (letrec ((g7396 #t)) g7396)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7397
                                            (letrec ((x7398
                                                      (letrec ((x7399 (cdr x)))
                                                        (cdr x7399))))
                                              (cdr x7398))))
                                    g7397)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7400
                                            (letrec ((x7403 (procedure? f)))
                                              (assert x7403)))
                                           (g7401
                                            (letrec ((x7404 (list? l)))
                                              (assert x7404)))
                                           (g7402
                                            (letrec ((x-cnd7405 (null? l)))
                                              (if x-cnd7405
                                                '()
                                                (letrec ((x7408
                                                          (letrec ((x7409
                                                                    (car l)))
                                                            (f x7409)))
                                                         (x7406
                                                          (letrec ((x7407
                                                                    (cdr l)))
                                                            (map f x7407))))
                                                  (cons x7408 x7406))))))
                                    g7402)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7410
                                            (letrec ((x7411 (car x)))
                                              (cdr x7411))))
                                    g7410)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7412
                                            (letrec ((x7413
                                                      (letrec ((x7414
                                                                (letrec ((x7415
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7415))))
                                                        (cdr x7414))))
                                              (car x7413))))
                                    g7412)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7416
                                            (letrec ((x7417
                                                      (letrec ((x7418
                                                                (letrec ((x7419
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7419))))
                                                        (car x7418))))
                                              (cdr x7417))))
                                    g7416)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7420
                                            (letrec ((x7423
                                                      (string? filename)))
                                              (assert x7423)))
                                           (g7421
                                            (letrec ((x7424 (procedure? proc)))
                                              (assert x7424)))
                                           (g7422
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7425
                                                        (close-output-port
                                                         output-port))
                                                       (g7426 res))
                                                g7426))))
                                    g7422)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7427
                                            (letrec ((x7428
                                                      (letrec ((x7429 (cdr x)))
                                                        (cdr x7429))))
                                              (car x7428))))
                                    g7427)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7430
                                            (letrec ((x7431
                                                      (letrec ((x7432
                                                                (letrec ((x7433
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7433))))
                                                        (car x7432))))
                                              (cdr x7431))))
                                    g7430)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7434
                                            (letrec ((x7436 (list? l)))
                                              (assert x7436)))
                                           (g7435
                                            (letrec ((x-cnd7437 (null? l)))
                                              (if x-cnd7437
                                                #f
                                                (letrec ((x-cnd7438
                                                          (letrec ((x7439
                                                                    (caar l)))
                                                            (eq? x7439 k))))
                                                  (if x-cnd7438
                                                    (car l)
                                                    (letrec ((x7440 (cdr l)))
                                                      (assq k x7440))))))))
                                    g7435)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7441
                                            (letrec ((x7442 (modulo x 2)))
                                              (= 0 x7442))))
                                    g7441)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7443
                                            (letrec ((x7445 (list? l)))
                                              (assert x7445)))
                                           (g7444
                                            (letrec ((x-cnd7446 (null? l)))
                                              (if x-cnd7446
                                                ""
                                                (letrec ((x7449
                                                          (letrec ((x7450
                                                                    (car l)))
                                                            (char->string
                                                             x7450)))
                                                         (x7447
                                                          (letrec ((x7448
                                                                    (cdr l)))
                                                            (list->string
                                                             x7448))))
                                                  (string-append
                                                   x7449
                                                   x7447))))))
                                    g7444)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7451
                                            (letrec ((x7454 (char? c1)))
                                              (assert x7454)))
                                           (g7452
                                            (letrec ((x7455 (char? c2)))
                                              (assert x7455)))
                                           (g7453
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7456
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7456))))
                                    g7453)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7457
                                            (letrec ((x7458
                                                      (letrec ((x7459
                                                                (letrec ((x7460
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7460))))
                                                        (cdr x7459))))
                                              (cdr x7458))))
                                    g7457)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7461
                                            (letrec ((x7464 (list? l)))
                                              (assert x7464)))
                                           (g7462
                                            (letrec ((x7465 (numer?)))
                                              (assert x7465)))
                                           (g7463
                                            (letrec ((x-cnd7466 (zero? k)))
                                              (if x-cnd7466
                                                x
                                                (letrec ((x7468 (cdr x))
                                                         (x7467 (- k 1)))
                                                  (list-tail x7468 x7467))))))
                                    g7463)))
                               (halt (lambda () (letrec ((g7469 '())) g7469)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7470
                                            (letrec ((x-cnd7471
                                                      (letrec ((x7472 #\a))
                                                        (char-ci>=? c x7472))))
                                              (if x-cnd7471
                                                (letrec ((x7473 #\z))
                                                  (char-ci<=? c x7473))
                                                #f))))
                                    g7470)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7474
                                            (letrec ((x7476 (number? x)))
                                              (assert x7476)))
                                           (g7475
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7477
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7478
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7478)))))
                                                g7477))))
                                    g7475)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7479
                                            (letrec ((val7146
                                                      (letrec ((x7480
                                                                (char->integer
                                                                 c)))
                                                        (= x7480 9))))
                                              (letrec ((g7481
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7482
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7482
                                                                       10))))
                                                            (letrec ((g7483
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7484
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7484
                                                                           32)))))
                                                              g7483)))))
                                                g7481))))
                                    g7479)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7485
                                            (letrec ((x7486
                                                      (letrec ((x7487 (car x)))
                                                        (cdr x7487))))
                                              (cdr x7486))))
                                    g7485)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7488
                                            (letrec ((x7490 (number? x)))
                                              (assert x7490)))
                                           (g7489 (> x 0)))
                                    g7489)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7491 #f)) g7491)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7492
                                            (letrec ((x7493 (cdr x)))
                                              (cdr x7493))))
                                    g7492)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7494
                                            (letrec ((x7496 (number? x)))
                                              (assert x7496)))
                                           (g7495
                                            (letrec ((x-cnd7497 (< x 0)))
                                              (if x-cnd7497
                                                (ceiling x)
                                                (floor x)))))
                                    g7495)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7498
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7499
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7501
                                                                              (null?
                                                                               a))
                                                                             (x7500
                                                                              (null?
                                                                               b)))
                                                                      (and x7501
                                                                           x7500))))
                                                            (letrec ((g7502
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7505
                                                                                            (string?
                                                                                             a))
                                                                                           (x7504
                                                                                            (string?
                                                                                             b))
                                                                                           (x7503
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7505
                                                                                         x7504
                                                                                         x7503))))
                                                                          (letrec ((g7506
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7514
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7513
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7510
                                                                                                          (letrec ((x7512
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7511
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7512
                                                                                                             x7511)))
                                                                                                         (x7507
                                                                                                          (letrec ((x7509
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7508
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7509
                                                                                                             x7508))))
                                                                                                  (and x7514
                                                                                                       x7513
                                                                                                       x7510
                                                                                                       x7507))))
                                                                                        (letrec ((g7515
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7534
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7533
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7516
                                                                                                              (letrec ((x7530
                                                                                                                        (letrec ((x7531
                                                                                                                                  (letrec ((x7532
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7532))))
                                                                                                                          (x7531)))
                                                                                                                       (x7517
                                                                                                                        (letrec ((x7528
                                                                                                                                  (letrec ((x7529
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7529
                                                                                                                                     n)))
                                                                                                                                 (x7518
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7519
                                                                                                                                                        (letrec ((x7526
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7520
                                                                                                                                                                  (letrec ((x7523
                                                                                                                                                                            (letrec ((x7525
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7524
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7525
                                                                                                                                                                               x7524)))
                                                                                                                                                                           (x7521
                                                                                                                                                                            (letrec ((x7522
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7522))))
                                                                                                                                                                    (and x7523
                                                                                                                                                                         x7521))))
                                                                                                                                                          (or x7526
                                                                                                                                                              x7520))))
                                                                                                                                                g7519))))
                                                                                                                                    (letrec ((g7527
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7527))))
                                                                                                                          (and x7528
                                                                                                                               x7518))))
                                                                                                                (let x7530 x7517))))
                                                                                                      (and x7534
                                                                                                           x7533
                                                                                                           x7516)))))
                                                                                          g7515)))))
                                                                            g7506)))))
                                                              g7502)))))
                                                g7499))))
                                    g7498)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7535
                                            (letrec ((x7536
                                                      (letrec ((x7537
                                                                (letrec ((x7538
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7538))))
                                                        (car x7537))))
                                              (cdr x7536))))
                                    g7535)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7539
                                            (letrec ((x7540
                                                      (letrec ((x7541
                                                                (letrec ((x7542
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7542))))
                                                        (car x7541))))
                                              (car x7540))))
                                    g7539)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7543 (eq? x y))) g7543)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7544
                                            (letrec ((x7546 (number? x)))
                                              (assert x7546)))
                                           (g7545
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7547
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7548
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7548)))))
                                                g7547))))
                                    g7545)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7549
                                            (letrec ((x7552
                                                      (string? filename)))
                                              (assert x7552)))
                                           (g7550
                                            (letrec ((x7553 (procedure? proc)))
                                              (assert x7553)))
                                           (g7551
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7554
                                                        (close-input-port
                                                         input-port))
                                                       (g7555 res))
                                                g7555))))
                                    g7551)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7556 (cons x '()))) g7556)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7557
                                            (letrec ((x7560 (char? c1)))
                                              (assert x7560)))
                                           (g7558
                                            (letrec ((x7561 (char? c2)))
                                              (assert x7561)))
                                           (g7559
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7562
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7562))))
                                    g7559)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7563
                                            (letrec ((x7564
                                                      (letrec ((x7565 (car x)))
                                                        (car x7565))))
                                              (cdr x7564))))
                                    g7563)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7566
                                            (letrec ((x7567
                                                      (letrec ((x7568
                                                                (letrec ((x7569
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7569))))
                                                        (car x7568))))
                                              (cdr x7567))))
                                    g7566)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7570
                                            (letrec ((x7571
                                                      (letrec ((x7572 (car x)))
                                                        (cdr x7572))))
                                              (car x7571))))
                                    g7570)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7573
                                            (letrec ((x7574
                                                      (letrec ((x7575 (cdr x)))
                                                        (car x7575))))
                                              (car x7574))))
                                    g7573)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7576
                                            (letrec ((x7579 (char? c1)))
                                              (assert x7579)))
                                           (g7577
                                            (letrec ((x7580 (char? c2)))
                                              (assert x7580)))
                                           (g7578
                                            (letrec ((x7581
                                                      (char-ci<=? c1 c2)))
                                              (not x7581))))
                                    g7578)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7582
                                            (letrec ((x7583
                                                      (letrec ((x7584
                                                                (letrec ((x7585
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7585))))
                                                        (car x7584))))
                                              (car x7583))))
                                    g7582)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7586
                                            (letrec ((x7588 (number? x)))
                                              (assert x7588)))
                                           (g7587 (< x 0)))
                                    g7587)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7589 (memq e l))) g7589)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7590
                                            (letrec ((x7591
                                                      (letrec ((x7592 (car x)))
                                                        (car x7592))))
                                              (car x7591))))
                                    g7590)))
                               (debug
                                (lambda (e) (letrec ((g7593 '())) g7593)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7594
                                            (letrec ((x7596 (list? l)))
                                              (assert x7596)))
                                           (g7595
                                            (letrec ((x-cnd7597 (null? l)))
                                              (if x-cnd7597
                                                '()
                                                (letrec ((x7600
                                                          (letrec ((x7601
                                                                    (cdr l)))
                                                            (reverse x7601)))
                                                         (x7598
                                                          (letrec ((x7599
                                                                    (car l)))
                                                            (list x7599))))
                                                  (append x7600 x7598))))))
                                    g7595)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7602
                                            (letrec ((x7603
                                                      (letrec ((x7604
                                                                (letrec ((x7605
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7605))))
                                                        (car x7604))))
                                              (car x7603))))
                                    g7602)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7606
                                            (letrec ((x7607
                                                      (letrec ((x7608
                                                                (letrec ((x7609
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7609))))
                                                        (cdr x7608))))
                                              (cdr x7607))))
                                    g7606)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7610
                                            (letrec ((x7612 (number? x)))
                                              (assert x7612)))
                                           (g7611
                                            (letrec ((x7613 (modulo x 2)))
                                              (= 1 x7613))))
                                    g7611)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7614
                                            (letrec ((x7615
                                                      (letrec ((x7616
                                                                (letrec ((x7617
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7617))))
                                                        (car x7616))))
                                              (car x7615))))
                                    g7614)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7618
                                            (letrec ((x7621 (procedure? proc)))
                                              (assert x7621)))
                                           (g7619
                                            (letrec ((x7622 (list? args)))
                                              (assert x7622)))
                                           (g7620
                                            (if cnd
                                              (letrec ((g7623 (proc))) g7623)
                                              (if cnd
                                                (letrec ((g7624
                                                          (letrec ((x7625
                                                                    (car
                                                                     args)))
                                                            (proc x7625))))
                                                  g7624)
                                                (if cnd
                                                  (letrec ((g7626
                                                            (letrec ((x7628
                                                                      (car
                                                                       args))
                                                                     (x7627
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7628
                                                               x7627))))
                                                    g7626)
                                                  (if cnd
                                                    (letrec ((g7629
                                                              (letrec ((x7632
                                                                        (car
                                                                         args))
                                                                       (x7631
                                                                        (cadr
                                                                         args))
                                                                       (x7630
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7632
                                                                 x7631
                                                                 x7630))))
                                                      g7629)
                                                    (if cnd
                                                      (letrec ((g7633
                                                                (letrec ((x7637
                                                                          (car
                                                                           args))
                                                                         (x7636
                                                                          (cadr
                                                                           args))
                                                                         (x7635
                                                                          (caddr
                                                                           args))
                                                                         (x7634
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7637
                                                                   x7636
                                                                   x7635
                                                                   x7634))))
                                                        g7633)
                                                      (if cnd
                                                        (letrec ((g7638
                                                                  (letrec ((x7644
                                                                            (car
                                                                             args))
                                                                           (x7643
                                                                            (cadr
                                                                             args))
                                                                           (x7642
                                                                            (caddr
                                                                             args))
                                                                           (x7641
                                                                            (cadddr
                                                                             args))
                                                                           (x7639
                                                                            (letrec ((x7640
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7640))))
                                                                    (proc
                                                                     x7644
                                                                     x7643
                                                                     x7642
                                                                     x7641
                                                                     x7639))))
                                                          g7638)
                                                        (if cnd
                                                          (letrec ((g7645
                                                                    (letrec ((x7653
                                                                              (car
                                                                               args))
                                                                             (x7652
                                                                              (cadr
                                                                               args))
                                                                             (x7651
                                                                              (caddr
                                                                               args))
                                                                             (x7650
                                                                              (cadddr
                                                                               args))
                                                                             (x7648
                                                                              (letrec ((x7649
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7649)))
                                                                             (x7646
                                                                              (letrec ((x7647
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7647))))
                                                                      (proc
                                                                       x7653
                                                                       x7652
                                                                       x7651
                                                                       x7650
                                                                       x7648
                                                                       x7646))))
                                                            g7645)
                                                          (if cnd
                                                            (letrec ((g7654
                                                                      (letrec ((x7664
                                                                                (car
                                                                                 args))
                                                                               (x7663
                                                                                (cadr
                                                                                 args))
                                                                               (x7662
                                                                                (caddr
                                                                                 args))
                                                                               (x7661
                                                                                (cadddr
                                                                                 args))
                                                                               (x7659
                                                                                (letrec ((x7660
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7660)))
                                                                               (x7657
                                                                                (letrec ((x7658
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7658)))
                                                                               (x7655
                                                                                (letrec ((x7656
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7656))))
                                                                        (proc
                                                                         x7664
                                                                         x7663
                                                                         x7662
                                                                         x7661
                                                                         x7659
                                                                         x7657
                                                                         x7655))))
                                                              g7654)
                                                            (letrec ((g7665
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7665)))))))))))
                                    g7620)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7666
                                            (letrec ((x7668 (list? l)))
                                              (assert x7668)))
                                           (g7667
                                            (letrec ((x-cnd7669 (null? l)))
                                              (if x-cnd7669
                                                #f
                                                (letrec ((x-cnd7670
                                                          (letrec ((x7671
                                                                    (car l)))
                                                            (equal? x7671 e))))
                                                  (if x-cnd7670
                                                    l
                                                    (letrec ((x7672 (cdr l)))
                                                      (member e x7672))))))))
                                    g7667)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7673
                                            (letrec ((x7674
                                                      (letrec ((x7675
                                                                (letrec ((x7676
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7676))))
                                                        (cdr x7675))))
                                              (cdr x7674))))
                                    g7673)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g7677
                                            (letrec ((x7678
                                                      (letrec ((x7679
                                                                (letrec ((x7680
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7680))))
                                                        (cdr x7679))))
                                              (car x7678))))
                                    g7677)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7681 (random 42))) g7681)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7682
                                            (letrec ((x7684 (number? x)))
                                              (assert x7684)))
                                           (g7683 (= x 0)))
                                    g7683)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7685
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7686
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7686))))
                                    g7685)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7687
                                            (letrec ((x7688 (cdr x)))
                                              (car x7688))))
                                    g7687)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7689
                                            (letrec ((val7156
                                                      (letrec ((x7692
                                                                (pair? l))
                                                               (x7690
                                                                (letrec ((x7691
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7691))))
                                                        (and x7692 x7690))))
                                              (letrec ((g7693
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7693))))
                                    g7689)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7694
                                            (letrec ((x7695
                                                      (letrec ((x7696
                                                                (letrec ((x7697
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7697))))
                                                        (cdr x7696))))
                                              (cdr x7695))))
                                    g7694)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7698
                                            (letrec ((x-cnd7699
                                                      (letrec ((x7700 #\0))
                                                        (char<=? x7700 c))))
                                              (if x-cnd7699
                                                (letrec ((x7701 #\9))
                                                  (char<=? c x7701))
                                                #f))))
                                    g7698)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7702
                                            (letrec ((x7704 (list? l)))
                                              (assert x7704)))
                                           (g7703
                                            (letrec ((x-cnd7705 (null? l)))
                                              (if x-cnd7705
                                                #f
                                                (letrec ((x-cnd7706
                                                          (letrec ((x7707
                                                                    (caar l)))
                                                            (eqv? x7707 k))))
                                                  (if x-cnd7706
                                                    (car l)
                                                    (letrec ((x7708 (cdr l)))
                                                      (assq k x7708))))))))
                                    g7703)))
                               (not
                                (lambda (x)
                                  (letrec ((g7709 (if x #f #t))) g7709)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7710 (append l1 l2))) g7710)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7711
                                            (letrec ((x7713 (list? l)))
                                              (assert x7713)))
                                           (g7712
                                            (letrec ((x-cnd7714 (null? l)))
                                              (if x-cnd7714
                                                #f
                                                (letrec ((x-cnd7715
                                                          (letrec ((x7716
                                                                    (car l)))
                                                            (eq? x7716 e))))
                                                  (if x-cnd7715
                                                    l
                                                    (letrec ((x7717 (cdr l)))
                                                      (memq e x7717))))))))
                                    g7712)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7718
                                            (letrec ((x7719
                                                      (letrec ((x7720
                                                                (letrec ((x7721
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7721))))
                                                        (cdr x7720))))
                                              (car x7719))))
                                    g7718)))
                               (length
                                (lambda (l)
                                  (letrec ((g7722
                                            (letrec ((x7724 (list? l)))
                                              (assert x7724)))
                                           (g7723
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7725
                                                                  (letrec ((x-cnd7726
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7726
                                                                      0
                                                                      (letrec ((x7727
                                                                                (letrec ((x7728
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7728))))
                                                                        (+
                                                                         1
                                                                         x7727))))))
                                                          g7725))))
                                              (letrec ((g7729 (rec l)))
                                                g7729))))
                                    g7723)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7730
                                            (letrec ((x7733 (char? c1)))
                                              (assert x7733)))
                                           (g7731
                                            (letrec ((x7734 (char? c2)))
                                              (assert x7734)))
                                           (g7732
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7735
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7735))))
                                    g7732)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7736
                                            (letrec ((x7737 (string<=? s1 s2)))
                                              (not x7737))))
                                    g7736)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7738
                                            (letrec ((x7739
                                                      (letrec ((x7740 (cdr x)))
                                                        (car x7740))))
                                              (cdr x7739))))
                                    g7738)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7741
                                            (letrec ((x7743 (list? l)))
                                              (assert x7743)))
                                           (g7742
                                            (letrec ((x-cnd7744 (null? l)))
                                              (if x-cnd7744
                                                #f
                                                (letrec ((x-cnd7745
                                                          (letrec ((x7746
                                                                    (caar l)))
                                                            (equal? x7746 k))))
                                                  (if x-cnd7745
                                                    (car l)
                                                    (letrec ((x7747 (cdr l)))
                                                      (assoc k x7747))))))))
                                    g7742)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7748
                                            (letrec ((x7749 (car x)))
                                              (car x7749))))
                                    g7748)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7750
                                            (letrec ((x7753 (char? c1)))
                                              (assert x7753)))
                                           (g7751
                                            (letrec ((x7754 (char? c2)))
                                              (assert x7754)))
                                           (g7752
                                            (letrec ((x7755 (char<=? c1 c2)))
                                              (not x7755))))
                                    g7752)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7756
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7757
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7757))))
                                    g7756)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7758
                                            (letrec ((x7761 (procedure? f)))
                                              (assert x7761)))
                                           (g7759
                                            (letrec ((x7762 (list? l)))
                                              (assert x7762)))
                                           (g7760
                                            (letrec ((x-cnd7763 (null? l)))
                                              (if x-cnd7763
                                                #t
                                                (letrec ((x-cnd7764 (pair? l)))
                                                  (if x-cnd7764
                                                    (letrec ((g7765
                                                              (letrec ((x7767
                                                                        (car
                                                                         l)))
                                                                (f x7767)))
                                                             (g7766
                                                              (letrec ((x7768
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7768))))
                                                      g7766)
                                                    '()))))))
                                    g7760)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7769
                                            (letrec ((x7771 (number? x)))
                                              (assert x7771)))
                                           (g7770
                                            (letrec ((x-cnd7772 (< x 0)))
                                              (if x-cnd7772 (- 0 x) x))))
                                    g7770)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7773
                                            (letrec ((x7776 (char? c1)))
                                              (assert x7776)))
                                           (g7774
                                            (letrec ((x7777 (char? c2)))
                                              (assert x7777)))
                                           (g7775
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7778
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7778))))
                                    g7775)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7779
                                            (letrec ((x7780
                                                      (letrec ((x7781
                                                                (letrec ((x7782
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7782))))
                                                        (cdr x7781))))
                                              (car x7780))))
                                    g7779)))
                               (newline
                                (lambda () (letrec ((g7783 #f)) g7783)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7784
                                            (letrec ((x7786
                                                      (letrec ((x7787 (* m n)))
                                                        (abs x7787)))
                                                     (x7785 (gcd m n)))
                                              (/ x7786 x7785))))
                                    g7784)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7788
                                            (letrec ((x7790 (number? x)))
                                              (assert x7790)))
                                           (g7789
                                            (letrec ((x7791 (<= x y)))
                                              (not x7791))))
                                    g7789)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7792
                                            (letrec ((x7796 (list? l)))
                                              (assert x7796)))
                                           (g7793
                                            (letrec ((x7797 (number? index)))
                                              (assert x7797)))
                                           (g7794
                                            (letrec ((x7798
                                                      (letrec ((x7799
                                                                (length l)))
                                                        (< index x7799))))
                                              (assert x7798)))
                                           (g7795
                                            (letrec ((x-cnd7800 (= index 0)))
                                              (if x-cnd7800
                                                (car l)
                                                (letrec ((x7802 (cdr l))
                                                         (x7801 (- index 1)))
                                                  (list-ref x7802 x7801))))))
                                    g7795)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7803
                                            (letrec ((x-cnd7804 (= b 0)))
                                              (if x-cnd7804
                                                a
                                                (letrec ((x7805 (modulo a b)))
                                                  (gcd b x7805))))))
                                    g7803)))
                               (real/c
                                (lambda (g7164 g7165 g7166)
                                  (letrec ((g7806
                                            (letrec ((x-cnd7807 (real? g7166)))
                                              (if x-cnd7807
                                                g7166
                                                (blame g7164 'real?)))))
                                    g7806)))
                               (boolean?/c
                                (lambda (g7167 g7168 g7169)
                                  (letrec ((g7808
                                            (letrec ((x-cnd7809
                                                      (boolean? g7169)))
                                              (if x-cnd7809
                                                g7169
                                                (blame g7167 'boolean?)))))
                                    g7808)))
                               (number?/c
                                (lambda (g7170 g7171 g7172)
                                  (letrec ((g7810
                                            (letrec ((x-cnd7811
                                                      (number? g7172)))
                                              (if x-cnd7811
                                                g7172
                                                (blame g7170 'number?)))))
                                    g7810)))
                               (any/c
                                (lambda (g7173 g7174 g7175)
                                  (letrec ((g7812
                                            (letrec ((x-cnd7813
                                                      ((lambda (v) #t) g7175)))
                                              (if x-cnd7813
                                                g7175
                                                (blame
                                                 g7173
                                                 '(lambda (v) #t))))))
                                    g7812)))
                               (any?/c
                                (lambda (g7176 g7177 g7178)
                                  (letrec ((g7814
                                            (letrec ((x-cnd7815
                                                      ((lambda (v) #t) g7178)))
                                              (if x-cnd7815
                                                g7178
                                                (blame
                                                 g7176
                                                 '(lambda (v) #t))))))
                                    g7814)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7179 g7180 g7181)
                                  (letrec ((g7816
                                            (letrec ((x-cnd7817 (pair? g7181)))
                                              (if x-cnd7817
                                                g7181
                                                (blame g7179 'pair?)))))
                                    g7816)))
                               (pair?/c
                                (lambda (g7182 g7183 g7184)
                                  (letrec ((g7818
                                            (letrec ((x-cnd7819 (pair? g7184)))
                                              (if x-cnd7819
                                                g7184
                                                (blame g7182 'pair?)))))
                                    g7818)))
                               (integer?
                                (lambda (g7185 g7186 g7187)
                                  (letrec ((g7820
                                            (letrec ((x-cnd7821
                                                      (integer? g7187)))
                                              (if x-cnd7821
                                                g7187
                                                (blame g7185 'integer?)))))
                                    g7820)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7822
                                            (lambda (k j v)
                                              (letrec ((g7823
                                                        (letrec ((x-cnd7824
                                                                  (c1 k j v)))
                                                          (if x-cnd7824
                                                            (c2 k j v)
                                                            #f))))
                                                g7823))))
                                    g7822)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7825
                                            (lambda (k j v)
                                              (letrec ((g7826
                                                        (letrec ((x-cnd7827
                                                                  (null? v)))
                                                          (if x-cnd7827
                                                            '()
                                                            (letrec ((x7831
                                                                      (letrec ((x7832
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7832)))
                                                                     (x7828
                                                                      (letrec ((x7830
                                                                                (list-of
                                                                                 contract))
                                                                               (x7829
                                                                                (cdr
                                                                                 v)))
                                                                        (x7830
                                                                         k
                                                                         j
                                                                         x7829))))
                                                              (cons
                                                               x7831
                                                               x7828))))))
                                                g7826))))
                                    g7825)))
                               (any? (lambda (v) (letrec ((g7833 #t)) g7833)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7834
                                            (letrec ((x7835 (= v 0)))
                                              (not x7835))))
                                    g7834)))
                               (nonzero?/c
                                (lambda (g7188 g7189 g7190)
                                  (letrec ((g7836
                                            (letrec ((x-cnd7837
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7190)))
                                              (if x-cnd7837
                                                g7190
                                                (blame
                                                 g7188
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7836)))
                               (meta (lambda (v) (letrec ((g7838 v)) g7838)))
                               (orig-+ +)
                               (+
                                ((lambda (j7193 k7194 f7195)
                                   (lambda (g7191 g7192)
                                     (number?/c
                                      j7193
                                      k7194
                                      (f7195
                                       (number?/c j7193 k7194 g7191)
                                       (number?/c j7193 k7194 g7192)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-+ a b))))
                               (orig-- -)
                               (-
                                ((lambda (j7198 k7199 f7200)
                                   (lambda (g7196 g7197)
                                     (number?/c
                                      j7198
                                      k7199
                                      (f7200
                                       (number?/c j7198 k7199 g7196)
                                       (number?/c j7198 k7199 g7197)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-- a b))))
                               (orig-* *)
                               (*
                                ((lambda (j7203 k7204 f7205)
                                   (lambda (g7201 g7202)
                                     (number?/c
                                      j7203
                                      k7204
                                      (f7205
                                       (number?/c j7203 k7204 g7201)
                                       (number?/c j7203 k7204 g7202)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-* a b))))
                               (orig-/ /)
                               (/
                                ((lambda (j7208 k7209 f7210)
                                   (lambda (g7206 g7207)
                                     (number?/c
                                      j7208
                                      k7209
                                      (f7210
                                       (number?/c j7208 k7209 g7206)
                                       (number?/c j7208 k7209 g7207)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-/ a b))))
                               (orig-car car)
                               (car
                                ((lambda (j7212 k7213 f7214)
                                   (lambda (g7211)
                                     (any/c
                                      j7212
                                      k7213
                                      (f7214 (pair?/c j7212 k7213 g7211)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-car p))))
                               (orig-cdr cdr)
                               (cdr
                                ((lambda (j7216 k7217 f7218)
                                   (lambda (g7215)
                                     (any/c
                                      j7216
                                      k7217
                                      (f7218 (pair?/c j7216 k7217 g7215)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-cdr p))))
                               (orig-cons cons)
                               (cons
                                ((lambda (j7221 k7222 f7223)
                                   (lambda (g7219 g7220)
                                     (pair?/c
                                      j7221
                                      k7222
                                      (f7223
                                       (any/c j7221 k7222 g7219)
                                       (any/c j7221 k7222 g7220)))))
                                 'server
                                 'client
                                 (lambda (a b) (cons a b))))
                               (orig-vector-ref vector-ref)
                               (vector-ref
                                ((lambda (j7225 k7226 f7227)
                                   (lambda (g7224)
                                     (integer?/c
                                      j7225
                                      k7226
                                      (f7227 (vector?/c j7225 k7226 g7224)))))
                                 'server
                                 'client
                                 (lambda (v i) (orig-vector-ref v i))))
                               (orig-vector-set vector-set!)
                               (vector-set!
                                ((lambda (j7230 k7231 f7232)
                                   (lambda (g7228 g7229)
                                     (any/c
                                      j7230
                                      k7231
                                      (f7232
                                       (vector?/c j7230 k7231 g7228)
                                       (integer?/c j7230 k7231 g7229)))))
                                 'server
                                 'client
                                 (lambda (vec i v)
                                   (orig-vector-set! vec i v))))
                               (assert
                                (lambda (cnd) (letrec ((g7839 #t)) g7839)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7840
                                            (letrec ((x7841
                                                      (letrec ((x7842 (cdr x)))
                                                        (cdr x7842))))
                                              (cdr x7841))))
                                    g7840)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7843
                                            (letrec ((x7846 (procedure? f)))
                                              (assert x7846)))
                                           (g7844
                                            (letrec ((x7847 (list? l)))
                                              (assert x7847)))
                                           (g7845
                                            (letrec ((x-cnd7848 (null? l)))
                                              (if x-cnd7848
                                                '()
                                                (letrec ((x7851
                                                          (letrec ((x7852
                                                                    (car l)))
                                                            (f x7852)))
                                                         (x7849
                                                          (letrec ((x7850
                                                                    (cdr l)))
                                                            (map f x7850))))
                                                  (cons x7851 x7849))))))
                                    g7845)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7853
                                            (letrec ((x7854 (car x)))
                                              (cdr x7854))))
                                    g7853)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7855
                                            (letrec ((x7856
                                                      (letrec ((x7857
                                                                (letrec ((x7858
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7858))))
                                                        (cdr x7857))))
                                              (car x7856))))
                                    g7855)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7859
                                            (letrec ((x7860
                                                      (letrec ((x7861
                                                                (letrec ((x7862
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7862))))
                                                        (car x7861))))
                                              (cdr x7860))))
                                    g7859)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7863
                                            (letrec ((x7866
                                                      (string? filename)))
                                              (assert x7866)))
                                           (g7864
                                            (letrec ((x7867 (procedure? proc)))
                                              (assert x7867)))
                                           (g7865
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7868
                                                        (close-output-port
                                                         output-port))
                                                       (g7869 res))
                                                g7869))))
                                    g7865)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7870
                                            (letrec ((x7871
                                                      (letrec ((x7872 (cdr x)))
                                                        (cdr x7872))))
                                              (car x7871))))
                                    g7870)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7873
                                            (letrec ((x7874
                                                      (letrec ((x7875
                                                                (letrec ((x7876
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7876))))
                                                        (car x7875))))
                                              (cdr x7874))))
                                    g7873)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7877
                                            (letrec ((x7879 (list? l)))
                                              (assert x7879)))
                                           (g7878
                                            (letrec ((x-cnd7880 (null? l)))
                                              (if x-cnd7880
                                                #f
                                                (letrec ((x-cnd7881
                                                          (letrec ((x7882
                                                                    (caar l)))
                                                            (eq? x7882 k))))
                                                  (if x-cnd7881
                                                    (car l)
                                                    (letrec ((x7883 (cdr l)))
                                                      (assq k x7883))))))))
                                    g7878)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7884
                                            (letrec ((x7885 (modulo x 2)))
                                              (= 0 x7885))))
                                    g7884)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7886
                                            (letrec ((x7888 (list? l)))
                                              (assert x7888)))
                                           (g7887
                                            (letrec ((x-cnd7889 (null? l)))
                                              (if x-cnd7889
                                                ""
                                                (letrec ((x7892
                                                          (letrec ((x7893
                                                                    (car l)))
                                                            (char->string
                                                             x7893)))
                                                         (x7890
                                                          (letrec ((x7891
                                                                    (cdr l)))
                                                            (list->string
                                                             x7891))))
                                                  (string-append
                                                   x7892
                                                   x7890))))))
                                    g7887)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7894
                                            (letrec ((x7897 (char? c1)))
                                              (assert x7897)))
                                           (g7895
                                            (letrec ((x7898 (char? c2)))
                                              (assert x7898)))
                                           (g7896
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7899
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7899))))
                                    g7896)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7900
                                            (letrec ((x7901
                                                      (letrec ((x7902
                                                                (letrec ((x7903
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7903))))
                                                        (cdr x7902))))
                                              (cdr x7901))))
                                    g7900)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7904
                                            (letrec ((x7907 (list? l)))
                                              (assert x7907)))
                                           (g7905
                                            (letrec ((x7908 (numer?)))
                                              (assert x7908)))
                                           (g7906
                                            (letrec ((x-cnd7909 (zero? k)))
                                              (if x-cnd7909
                                                x
                                                (letrec ((x7911 (cdr x))
                                                         (x7910 (- k 1)))
                                                  (list-tail x7911 x7910))))))
                                    g7906)))
                               (halt (lambda () (letrec ((g7912 '())) g7912)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7913
                                            (letrec ((x-cnd7914
                                                      (letrec ((x7915 #\a))
                                                        (char-ci>=? c x7915))))
                                              (if x-cnd7914
                                                (letrec ((x7916 #\z))
                                                  (char-ci<=? c x7916))
                                                #f))))
                                    g7913)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7917
                                            (letrec ((x7919 (number? x)))
                                              (assert x7919)))
                                           (g7918
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7920
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7921
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7921)))))
                                                g7920))))
                                    g7918)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7922
                                            (letrec ((val7146
                                                      (letrec ((x7923
                                                                (char->integer
                                                                 c)))
                                                        (= x7923 9))))
                                              (letrec ((g7924
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7925
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7925
                                                                       10))))
                                                            (letrec ((g7926
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7927
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7927
                                                                           32)))))
                                                              g7926)))))
                                                g7924))))
                                    g7922)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7928
                                            (letrec ((x7929
                                                      (letrec ((x7930 (car x)))
                                                        (cdr x7930))))
                                              (cdr x7929))))
                                    g7928)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7931
                                            (letrec ((x7933 (number? x)))
                                              (assert x7933)))
                                           (g7932 (> x 0)))
                                    g7932)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7934 #f)) g7934)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7935
                                            (letrec ((x7936 (cdr x)))
                                              (cdr x7936))))
                                    g7935)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7937
                                            (letrec ((x7939 (number? x)))
                                              (assert x7939)))
                                           (g7938
                                            (letrec ((x-cnd7940 (< x 0)))
                                              (if x-cnd7940
                                                (ceiling x)
                                                (floor x)))))
                                    g7938)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7941
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7942
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7944
                                                                              (null?
                                                                               a))
                                                                             (x7943
                                                                              (null?
                                                                               b)))
                                                                      (and x7944
                                                                           x7943))))
                                                            (letrec ((g7945
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7948
                                                                                            (string?
                                                                                             a))
                                                                                           (x7947
                                                                                            (string?
                                                                                             b))
                                                                                           (x7946
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7948
                                                                                         x7947
                                                                                         x7946))))
                                                                          (letrec ((g7949
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7957
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7956
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7953
                                                                                                          (letrec ((x7955
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7954
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7955
                                                                                                             x7954)))
                                                                                                         (x7950
                                                                                                          (letrec ((x7952
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7951
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7952
                                                                                                             x7951))))
                                                                                                  (and x7957
                                                                                                       x7956
                                                                                                       x7953
                                                                                                       x7950))))
                                                                                        (letrec ((g7958
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7977
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7976
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7959
                                                                                                              (letrec ((x7973
                                                                                                                        (letrec ((x7974
                                                                                                                                  (letrec ((x7975
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7975))))
                                                                                                                          (x7974)))
                                                                                                                       (x7960
                                                                                                                        (letrec ((x7971
                                                                                                                                  (letrec ((x7972
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7972
                                                                                                                                     n)))
                                                                                                                                 (x7961
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7962
                                                                                                                                                        (letrec ((x7969
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7963
                                                                                                                                                                  (letrec ((x7966
                                                                                                                                                                            (letrec ((x7968
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7967
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7968
                                                                                                                                                                               x7967)))
                                                                                                                                                                           (x7964
                                                                                                                                                                            (letrec ((x7965
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7965))))
                                                                                                                                                                    (and x7966
                                                                                                                                                                         x7964))))
                                                                                                                                                          (or x7969
                                                                                                                                                              x7963))))
                                                                                                                                                g7962))))
                                                                                                                                    (letrec ((g7970
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7970))))
                                                                                                                          (and x7971
                                                                                                                               x7961))))
                                                                                                                (let x7973 x7960))))
                                                                                                      (and x7977
                                                                                                           x7976
                                                                                                           x7959)))))
                                                                                          g7958)))))
                                                                            g7949)))))
                                                              g7945)))))
                                                g7942))))
                                    g7941)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7978
                                            (letrec ((x7979
                                                      (letrec ((x7980
                                                                (letrec ((x7981
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7981))))
                                                        (car x7980))))
                                              (cdr x7979))))
                                    g7978)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7982
                                            (letrec ((x7983
                                                      (letrec ((x7984
                                                                (letrec ((x7985
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7985))))
                                                        (car x7984))))
                                              (car x7983))))
                                    g7982)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7986 (eq? x y))) g7986)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7987
                                            (letrec ((x7989 (number? x)))
                                              (assert x7989)))
                                           (g7988
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7990
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7991
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7991)))))
                                                g7990))))
                                    g7988)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7992
                                            (letrec ((x7995
                                                      (string? filename)))
                                              (assert x7995)))
                                           (g7993
                                            (letrec ((x7996 (procedure? proc)))
                                              (assert x7996)))
                                           (g7994
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7997
                                                        (close-input-port
                                                         input-port))
                                                       (g7998 res))
                                                g7998))))
                                    g7994)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7999 (cons x '()))) g7999)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g8000
                                            (letrec ((x8003 (char? c1)))
                                              (assert x8003)))
                                           (g8001
                                            (letrec ((x8004 (char? c2)))
                                              (assert x8004)))
                                           (g8002
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g8005
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g8005))))
                                    g8002)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g8006
                                            (letrec ((x8007
                                                      (letrec ((x8008 (car x)))
                                                        (car x8008))))
                                              (cdr x8007))))
                                    g8006)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g8009
                                            (letrec ((x8010
                                                      (letrec ((x8011
                                                                (letrec ((x8012
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8012))))
                                                        (car x8011))))
                                              (cdr x8010))))
                                    g8009)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g8013
                                            (letrec ((x8014
                                                      (letrec ((x8015 (car x)))
                                                        (cdr x8015))))
                                              (car x8014))))
                                    g8013)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g8016
                                            (letrec ((x8017
                                                      (letrec ((x8018 (cdr x)))
                                                        (car x8018))))
                                              (car x8017))))
                                    g8016)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g8019
                                            (letrec ((x8022 (char? c1)))
                                              (assert x8022)))
                                           (g8020
                                            (letrec ((x8023 (char? c2)))
                                              (assert x8023)))
                                           (g8021
                                            (letrec ((x8024
                                                      (char-ci<=? c1 c2)))
                                              (not x8024))))
                                    g8021)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g8025
                                            (letrec ((x8026
                                                      (letrec ((x8027
                                                                (letrec ((x8028
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8028))))
                                                        (car x8027))))
                                              (car x8026))))
                                    g8025)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g8029
                                            (letrec ((x8031 (number? x)))
                                              (assert x8031)))
                                           (g8030 (< x 0)))
                                    g8030)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g8032 (memq e l))) g8032)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g8033
                                            (letrec ((x8034
                                                      (letrec ((x8035 (car x)))
                                                        (car x8035))))
                                              (car x8034))))
                                    g8033)))
                               (debug
                                (lambda (e) (letrec ((g8036 '())) g8036)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g8037
                                            (letrec ((x8039 (list? l)))
                                              (assert x8039)))
                                           (g8038
                                            (letrec ((x-cnd8040 (null? l)))
                                              (if x-cnd8040
                                                '()
                                                (letrec ((x8043
                                                          (letrec ((x8044
                                                                    (cdr l)))
                                                            (reverse x8044)))
                                                         (x8041
                                                          (letrec ((x8042
                                                                    (car l)))
                                                            (list x8042))))
                                                  (append x8043 x8041))))))
                                    g8038)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g8045
                                            (letrec ((x8046
                                                      (letrec ((x8047
                                                                (letrec ((x8048
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x8048))))
                                                        (car x8047))))
                                              (car x8046))))
                                    g8045)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g8049
                                            (letrec ((x8050
                                                      (letrec ((x8051
                                                                (letrec ((x8052
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x8052))))
                                                        (cdr x8051))))
                                              (cdr x8050))))
                                    g8049)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g8053
                                            (letrec ((x8055 (number? x)))
                                              (assert x8055)))
                                           (g8054
                                            (letrec ((x8056 (modulo x 2)))
                                              (= 1 x8056))))
                                    g8054)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g8057
                                            (letrec ((x8058
                                                      (letrec ((x8059
                                                                (letrec ((x8060
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8060))))
                                                        (car x8059))))
                                              (car x8058))))
                                    g8057)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g8061
                                            (letrec ((x8064 (procedure? proc)))
                                              (assert x8064)))
                                           (g8062
                                            (letrec ((x8065 (list? args)))
                                              (assert x8065)))
                                           (g8063
                                            (if cnd
                                              (letrec ((g8066 (proc))) g8066)
                                              (if cnd
                                                (letrec ((g8067
                                                          (letrec ((x8068
                                                                    (car
                                                                     args)))
                                                            (proc x8068))))
                                                  g8067)
                                                (if cnd
                                                  (letrec ((g8069
                                                            (letrec ((x8071
                                                                      (car
                                                                       args))
                                                                     (x8070
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x8071
                                                               x8070))))
                                                    g8069)
                                                  (if cnd
                                                    (letrec ((g8072
                                                              (letrec ((x8075
                                                                        (car
                                                                         args))
                                                                       (x8074
                                                                        (cadr
                                                                         args))
                                                                       (x8073
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x8075
                                                                 x8074
                                                                 x8073))))
                                                      g8072)
                                                    (if cnd
                                                      (letrec ((g8076
                                                                (letrec ((x8080
                                                                          (car
                                                                           args))
                                                                         (x8079
                                                                          (cadr
                                                                           args))
                                                                         (x8078
                                                                          (caddr
                                                                           args))
                                                                         (x8077
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x8080
                                                                   x8079
                                                                   x8078
                                                                   x8077))))
                                                        g8076)
                                                      (if cnd
                                                        (letrec ((g8081
                                                                  (letrec ((x8087
                                                                            (car
                                                                             args))
                                                                           (x8086
                                                                            (cadr
                                                                             args))
                                                                           (x8085
                                                                            (caddr
                                                                             args))
                                                                           (x8084
                                                                            (cadddr
                                                                             args))
                                                                           (x8082
                                                                            (letrec ((x8083
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x8083))))
                                                                    (proc
                                                                     x8087
                                                                     x8086
                                                                     x8085
                                                                     x8084
                                                                     x8082))))
                                                          g8081)
                                                        (if cnd
                                                          (letrec ((g8088
                                                                    (letrec ((x8096
                                                                              (car
                                                                               args))
                                                                             (x8095
                                                                              (cadr
                                                                               args))
                                                                             (x8094
                                                                              (caddr
                                                                               args))
                                                                             (x8093
                                                                              (cadddr
                                                                               args))
                                                                             (x8091
                                                                              (letrec ((x8092
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x8092)))
                                                                             (x8089
                                                                              (letrec ((x8090
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x8090))))
                                                                      (proc
                                                                       x8096
                                                                       x8095
                                                                       x8094
                                                                       x8093
                                                                       x8091
                                                                       x8089))))
                                                            g8088)
                                                          (if cnd
                                                            (letrec ((g8097
                                                                      (letrec ((x8107
                                                                                (car
                                                                                 args))
                                                                               (x8106
                                                                                (cadr
                                                                                 args))
                                                                               (x8105
                                                                                (caddr
                                                                                 args))
                                                                               (x8104
                                                                                (cadddr
                                                                                 args))
                                                                               (x8102
                                                                                (letrec ((x8103
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x8103)))
                                                                               (x8100
                                                                                (letrec ((x8101
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x8101)))
                                                                               (x8098
                                                                                (letrec ((x8099
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x8099))))
                                                                        (proc
                                                                         x8107
                                                                         x8106
                                                                         x8105
                                                                         x8104
                                                                         x8102
                                                                         x8100
                                                                         x8098))))
                                                              g8097)
                                                            (letrec ((g8108
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g8108)))))))))))
                                    g8063)))
                               (member
                                (lambda (e l)
                                  (letrec ((g8109
                                            (letrec ((x8111 (list? l)))
                                              (assert x8111)))
                                           (g8110
                                            (letrec ((x-cnd8112 (null? l)))
                                              (if x-cnd8112
                                                #f
                                                (letrec ((x-cnd8113
                                                          (letrec ((x8114
                                                                    (car l)))
                                                            (equal? x8114 e))))
                                                  (if x-cnd8113
                                                    l
                                                    (letrec ((x8115 (cdr l)))
                                                      (member e x8115))))))))
                                    g8110)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g8116
                                            (letrec ((x8117
                                                      (letrec ((x8118
                                                                (letrec ((x8119
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8119))))
                                                        (cdr x8118))))
                                              (cdr x8117))))
                                    g8116)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g8120
                                            (letrec ((x8121
                                                      (letrec ((x8122
                                                                (letrec ((x8123
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8123))))
                                                        (cdr x8122))))
                                              (car x8121))))
                                    g8120)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8124 (random 42))) g8124)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8125
                                            (letrec ((x8127 (number? x)))
                                              (assert x8127)))
                                           (g8126 (= x 0)))
                                    g8126)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8128
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8129
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8129))))
                                    g8128)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8130
                                            (letrec ((x8131 (cdr x)))
                                              (car x8131))))
                                    g8130)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8132
                                            (letrec ((val7156
                                                      (letrec ((x8135
                                                                (pair? l))
                                                               (x8133
                                                                (letrec ((x8134
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8134))))
                                                        (and x8135 x8133))))
                                              (letrec ((g8136
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8136))))
                                    g8132)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8137
                                            (letrec ((x8138
                                                      (letrec ((x8139
                                                                (letrec ((x8140
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8140))))
                                                        (cdr x8139))))
                                              (cdr x8138))))
                                    g8137)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8141
                                            (letrec ((x-cnd8142
                                                      (letrec ((x8143 #\0))
                                                        (char<=? x8143 c))))
                                              (if x-cnd8142
                                                (letrec ((x8144 #\9))
                                                  (char<=? c x8144))
                                                #f))))
                                    g8141)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8145
                                            (letrec ((x8147 (list? l)))
                                              (assert x8147)))
                                           (g8146
                                            (letrec ((x-cnd8148 (null? l)))
                                              (if x-cnd8148
                                                #f
                                                (letrec ((x-cnd8149
                                                          (letrec ((x8150
                                                                    (caar l)))
                                                            (eqv? x8150 k))))
                                                  (if x-cnd8149
                                                    (car l)
                                                    (letrec ((x8151 (cdr l)))
                                                      (assq k x8151))))))))
                                    g8146)))
                               (not
                                (lambda (x)
                                  (letrec ((g8152 (if x #f #t))) g8152)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8153 (append l1 l2))) g8153)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8154
                                            (letrec ((x8156 (list? l)))
                                              (assert x8156)))
                                           (g8155
                                            (letrec ((x-cnd8157 (null? l)))
                                              (if x-cnd8157
                                                #f
                                                (letrec ((x-cnd8158
                                                          (letrec ((x8159
                                                                    (car l)))
                                                            (eq? x8159 e))))
                                                  (if x-cnd8158
                                                    l
                                                    (letrec ((x8160 (cdr l)))
                                                      (memq e x8160))))))))
                                    g8155)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8161
                                            (letrec ((x8162
                                                      (letrec ((x8163
                                                                (letrec ((x8164
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8164))))
                                                        (cdr x8163))))
                                              (car x8162))))
                                    g8161)))
                               (length
                                (lambda (l)
                                  (letrec ((g8165
                                            (letrec ((x8167 (list? l)))
                                              (assert x8167)))
                                           (g8166
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8168
                                                                  (letrec ((x-cnd8169
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8169
                                                                      0
                                                                      (letrec ((x8170
                                                                                (letrec ((x8171
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8171))))
                                                                        (+
                                                                         1
                                                                         x8170))))))
                                                          g8168))))
                                              (letrec ((g8172 (rec l)))
                                                g8172))))
                                    g8166)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8173
                                            (letrec ((x8176 (char? c1)))
                                              (assert x8176)))
                                           (g8174
                                            (letrec ((x8177 (char? c2)))
                                              (assert x8177)))
                                           (g8175
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8178
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8178))))
                                    g8175)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8179
                                            (letrec ((x8180 (string<=? s1 s2)))
                                              (not x8180))))
                                    g8179)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8181
                                            (letrec ((x8182
                                                      (letrec ((x8183 (cdr x)))
                                                        (car x8183))))
                                              (cdr x8182))))
                                    g8181)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8184
                                            (letrec ((x8186 (list? l)))
                                              (assert x8186)))
                                           (g8185
                                            (letrec ((x-cnd8187 (null? l)))
                                              (if x-cnd8187
                                                #f
                                                (letrec ((x-cnd8188
                                                          (letrec ((x8189
                                                                    (caar l)))
                                                            (equal? x8189 k))))
                                                  (if x-cnd8188
                                                    (car l)
                                                    (letrec ((x8190 (cdr l)))
                                                      (assoc k x8190))))))))
                                    g8185)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8191
                                            (letrec ((x8192 (car x)))
                                              (car x8192))))
                                    g8191)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8193
                                            (letrec ((x8196 (char? c1)))
                                              (assert x8196)))
                                           (g8194
                                            (letrec ((x8197 (char? c2)))
                                              (assert x8197)))
                                           (g8195
                                            (letrec ((x8198 (char<=? c1 c2)))
                                              (not x8198))))
                                    g8195)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8199
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8200
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8200))))
                                    g8199)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8201
                                            (letrec ((x8204 (procedure? f)))
                                              (assert x8204)))
                                           (g8202
                                            (letrec ((x8205 (list? l)))
                                              (assert x8205)))
                                           (g8203
                                            (letrec ((x-cnd8206 (null? l)))
                                              (if x-cnd8206
                                                #t
                                                (letrec ((x-cnd8207 (pair? l)))
                                                  (if x-cnd8207
                                                    (letrec ((g8208
                                                              (letrec ((x8210
                                                                        (car
                                                                         l)))
                                                                (f x8210)))
                                                             (g8209
                                                              (letrec ((x8211
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8211))))
                                                      g8209)
                                                    '()))))))
                                    g8203)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8212
                                            (letrec ((x8214 (number? x)))
                                              (assert x8214)))
                                           (g8213
                                            (letrec ((x-cnd8215 (< x 0)))
                                              (if x-cnd8215 (- 0 x) x))))
                                    g8213)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8216
                                            (letrec ((x8219 (char? c1)))
                                              (assert x8219)))
                                           (g8217
                                            (letrec ((x8220 (char? c2)))
                                              (assert x8220)))
                                           (g8218
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8221
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8221))))
                                    g8218)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8222
                                            (letrec ((x8223
                                                      (letrec ((x8224
                                                                (letrec ((x8225
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8225))))
                                                        (cdr x8224))))
                                              (car x8223))))
                                    g8222)))
                               (newline
                                (lambda () (letrec ((g8226 #f)) g8226)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8227
                                            (letrec ((x8229
                                                      (letrec ((x8230 (* m n)))
                                                        (abs x8230)))
                                                     (x8228 (gcd m n)))
                                              (/ x8229 x8228))))
                                    g8227)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8231
                                            (letrec ((x8233 (number? x)))
                                              (assert x8233)))
                                           (g8232
                                            (letrec ((x8234 (<= x y)))
                                              (not x8234))))
                                    g8232)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8235
                                            (letrec ((x8239 (list? l)))
                                              (assert x8239)))
                                           (g8236
                                            (letrec ((x8240 (number? index)))
                                              (assert x8240)))
                                           (g8237
                                            (letrec ((x8241
                                                      (letrec ((x8242
                                                                (length l)))
                                                        (< index x8242))))
                                              (assert x8241)))
                                           (g8238
                                            (letrec ((x-cnd8243 (= index 0)))
                                              (if x-cnd8243
                                                (car l)
                                                (letrec ((x8245 (cdr l))
                                                         (x8244 (- index 1)))
                                                  (list-ref x8245 x8244))))))
                                    g8238)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8246
                                            (letrec ((x-cnd8247 (= b 0)))
                                              (if x-cnd8247
                                                a
                                                (letrec ((x8248 (modulo a b)))
                                                  (gcd b x8248))))))
                                    g8246))))
                        (letrec ((g8249
                                  (letrec ((g8250
                                            (letrec ((image
                                                      (lambda ()
                                                        (letrec ((g8251
                                                                  (cons
                                                                   'image
                                                                   '())))
                                                          g8251)))
                                                     (image?
                                                      (lambda (image7335)
                                                        (letrec ((g8252
                                                                  (letrec ((x8253
                                                                            (car
                                                                             image7335)))
                                                                    (eq?
                                                                     x8253
                                                                     'image))))
                                                          g8252)))
                                                     (image
                                                      (lambda ()
                                                        (letrec ((g8254
                                                                  (cons
                                                                   'image
                                                                   '())))
                                                          g8254)))
                                                     (image?
                                                      (lambda (image7335)
                                                        (letrec ((g8255
                                                                  (letrec ((x8256
                                                                            (car
                                                                             image7335)))
                                                                    (eq?
                                                                     x8256
                                                                     'image))))
                                                          g8255)))
                                                     (image/c
                                                      (lambda (j7234
                                                               k7235
                                                               v7233)
                                                        (letrec ((g8257
                                                                  (cons
                                                                   image
                                                                   '())))
                                                          g8257)))
                                                     (circle
                                                      (lambda (r m c)
                                                        (letrec ((g8258
                                                                  (image)))
                                                          g8258)))
                                                     (empty-scene
                                                      (lambda (w h)
                                                        (letrec ((g8259
                                                                  (image)))
                                                          g8259)))
                                                     (place-image
                                                      (lambda (i₁ r c i₂)
                                                        (letrec ((g8260
                                                                  (image)))
                                                          g8260))))
                                              (letrec ((g8261
                                                        (letrec ((posn
                                                                  (lambda (x7337
                                                                           y7338)
                                                                    (letrec ((g8262
                                                                              (letrec ((x8263
                                                                                        (letrec ((x8264
                                                                                                  (cons
                                                                                                   y7338
                                                                                                   '())))
                                                                                          (cons
                                                                                           x7337
                                                                                           x8264))))
                                                                                (cons
                                                                                 'posn
                                                                                 x8263))))
                                                                      g8262)))
                                                                 (posn?
                                                                  (lambda (posn7336)
                                                                    (letrec ((g8265
                                                                              (letrec ((x8266
                                                                                        (car
                                                                                         posn7336)))
                                                                                (eq?
                                                                                 x8266
                                                                                 'posn))))
                                                                      g8265)))
                                                                 (posn-x
                                                                  (lambda (posn)
                                                                    (letrec ((g8267
                                                                              (letrec ((x8268
                                                                                        (cdr
                                                                                         posn)))
                                                                                (car
                                                                                 x8268))))
                                                                      g8267)))
                                                                 (posn-y
                                                                  (lambda (posn)
                                                                    (letrec ((g8269
                                                                              (letrec ((x8270
                                                                                        (letrec ((x8271
                                                                                                  (cdr
                                                                                                   posn)))
                                                                                          (cdr
                                                                                           x8271))))
                                                                                (car
                                                                                 x8270))))
                                                                      g8269)))
                                                                 (posn
                                                                  (lambda (x7337
                                                                           y7338)
                                                                    (letrec ((g8272
                                                                              (letrec ((x8273
                                                                                        (letrec ((x8274
                                                                                                  (cons
                                                                                                   y7338
                                                                                                   '())))
                                                                                          (cons
                                                                                           x7337
                                                                                           x8274))))
                                                                                (cons
                                                                                 'posn
                                                                                 x8273))))
                                                                      g8272)))
                                                                 (posn?
                                                                  (lambda (posn7336)
                                                                    (letrec ((g8275
                                                                              (letrec ((x8276
                                                                                        (car
                                                                                         posn7336)))
                                                                                (eq?
                                                                                 x8276
                                                                                 'posn))))
                                                                      g8275)))
                                                                 (posn-x
                                                                  (lambda (posn)
                                                                    (letrec ((g8277
                                                                              (letrec ((x8278
                                                                                        (cdr
                                                                                         posn)))
                                                                                (car
                                                                                 x8278))))
                                                                      g8277)))
                                                                 (posn-y
                                                                  (lambda (posn)
                                                                    (letrec ((g8279
                                                                              (letrec ((x8280
                                                                                        (letrec ((x8281
                                                                                                  (cdr
                                                                                                   posn)))
                                                                                          (cdr
                                                                                           x8281))))
                                                                                (car
                                                                                 x8280))))
                                                                      g8279)))
                                                                 (posn=?
                                                                  (lambda (p1
                                                                           p2)
                                                                    (letrec ((g8282
                                                                              (letrec ((x-cnd8283
                                                                                        (letrec ((x8285
                                                                                                  (posn-x
                                                                                                   p1))
                                                                                                 (x8284
                                                                                                  (posn-x
                                                                                                   p2)))
                                                                                          (=
                                                                                           x8285
                                                                                           x8284))))
                                                                                (if x-cnd8283
                                                                                  (letrec ((x8287
                                                                                            (posn-y
                                                                                             p1))
                                                                                           (x8286
                                                                                            (posn-y
                                                                                             p2)))
                                                                                    (=
                                                                                     x8287
                                                                                     x8286))
                                                                                  #f))))
                                                                      g8282))))
                                                          (letrec ((g8288
                                                                    (letrec ((snake
                                                                              (lambda (dir7342
                                                                                       segs7343)
                                                                                (letrec ((g8289
                                                                                          (letrec ((x8290
                                                                                                    (letrec ((x8291
                                                                                                              (cons
                                                                                                               segs7343
                                                                                                               '())))
                                                                                                      (cons
                                                                                                       dir7342
                                                                                                       x8291))))
                                                                                            (cons
                                                                                             'snake
                                                                                             x8290))))
                                                                                  g8289)))
                                                                             (snake?
                                                                              (lambda (snake7341)
                                                                                (letrec ((g8292
                                                                                          (letrec ((x8293
                                                                                                    (car
                                                                                                     snake7341)))
                                                                                            (eq?
                                                                                             x8293
                                                                                             'snake))))
                                                                                  g8292)))
                                                                             (snake-dir
                                                                              (lambda (snake)
                                                                                (letrec ((g8294
                                                                                          (letrec ((x8295
                                                                                                    (cdr
                                                                                                     snake)))
                                                                                            (car
                                                                                             x8295))))
                                                                                  g8294)))
                                                                             (snake-segs
                                                                              (lambda (snake)
                                                                                (letrec ((g8296
                                                                                          (letrec ((x8297
                                                                                                    (letrec ((x8298
                                                                                                              (cdr
                                                                                                               snake)))
                                                                                                      (cdr
                                                                                                       x8298))))
                                                                                            (car
                                                                                             x8297))))
                                                                                  g8296)))
                                                                             (snake
                                                                              (lambda (dir7342
                                                                                       segs7343)
                                                                                (letrec ((g8299
                                                                                          (letrec ((x8300
                                                                                                    (letrec ((x8301
                                                                                                              (cons
                                                                                                               segs7343
                                                                                                               '())))
                                                                                                      (cons
                                                                                                       dir7342
                                                                                                       x8301))))
                                                                                            (cons
                                                                                             'snake
                                                                                             x8300))))
                                                                                  g8299)))
                                                                             (snake?
                                                                              (lambda (snake7341)
                                                                                (letrec ((g8302
                                                                                          (letrec ((x8303
                                                                                                    (car
                                                                                                     snake7341)))
                                                                                            (eq?
                                                                                             x8303
                                                                                             'snake))))
                                                                                  g8302)))
                                                                             (snake-dir
                                                                              (lambda (snake)
                                                                                (letrec ((g8304
                                                                                          (letrec ((x8305
                                                                                                    (cdr
                                                                                                     snake)))
                                                                                            (car
                                                                                             x8305))))
                                                                                  g8304)))
                                                                             (snake-segs
                                                                              (lambda (snake)
                                                                                (letrec ((g8306
                                                                                          (letrec ((x8307
                                                                                                    (letrec ((x8308
                                                                                                              (cdr
                                                                                                               snake)))
                                                                                                      (cdr
                                                                                                       x8308))))
                                                                                            (car
                                                                                             x8307))))
                                                                                  g8306))))
                                                                      (letrec ((g8309
                                                                                (letrec ((world
                                                                                          (lambda (snake7347
                                                                                                   food7348)
                                                                                            (letrec ((g8310
                                                                                                      (letrec ((x8311
                                                                                                                (letrec ((x8312
                                                                                                                          (cons
                                                                                                                           food7348
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   snake7347
                                                                                                                   x8312))))
                                                                                                        (cons
                                                                                                         'world
                                                                                                         x8311))))
                                                                                              g8310)))
                                                                                         (world?
                                                                                          (lambda (world7346)
                                                                                            (letrec ((g8313
                                                                                                      (letrec ((x8314
                                                                                                                (car
                                                                                                                 world7346)))
                                                                                                        (eq?
                                                                                                         x8314
                                                                                                         'world))))
                                                                                              g8313)))
                                                                                         (world-snake
                                                                                          (lambda (world)
                                                                                            (letrec ((g8315
                                                                                                      (letrec ((x8316
                                                                                                                (cdr
                                                                                                                 world)))
                                                                                                        (car
                                                                                                         x8316))))
                                                                                              g8315)))
                                                                                         (world-food
                                                                                          (lambda (world)
                                                                                            (letrec ((g8317
                                                                                                      (letrec ((x8318
                                                                                                                (letrec ((x8319
                                                                                                                          (cdr
                                                                                                                           world)))
                                                                                                                  (cdr
                                                                                                                   x8319))))
                                                                                                        (car
                                                                                                         x8318))))
                                                                                              g8317)))
                                                                                         (world
                                                                                          (lambda (snake7347
                                                                                                   food7348)
                                                                                            (letrec ((g8320
                                                                                                      (letrec ((x8321
                                                                                                                (letrec ((x8322
                                                                                                                          (cons
                                                                                                                           food7348
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   snake7347
                                                                                                                   x8322))))
                                                                                                        (cons
                                                                                                         'world
                                                                                                         x8321))))
                                                                                              g8320)))
                                                                                         (world?
                                                                                          (lambda (world7346)
                                                                                            (letrec ((g8323
                                                                                                      (letrec ((x8324
                                                                                                                (car
                                                                                                                 world7346)))
                                                                                                        (eq?
                                                                                                         x8324
                                                                                                         'world))))
                                                                                              g8323)))
                                                                                         (world-snake
                                                                                          (lambda (world)
                                                                                            (letrec ((g8325
                                                                                                      (letrec ((x8326
                                                                                                                (cdr
                                                                                                                 world)))
                                                                                                        (car
                                                                                                         x8326))))
                                                                                              g8325)))
                                                                                         (world-food
                                                                                          (lambda (world)
                                                                                            (letrec ((g8327
                                                                                                      (letrec ((x8328
                                                                                                                (letrec ((x8329
                                                                                                                          (cdr
                                                                                                                           world)))
                                                                                                                  (cdr
                                                                                                                   x8329))))
                                                                                                        (car
                                                                                                         x8328))))
                                                                                              g8327)))
                                                                                         (DIR/C
                                                                                          (lambda (g7240
                                                                                                   g7241
                                                                                                   g7242)
                                                                                            (letrec ((g8330
                                                                                                      (letrec ((x-cnd8331
                                                                                                                ((lambda (v7239)
                                                                                                                   (if (eq?
                                                                                                                        'up
                                                                                                                        v7239)
                                                                                                                     #t
                                                                                                                     (if (eq?
                                                                                                                          'down
                                                                                                                          v7239)
                                                                                                                       #t
                                                                                                                       (if (eq?
                                                                                                                            'left
                                                                                                                            v7239)
                                                                                                                         #t
                                                                                                                         (eq?
                                                                                                                          'right
                                                                                                                          v7239)))))
                                                                                                                 g7242)))
                                                                                                        (if x-cnd8331
                                                                                                          g7242
                                                                                                          (blame
                                                                                                           g7240
                                                                                                           '(lambda (v7239)
                                                                                                              (if (eq?
                                                                                                                   'up
                                                                                                                   v7239)
                                                                                                                #t
                                                                                                                (if (eq?
                                                                                                                     'down
                                                                                                                     v7239)
                                                                                                                  #t
                                                                                                                  (if (eq?
                                                                                                                       'left
                                                                                                                       v7239)
                                                                                                                    #t
                                                                                                                    (eq?
                                                                                                                     'right
                                                                                                                     v7239))))))))))
                                                                                              g8330)))
                                                                                         (POSN/C
                                                                                          (lambda (j7244
                                                                                                   k7245
                                                                                                   v7243)
                                                                                            (letrec ((g8332
                                                                                                      (letrec ((checked7246
                                                                                                                (letrec ((x8333
                                                                                                                          (car
                                                                                                                           v7243)))
                                                                                                                  (real?/c
                                                                                                                   'j7244
                                                                                                                   'k7245
                                                                                                                   x8333))))
                                                                                                        (letrec ((g8334
                                                                                                                  (letrec ((checked7247
                                                                                                                            (letrec ((x8335
                                                                                                                                      (letrec ((x8336
                                                                                                                                                (cdr
                                                                                                                                                 v7243)))
                                                                                                                                        (car
                                                                                                                                         x8336))))
                                                                                                                              (real?/c
                                                                                                                               'j7244
                                                                                                                               'k7245
                                                                                                                               x8335))))
                                                                                                                    (letrec ((g8337
                                                                                                                              (letrec ((x8338
                                                                                                                                        (letrec ((x8339
                                                                                                                                                  (cons
                                                                                                                                                   checked7247
                                                                                                                                                   '())))
                                                                                                                                          (cons
                                                                                                                                           checked7246
                                                                                                                                           x8339))))
                                                                                                                                (cons
                                                                                                                                 posn
                                                                                                                                 x8338))))
                                                                                                                      g8337))))
                                                                                                          g8334))))
                                                                                              g8332)))
                                                                                         (SNAKE/C
                                                                                          (lambda (j7250
                                                                                                   k7251
                                                                                                   v7249)
                                                                                            (letrec ((g8340
                                                                                                      (letrec ((checked7252
                                                                                                                (letrec ((x8341
                                                                                                                          (car
                                                                                                                           v7249)))
                                                                                                                  (DIR/C
                                                                                                                   'j7250
                                                                                                                   'k7251
                                                                                                                   x8341))))
                                                                                                        (letrec ((g8342
                                                                                                                  (letrec ((checked7253
                                                                                                                            (letrec ((x8345
                                                                                                                                      (letrec ((x8346
                                                                                                                                                (listof
                                                                                                                                                 POSN/C)))
                                                                                                                                        (and/c
                                                                                                                                         cons?/c
                                                                                                                                         x8346)))
                                                                                                                                     (x8343
                                                                                                                                      (letrec ((x8344
                                                                                                                                                (cdr
                                                                                                                                                 v7249)))
                                                                                                                                        (car
                                                                                                                                         x8344))))
                                                                                                                              (x8345
                                                                                                                               'j7250
                                                                                                                               'k7251
                                                                                                                               x8343))))
                                                                                                                    (letrec ((g8347
                                                                                                                              (letrec ((x8348
                                                                                                                                        (letrec ((x8349
                                                                                                                                                  (cons
                                                                                                                                                   checked7253
                                                                                                                                                   '())))
                                                                                                                                          (cons
                                                                                                                                           checked7252
                                                                                                                                           x8349))))
                                                                                                                                (cons
                                                                                                                                 snake
                                                                                                                                 x8348))))
                                                                                                                      g8347))))
                                                                                                          g8342))))
                                                                                              g8340)))
                                                                                         (WORLD/C
                                                                                          (lambda (j7256
                                                                                                   k7257
                                                                                                   v7255)
                                                                                            (letrec ((g8350
                                                                                                      (letrec ((checked7258
                                                                                                                (letrec ((x8351
                                                                                                                          (car
                                                                                                                           v7255)))
                                                                                                                  (SNAKE/C
                                                                                                                   'j7256
                                                                                                                   'k7257
                                                                                                                   x8351))))
                                                                                                        (letrec ((g8352
                                                                                                                  (letrec ((checked7259
                                                                                                                            (letrec ((x8353
                                                                                                                                      (letrec ((x8354
                                                                                                                                                (cdr
                                                                                                                                                 v7255)))
                                                                                                                                        (car
                                                                                                                                         x8354))))
                                                                                                                              (POSN/C
                                                                                                                               'j7256
                                                                                                                               'k7257
                                                                                                                               x8353))))
                                                                                                                    (letrec ((g8355
                                                                                                                              (letrec ((x8356
                                                                                                                                        (letrec ((x8357
                                                                                                                                                  (cons
                                                                                                                                                   checked7259
                                                                                                                                                   '())))
                                                                                                                                          (cons
                                                                                                                                           checked7258
                                                                                                                                           x8357))))
                                                                                                                                (cons
                                                                                                                                 world
                                                                                                                                 x8356))))
                                                                                                                      g8355))))
                                                                                                          g8352))))
                                                                                              g8350)))
                                                                                         (GRID-SIZE
                                                                                          30)
                                                                                         (BOARD-HEIGHT
                                                                                          20)
                                                                                         (BOARD-WIDTH
                                                                                          30)
                                                                                         (BOARD-HEIGHT-PIXELS
                                                                                          (*
                                                                                           GRID-SIZE
                                                                                           BOARD-HEIGHT))
                                                                                         (BOARD-WIDTH-PIXELS
                                                                                          (*
                                                                                           GRID-SIZE
                                                                                           BOARD-WIDTH))
                                                                                         (BACKGROUND
                                                                                          (empty-scene
                                                                                           BOARD-WIDTH-PIXELS
                                                                                           BOARD-HEIGHT-PIXELS))
                                                                                         (SEGMENT-RADIUS
                                                                                          (/
                                                                                           GRID-SIZE
                                                                                           2))
                                                                                         (SEGMENT-IMAGE
                                                                                          (circle
                                                                                           SEGMENT-RADIUS
                                                                                           "solid"
                                                                                           "red"))
                                                                                         (FOOD-RADIUS
                                                                                          SEGMENT-RADIUS)
                                                                                         (FOOD-IMAGE
                                                                                          (circle
                                                                                           FOOD-RADIUS
                                                                                           "solid"
                                                                                           "green"))
                                                                                         (WORLD
                                                                                          (letrec ((x8359
                                                                                                    (letrec ((x8360
                                                                                                              (letrec ((x8361
                                                                                                                        (posn
                                                                                                                         5
                                                                                                                         3)))
                                                                                                                (cons
                                                                                                                 x8361
                                                                                                                 empty))))
                                                                                                      (snake
                                                                                                       'right
                                                                                                       x8360)))
                                                                                                   (x8358
                                                                                                    (posn
                                                                                                     8
                                                                                                     12)))
                                                                                            (world
                                                                                             x8359
                                                                                             x8358)))
                                                                                         (snake-wall-collide?
                                                                                          (lambda (snk)
                                                                                            (letrec ((g8362
                                                                                                      (letrec ((x8363
                                                                                                                (letrec ((x8364
                                                                                                                          (snake-segs
                                                                                                                           snk)))
                                                                                                                  (car
                                                                                                                   x8364))))
                                                                                                        (head-collide?
                                                                                                         x8363))))
                                                                                              g8362)))
                                                                                         (head-collide?
                                                                                          (lambda (p)
                                                                                            (letrec ((g8365
                                                                                                      (letrec ((val7160
                                                                                                                (letrec ((x8366
                                                                                                                          (posn-x
                                                                                                                           p)))
                                                                                                                  (<=
                                                                                                                   x8366
                                                                                                                   0))))
                                                                                                        (letrec ((g8367
                                                                                                                  (if val7160
                                                                                                                    val7160
                                                                                                                    (letrec ((val7161
                                                                                                                              (letrec ((x8368
                                                                                                                                        (posn-x
                                                                                                                                         p)))
                                                                                                                                (>=
                                                                                                                                 x8368
                                                                                                                                 BOARD-WIDTH))))
                                                                                                                      (letrec ((g8369
                                                                                                                                (if val7161
                                                                                                                                  val7161
                                                                                                                                  (letrec ((val7162
                                                                                                                                            (letrec ((x8370
                                                                                                                                                      (posn-y
                                                                                                                                                       p)))
                                                                                                                                              (<=
                                                                                                                                               x8370
                                                                                                                                               0))))
                                                                                                                                    (letrec ((g8371
                                                                                                                                              (if val7162
                                                                                                                                                val7162
                                                                                                                                                (letrec ((x8372
                                                                                                                                                          (posn-y
                                                                                                                                                           p)))
                                                                                                                                                  (>=
                                                                                                                                                   x8372
                                                                                                                                                   BOARD-HEIGHT)))))
                                                                                                                                      g8371)))))
                                                                                                                        g8369)))))
                                                                                                          g8367))))
                                                                                              g8365)))
                                                                                         (snake-self-collide?
                                                                                          (lambda (snk)
                                                                                            (letrec ((g8373
                                                                                                      (letrec ((x8376
                                                                                                                (letrec ((x8377
                                                                                                                          (snake-segs
                                                                                                                           snk)))
                                                                                                                  (car
                                                                                                                   x8377)))
                                                                                                               (x8374
                                                                                                                (letrec ((x8375
                                                                                                                          (snake-segs
                                                                                                                           snk)))
                                                                                                                  (cdr
                                                                                                                   x8375))))
                                                                                                        (segs-self-collide?
                                                                                                         x8376
                                                                                                         x8374))))
                                                                                              g8373)))
                                                                                         (segs-self-collide?
                                                                                          (lambda (h
                                                                                                   segs)
                                                                                            (letrec ((g8378
                                                                                                      (if cnd
                                                                                                        (letrec ((g8379
                                                                                                                  #f))
                                                                                                          g8379)
                                                                                                        (letrec ((g8380
                                                                                                                  (letrec ((x8383
                                                                                                                            (letrec ((x8384
                                                                                                                                      (car
                                                                                                                                       segs)))
                                                                                                                              (posn=?
                                                                                                                               x8384
                                                                                                                               h)))
                                                                                                                           (x8381
                                                                                                                            (letrec ((x8382
                                                                                                                                      (cdr
                                                                                                                                       segs)))
                                                                                                                              (segs-self-collide?
                                                                                                                               h
                                                                                                                               x8382))))
                                                                                                                    (or x8383
                                                                                                                        x8381))))
                                                                                                          g8380))))
                                                                                              g8378)))
                                                                                         (cut-tail
                                                                                          (lambda (segs)
                                                                                            (letrec ((g8385
                                                                                                      (letrec ((r
                                                                                                                (cdr
                                                                                                                 segs)))
                                                                                                        (letrec ((g8386
                                                                                                                  (if cnd
                                                                                                                    (letrec ((g8387
                                                                                                                              empty))
                                                                                                                      g8387)
                                                                                                                    (letrec ((g8388
                                                                                                                              (letrec ((x8390
                                                                                                                                        (car
                                                                                                                                         segs))
                                                                                                                                       (x8389
                                                                                                                                        (cut-tail
                                                                                                                                         r)))
                                                                                                                                (cons
                                                                                                                                 x8390
                                                                                                                                 x8389))))
                                                                                                                      g8388))))
                                                                                                          g8386))))
                                                                                              g8385)))
                                                                                         (next-head
                                                                                          (lambda (seg
                                                                                                   dir)
                                                                                            (letrec ((g8391
                                                                                                      (if cnd
                                                                                                        (letrec ((g8392
                                                                                                                  (letrec ((x8394
                                                                                                                            (letrec ((x8395
                                                                                                                                      (posn-x
                                                                                                                                       seg)))
                                                                                                                              (add1
                                                                                                                               x8395)))
                                                                                                                           (x8393
                                                                                                                            (posn-y
                                                                                                                             seg)))
                                                                                                                    (posn
                                                                                                                     x8394
                                                                                                                     x8393))))
                                                                                                          g8392)
                                                                                                        (if cnd
                                                                                                          (letrec ((g8396
                                                                                                                    (letrec ((x8398
                                                                                                                              (letrec ((x8399
                                                                                                                                        (posn-x
                                                                                                                                         seg)))
                                                                                                                                (sub1
                                                                                                                                 x8399)))
                                                                                                                             (x8397
                                                                                                                              (posn-y
                                                                                                                               seg)))
                                                                                                                      (posn
                                                                                                                       x8398
                                                                                                                       x8397))))
                                                                                                            g8396)
                                                                                                          (if cnd
                                                                                                            (letrec ((g8400
                                                                                                                      (letrec ((x8403
                                                                                                                                (posn-x
                                                                                                                                 seg))
                                                                                                                               (x8401
                                                                                                                                (letrec ((x8402
                                                                                                                                          (posn-y
                                                                                                                                           seg)))
                                                                                                                                  (sub1
                                                                                                                                   x8402))))
                                                                                                                        (posn
                                                                                                                         x8403
                                                                                                                         x8401))))
                                                                                                              g8400)
                                                                                                            (letrec ((g8404
                                                                                                                      (letrec ((x8407
                                                                                                                                (posn-x
                                                                                                                                 seg))
                                                                                                                               (x8405
                                                                                                                                (letrec ((x8406
                                                                                                                                          (posn-y
                                                                                                                                           seg)))
                                                                                                                                  (add1
                                                                                                                                   x8406))))
                                                                                                                        (posn
                                                                                                                         x8407
                                                                                                                         x8405))))
                                                                                                              g8404))))))
                                                                                              g8391)))
                                                                                         (snake-slither
                                                                                          (lambda (snk)
                                                                                            (letrec ((g8408
                                                                                                      (letrec ((d
                                                                                                                (snake-dir
                                                                                                                 snk)))
                                                                                                        (letrec ((g8409
                                                                                                                  (letrec ((x8410
                                                                                                                            (letrec ((x8413
                                                                                                                                      (letrec ((x8414
                                                                                                                                                (letrec ((x8415
                                                                                                                                                          (snake-segs
                                                                                                                                                           snk)))
                                                                                                                                                  (car
                                                                                                                                                   x8415))))
                                                                                                                                        (next-head
                                                                                                                                         x8414
                                                                                                                                         d)))
                                                                                                                                     (x8411
                                                                                                                                      (letrec ((x8412
                                                                                                                                                (snake-segs
                                                                                                                                                 snk)))
                                                                                                                                        (cut-tail
                                                                                                                                         x8412))))
                                                                                                                              (cons
                                                                                                                               x8413
                                                                                                                               x8411))))
                                                                                                                    (snake
                                                                                                                     d
                                                                                                                     x8410))))
                                                                                                          g8409))))
                                                                                              g8408)))
                                                                                         (snake-grow
                                                                                          (lambda (snk)
                                                                                            (letrec ((g8416
                                                                                                      (letrec ((d
                                                                                                                (snake-dir
                                                                                                                 snk)))
                                                                                                        (letrec ((g8417
                                                                                                                  (letrec ((x8418
                                                                                                                            (letrec ((x8420
                                                                                                                                      (letrec ((x8421
                                                                                                                                                (letrec ((x8422
                                                                                                                                                          (snake-segs
                                                                                                                                                           snk)))
                                                                                                                                                  (car
                                                                                                                                                   x8422))))
                                                                                                                                        (next-head
                                                                                                                                         x8421
                                                                                                                                         d)))
                                                                                                                                     (x8419
                                                                                                                                      (snake-segs
                                                                                                                                       snk)))
                                                                                                                              (cons
                                                                                                                               x8420
                                                                                                                               x8419))))
                                                                                                                    (snake
                                                                                                                     d
                                                                                                                     x8418))))
                                                                                                          g8417))))
                                                                                              g8416)))
                                                                                         (world->world
                                                                                          (lambda (w)
                                                                                            (letrec ((g8423
                                                                                                      (if cnd
                                                                                                        (letrec ((g8424
                                                                                                                  (snake-eat
                                                                                                                   w)))
                                                                                                          g8424)
                                                                                                        (letrec ((g8425
                                                                                                                  (letrec ((x8427
                                                                                                                            (letrec ((x8428
                                                                                                                                      (world-snake
                                                                                                                                       w)))
                                                                                                                              (snake-slither
                                                                                                                               x8428)))
                                                                                                                           (x8426
                                                                                                                            (world-food
                                                                                                                             w)))
                                                                                                                    (world
                                                                                                                     x8427
                                                                                                                     x8426))))
                                                                                                          g8425))))
                                                                                              g8423)))
                                                                                         (eating?
                                                                                          (lambda (w)
                                                                                            (letrec ((g8429
                                                                                                      (letrec ((x8433
                                                                                                                (world-food
                                                                                                                 w))
                                                                                                               (x8430
                                                                                                                (letrec ((x8431
                                                                                                                          (letrec ((x8432
                                                                                                                                    (world-snake
                                                                                                                                     w)))
                                                                                                                            (snake-segs
                                                                                                                             x8432))))
                                                                                                                  (car
                                                                                                                   x8431))))
                                                                                                        (posn=?
                                                                                                         x8433
                                                                                                         x8430))))
                                                                                              g8429)))
                                                                                         (snake-change-direction
                                                                                          (lambda (snk
                                                                                                   dir)
                                                                                            (letrec ((g8434
                                                                                                      (letrec ((x8435
                                                                                                                (snake-segs
                                                                                                                 snk)))
                                                                                                        (snake
                                                                                                         dir
                                                                                                         x8435))))
                                                                                              g8434)))
                                                                                         (world-change-dir
                                                                                          (lambda (w
                                                                                                   dir)
                                                                                            (letrec ((g8436
                                                                                                      (letrec ((x8438
                                                                                                                (letrec ((x8439
                                                                                                                          (world-snake
                                                                                                                           w)))
                                                                                                                  (snake-change-direction
                                                                                                                   x8439
                                                                                                                   dir)))
                                                                                                               (x8437
                                                                                                                (world-food
                                                                                                                 w)))
                                                                                                        (world
                                                                                                         x8438
                                                                                                         x8437))))
                                                                                              g8436)))
                                                                                         (snake-eat
                                                                                          (lambda (w)
                                                                                            (letrec ((g8440
                                                                                                      (letrec ((x8444
                                                                                                                (letrec ((x8445
                                                                                                                          (world-snake
                                                                                                                           w)))
                                                                                                                  (snake-grow
                                                                                                                   x8445)))
                                                                                                               (x8441
                                                                                                                (letrec ((x8443
                                                                                                                          (-
                                                                                                                           BOARD-WIDTH
                                                                                                                           1))
                                                                                                                         (x8442
                                                                                                                          (-
                                                                                                                           BOARD-HEIGHT
                                                                                                                           1)))
                                                                                                                  (posn
                                                                                                                   x8443
                                                                                                                   x8442))))
                                                                                                        (world
                                                                                                         x8444
                                                                                                         x8441))))
                                                                                              g8440)))
                                                                                         (handle-key
                                                                                          (lambda (w
                                                                                                   ke)
                                                                                            (letrec ((g8446
                                                                                                      (if cnd
                                                                                                        (letrec ((g8447
                                                                                                                  (world-change-dir
                                                                                                                   w
                                                                                                                   'up)))
                                                                                                          g8447)
                                                                                                        (if cnd
                                                                                                          (letrec ((g8448
                                                                                                                    (world-change-dir
                                                                                                                     w
                                                                                                                     'down)))
                                                                                                            g8448)
                                                                                                          (if cnd
                                                                                                            (letrec ((g8449
                                                                                                                      (world-change-dir
                                                                                                                       w
                                                                                                                       'left)))
                                                                                                              g8449)
                                                                                                            (if cnd
                                                                                                              (letrec ((g8450
                                                                                                                        (world-change-dir
                                                                                                                         w
                                                                                                                         'right)))
                                                                                                                g8450)
                                                                                                              (letrec ((g8451
                                                                                                                        w))
                                                                                                                g8451)))))))
                                                                                              g8446)))
                                                                                         (game-over?
                                                                                          (lambda (w)
                                                                                            (letrec ((g8452
                                                                                                      (letrec ((val7163
                                                                                                                (letrec ((x8453
                                                                                                                          (world-snake
                                                                                                                           w)))
                                                                                                                  (snake-wall-collide?
                                                                                                                   x8453))))
                                                                                                        (letrec ((g8454
                                                                                                                  (if val7163
                                                                                                                    val7163
                                                                                                                    (letrec ((x8455
                                                                                                                              (world-snake
                                                                                                                               w)))
                                                                                                                      (snake-self-collide?
                                                                                                                       x8455)))))
                                                                                                          g8454))))
                                                                                              g8452)))
                                                                                         (world->scene
                                                                                          (lambda (w)
                                                                                            (letrec ((g8456
                                                                                                      (letrec ((x8459
                                                                                                                (world-snake
                                                                                                                 w))
                                                                                                               (x8457
                                                                                                                (letrec ((x8458
                                                                                                                          (world-food
                                                                                                                           w)))
                                                                                                                  (food+scene
                                                                                                                   x8458
                                                                                                                   BACKGROUND))))
                                                                                                        (snake+scene
                                                                                                         x8459
                                                                                                         x8457))))
                                                                                              g8456)))
                                                                                         (food+scene
                                                                                          (lambda (f
                                                                                                   scn)
                                                                                            (letrec ((g8460
                                                                                                      (letrec ((x8462
                                                                                                                (posn-x
                                                                                                                 f))
                                                                                                               (x8461
                                                                                                                (posn-y
                                                                                                                 f)))
                                                                                                        (place-image-on-grid
                                                                                                         FOOD-IMAGE
                                                                                                         x8462
                                                                                                         x8461
                                                                                                         scn))))
                                                                                              g8460)))
                                                                                         (place-image-on-grid
                                                                                          (lambda (img
                                                                                                   x
                                                                                                   y
                                                                                                   scn)
                                                                                            (letrec ((g8463
                                                                                                      (letrec ((x8466
                                                                                                                (*
                                                                                                                 GRID-SIZE
                                                                                                                 x))
                                                                                                               (x8464
                                                                                                                (letrec ((x8465
                                                                                                                          (*
                                                                                                                           GRID-SIZE
                                                                                                                           y)))
                                                                                                                  (-
                                                                                                                   BOARD-HEIGHT-PIXELS
                                                                                                                   x8465))))
                                                                                                        (place-image
                                                                                                         img
                                                                                                         x8466
                                                                                                         x8464
                                                                                                         scn))))
                                                                                              g8463)))
                                                                                         (snake+scene
                                                                                          (lambda (snk
                                                                                                   scn)
                                                                                            (letrec ((g8467
                                                                                                      (letrec ((x8468
                                                                                                                (snake-segs
                                                                                                                 snk)))
                                                                                                        (segments+scene
                                                                                                         x8468
                                                                                                         scn))))
                                                                                              g8467)))
                                                                                         (segments+scene
                                                                                          (lambda (segs
                                                                                                   scn)
                                                                                            (letrec ((g8469
                                                                                                      (if cnd
                                                                                                        (letrec ((g8470
                                                                                                                  scn))
                                                                                                          g8470)
                                                                                                        (letrec ((g8471
                                                                                                                  (letrec ((x8474
                                                                                                                            (cdr
                                                                                                                             segs))
                                                                                                                           (x8472
                                                                                                                            (letrec ((x8473
                                                                                                                                      (car
                                                                                                                                       segs)))
                                                                                                                              (segment+scene
                                                                                                                               x8473
                                                                                                                               scn))))
                                                                                                                    (segments+scene
                                                                                                                     x8474
                                                                                                                     x8472))))
                                                                                                          g8471))))
                                                                                              g8469)))
                                                                                         (segment+scene
                                                                                          (lambda (seg
                                                                                                   scn)
                                                                                            (letrec ((g8475
                                                                                                      (letrec ((x8477
                                                                                                                (posn-x
                                                                                                                 seg))
                                                                                                               (x8476
                                                                                                                (posn-y
                                                                                                                 seg)))
                                                                                                        (place-image-on-grid
                                                                                                         SEGMENT-IMAGE
                                                                                                         x8477
                                                                                                         x8476
                                                                                                         scn))))
                                                                                              g8475))))
                                                                                  (letrec ((g8478
                                                                                            (letrec ((g8479
                                                                                                      (letrec ((g8480
                                                                                                                (letrec ((x8514
                                                                                                                          ((lambda (j7263
                                                                                                                                    k7264
                                                                                                                                    f7265)
                                                                                                                             (lambda (g7261
                                                                                                                                      g7262)
                                                                                                                               (boolean?/c
                                                                                                                                j7263
                                                                                                                                k7264
                                                                                                                                (f7265
                                                                                                                                 (POSN/C
                                                                                                                                  j7263
                                                                                                                                  k7264
                                                                                                                                  g7261)
                                                                                                                                 (POSN/C
                                                                                                                                  j7263
                                                                                                                                  k7264
                                                                                                                                  g7262)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           posn=?))
                                                                                                                         (x8509
                                                                                                                          (letrec ((x8510
                                                                                                                                    (letrec ((x8513
                                                                                                                                              (input))
                                                                                                                                             (x8511
                                                                                                                                              (letrec ((x8512
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x8512
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x8513
                                                                                                                                       x8511))))
                                                                                                                            (cons
                                                                                                                             'posn
                                                                                                                             x8510)))
                                                                                                                         (x8504
                                                                                                                          (letrec ((x8505
                                                                                                                                    (letrec ((x8508
                                                                                                                                              (input))
                                                                                                                                             (x8506
                                                                                                                                              (letrec ((x8507
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x8507
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x8508
                                                                                                                                       x8506))))
                                                                                                                            (cons
                                                                                                                             'posn
                                                                                                                             x8505))))
                                                                                                                  (x8514
                                                                                                                   x8509
                                                                                                                   x8504)))
                                                                                                               (g8481
                                                                                                                (WORLD/C
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 WORLD))
                                                                                                               (g8482
                                                                                                                (image/c
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 BACKGROUND))
                                                                                                               (g8483
                                                                                                                (image/c
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 FOOD-IMAGE))
                                                                                                               (g8484
                                                                                                                (image/c
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 SEGMENT-IMAGE))
                                                                                                               (g8485
                                                                                                                (real?
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 GRID-SIZE))
                                                                                                               (g8486
                                                                                                                (real?
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 BOARD-HEIGHT-PIXELS))
                                                                                                               (g8487
                                                                                                                (real?
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 BOARD-WIDTH))
                                                                                                               (g8488
                                                                                                                (real?
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 BOARD-HEIGHT))
                                                                                                               (g8489
                                                                                                                (letrec ((x8520
                                                                                                                          ((lambda (j7267
                                                                                                                                    k7268
                                                                                                                                    f7269)
                                                                                                                             (lambda (g7266)
                                                                                                                               (boolean?/c
                                                                                                                                j7267
                                                                                                                                k7268
                                                                                                                                (f7269
                                                                                                                                 (SNAKE/C
                                                                                                                                  j7267
                                                                                                                                  k7268
                                                                                                                                  g7266)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           snake-wall-collide?))
                                                                                                                         (x8515
                                                                                                                          (letrec ((x8516
                                                                                                                                    (letrec ((x8519
                                                                                                                                              (input))
                                                                                                                                             (x8517
                                                                                                                                              (letrec ((x8518
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x8518
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x8519
                                                                                                                                       x8517))))
                                                                                                                            (cons
                                                                                                                             'snake
                                                                                                                             x8516))))
                                                                                                                  (x8520
                                                                                                                   x8515)))
                                                                                                               (g8490
                                                                                                                (letrec ((x8526
                                                                                                                          ((lambda (j7271
                                                                                                                                    k7272
                                                                                                                                    f7273)
                                                                                                                             (lambda (g7270)
                                                                                                                               (boolean?/c
                                                                                                                                j7271
                                                                                                                                k7272
                                                                                                                                (f7273
                                                                                                                                 (SNAKE/C
                                                                                                                                  j7271
                                                                                                                                  k7272
                                                                                                                                  g7270)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           snake-self-collide?))
                                                                                                                         (x8521
                                                                                                                          (letrec ((x8522
                                                                                                                                    (letrec ((x8525
                                                                                                                                              (input))
                                                                                                                                             (x8523
                                                                                                                                              (letrec ((x8524
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x8524
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x8525
                                                                                                                                       x8523))))
                                                                                                                            (cons
                                                                                                                             'snake
                                                                                                                             x8522))))
                                                                                                                  (x8526
                                                                                                                   x8521)))
                                                                                                               (g8491
                                                                                                                (letrec ((x8528
                                                                                                                          ((lambda (j7275
                                                                                                                                    k7276
                                                                                                                                    f7277)
                                                                                                                             (lambda (g7274)
                                                                                                                               ((listof
                                                                                                                                 POSN/C)
                                                                                                                                j7275
                                                                                                                                k7276
                                                                                                                                (f7277
                                                                                                                                 ((and/c
                                                                                                                                   cons?/c
                                                                                                                                   (listof
                                                                                                                                    POSN/C))
                                                                                                                                  j7275
                                                                                                                                  k7276
                                                                                                                                  g7274)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           cut-tail))
                                                                                                                         (x8527
                                                                                                                          (input)))
                                                                                                                  (x8528
                                                                                                                   x8527)))
                                                                                                               (g8492
                                                                                                                (letrec ((x8534
                                                                                                                          ((lambda (j7279
                                                                                                                                    k7280
                                                                                                                                    f7281)
                                                                                                                             (lambda (g7278)
                                                                                                                               (SNAKE/C
                                                                                                                                j7279
                                                                                                                                k7280
                                                                                                                                (f7281
                                                                                                                                 (SNAKE/C
                                                                                                                                  j7279
                                                                                                                                  k7280
                                                                                                                                  g7278)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           snake-slither))
                                                                                                                         (x8529
                                                                                                                          (letrec ((x8530
                                                                                                                                    (letrec ((x8533
                                                                                                                                              (input))
                                                                                                                                             (x8531
                                                                                                                                              (letrec ((x8532
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x8532
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x8533
                                                                                                                                       x8531))))
                                                                                                                            (cons
                                                                                                                             'snake
                                                                                                                             x8530))))
                                                                                                                  (x8534
                                                                                                                   x8529)))
                                                                                                               (g8493
                                                                                                                (letrec ((x8540
                                                                                                                          ((lambda (j7283
                                                                                                                                    k7284
                                                                                                                                    f7285)
                                                                                                                             (lambda (g7282)
                                                                                                                               (SNAKE/C
                                                                                                                                j7283
                                                                                                                                k7284
                                                                                                                                (f7285
                                                                                                                                 (SNAKE/C
                                                                                                                                  j7283
                                                                                                                                  k7284
                                                                                                                                  g7282)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           snake-grow))
                                                                                                                         (x8535
                                                                                                                          (letrec ((x8536
                                                                                                                                    (letrec ((x8539
                                                                                                                                              (input))
                                                                                                                                             (x8537
                                                                                                                                              (letrec ((x8538
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x8538
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x8539
                                                                                                                                       x8537))))
                                                                                                                            (cons
                                                                                                                             'snake
                                                                                                                             x8536))))
                                                                                                                  (x8540
                                                                                                                   x8535)))
                                                                                                               (g8494
                                                                                                                (letrec ((x8555
                                                                                                                          ((lambda (j7288
                                                                                                                                    k7289
                                                                                                                                    f7290)
                                                                                                                             (lambda (g7286
                                                                                                                                      g7287)
                                                                                                                               (WORLD/C
                                                                                                                                j7288
                                                                                                                                k7289
                                                                                                                                (f7290
                                                                                                                                 (WORLD/C
                                                                                                                                  j7288
                                                                                                                                  k7289
                                                                                                                                  g7286)
                                                                                                                                 (DIR/C
                                                                                                                                  j7288
                                                                                                                                  k7289
                                                                                                                                  g7287)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           world-change-dir))
                                                                                                                         (x8542
                                                                                                                          (letrec ((x8543
                                                                                                                                    (letrec ((x8550
                                                                                                                                              (letrec ((x8551
                                                                                                                                                        (letrec ((x8554
                                                                                                                                                                  (input))
                                                                                                                                                                 (x8552
                                                                                                                                                                  (letrec ((x8553
                                                                                                                                                                            (input)))
                                                                                                                                                                    (cons
                                                                                                                                                                     x8553
                                                                                                                                                                     '()))))
                                                                                                                                                          (cons
                                                                                                                                                           x8554
                                                                                                                                                           x8552))))
                                                                                                                                                (cons
                                                                                                                                                 'snake
                                                                                                                                                 x8551)))
                                                                                                                                             (x8544
                                                                                                                                              (letrec ((x8545
                                                                                                                                                        (letrec ((x8546
                                                                                                                                                                  (letrec ((x8549
                                                                                                                                                                            (input))
                                                                                                                                                                           (x8547
                                                                                                                                                                            (letrec ((x8548
                                                                                                                                                                                      (input)))
                                                                                                                                                                              (cons
                                                                                                                                                                               x8548
                                                                                                                                                                               '()))))
                                                                                                                                                                    (cons
                                                                                                                                                                     x8549
                                                                                                                                                                     x8547))))
                                                                                                                                                          (cons
                                                                                                                                                           'posn
                                                                                                                                                           x8546))))
                                                                                                                                                (cons
                                                                                                                                                 x8545
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x8550
                                                                                                                                       x8544))))
                                                                                                                            (cons
                                                                                                                             'world
                                                                                                                             x8543)))
                                                                                                                         (x8541
                                                                                                                          (input)))
                                                                                                                  (x8555
                                                                                                                   x8542
                                                                                                                   x8541)))
                                                                                                               (g8495
                                                                                                                (letrec ((x8569
                                                                                                                          ((lambda (j7292
                                                                                                                                    k7293
                                                                                                                                    f7294)
                                                                                                                             (lambda (g7291)
                                                                                                                               (WORLD/C
                                                                                                                                j7292
                                                                                                                                k7293
                                                                                                                                (f7294
                                                                                                                                 (WORLD/C
                                                                                                                                  j7292
                                                                                                                                  k7293
                                                                                                                                  g7291)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           world->world))
                                                                                                                         (x8556
                                                                                                                          (letrec ((x8557
                                                                                                                                    (letrec ((x8564
                                                                                                                                              (letrec ((x8565
                                                                                                                                                        (letrec ((x8568
                                                                                                                                                                  (input))
                                                                                                                                                                 (x8566
                                                                                                                                                                  (letrec ((x8567
                                                                                                                                                                            (input)))
                                                                                                                                                                    (cons
                                                                                                                                                                     x8567
                                                                                                                                                                     '()))))
                                                                                                                                                          (cons
                                                                                                                                                           x8568
                                                                                                                                                           x8566))))
                                                                                                                                                (cons
                                                                                                                                                 'snake
                                                                                                                                                 x8565)))
                                                                                                                                             (x8558
                                                                                                                                              (letrec ((x8559
                                                                                                                                                        (letrec ((x8560
                                                                                                                                                                  (letrec ((x8563
                                                                                                                                                                            (input))
                                                                                                                                                                           (x8561
                                                                                                                                                                            (letrec ((x8562
                                                                                                                                                                                      (input)))
                                                                                                                                                                              (cons
                                                                                                                                                                               x8562
                                                                                                                                                                               '()))))
                                                                                                                                                                    (cons
                                                                                                                                                                     x8563
                                                                                                                                                                     x8561))))
                                                                                                                                                          (cons
                                                                                                                                                           'posn
                                                                                                                                                           x8560))))
                                                                                                                                                (cons
                                                                                                                                                 x8559
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x8564
                                                                                                                                       x8558))))
                                                                                                                            (cons
                                                                                                                             'world
                                                                                                                             x8557))))
                                                                                                                  (x8569
                                                                                                                   x8556)))
                                                                                                               (g8496
                                                                                                                (letrec ((x8584
                                                                                                                          ((lambda (j7297
                                                                                                                                    k7298
                                                                                                                                    f7299)
                                                                                                                             (lambda (g7295
                                                                                                                                      g7296)
                                                                                                                               (WORLD/C
                                                                                                                                j7297
                                                                                                                                k7298
                                                                                                                                (f7299
                                                                                                                                 (WORLD/C
                                                                                                                                  j7297
                                                                                                                                  k7298
                                                                                                                                  g7295)
                                                                                                                                 (string?/c
                                                                                                                                  j7297
                                                                                                                                  k7298
                                                                                                                                  g7296)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           handle-key))
                                                                                                                         (x8571
                                                                                                                          (letrec ((x8572
                                                                                                                                    (letrec ((x8579
                                                                                                                                              (letrec ((x8580
                                                                                                                                                        (letrec ((x8583
                                                                                                                                                                  (input))
                                                                                                                                                                 (x8581
                                                                                                                                                                  (letrec ((x8582
                                                                                                                                                                            (input)))
                                                                                                                                                                    (cons
                                                                                                                                                                     x8582
                                                                                                                                                                     '()))))
                                                                                                                                                          (cons
                                                                                                                                                           x8583
                                                                                                                                                           x8581))))
                                                                                                                                                (cons
                                                                                                                                                 'snake
                                                                                                                                                 x8580)))
                                                                                                                                             (x8573
                                                                                                                                              (letrec ((x8574
                                                                                                                                                        (letrec ((x8575
                                                                                                                                                                  (letrec ((x8578
                                                                                                                                                                            (input))
                                                                                                                                                                           (x8576
                                                                                                                                                                            (letrec ((x8577
                                                                                                                                                                                      (input)))
                                                                                                                                                                              (cons
                                                                                                                                                                               x8577
                                                                                                                                                                               '()))))
                                                                                                                                                                    (cons
                                                                                                                                                                     x8578
                                                                                                                                                                     x8576))))
                                                                                                                                                          (cons
                                                                                                                                                           'posn
                                                                                                                                                           x8575))))
                                                                                                                                                (cons
                                                                                                                                                 x8574
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x8579
                                                                                                                                       x8573))))
                                                                                                                            (cons
                                                                                                                             'world
                                                                                                                             x8572)))
                                                                                                                         (x8570
                                                                                                                          (input)))
                                                                                                                  (x8584
                                                                                                                   x8571
                                                                                                                   x8570)))
                                                                                                               (g8497
                                                                                                                (letrec ((x8598
                                                                                                                          ((lambda (j7301
                                                                                                                                    k7302
                                                                                                                                    f7303)
                                                                                                                             (lambda (g7300)
                                                                                                                               (boolean?/c
                                                                                                                                j7301
                                                                                                                                k7302
                                                                                                                                (f7303
                                                                                                                                 (WORLD/C
                                                                                                                                  j7301
                                                                                                                                  k7302
                                                                                                                                  g7300)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           game-over?))
                                                                                                                         (x8585
                                                                                                                          (letrec ((x8586
                                                                                                                                    (letrec ((x8593
                                                                                                                                              (letrec ((x8594
                                                                                                                                                        (letrec ((x8597
                                                                                                                                                                  (input))
                                                                                                                                                                 (x8595
                                                                                                                                                                  (letrec ((x8596
                                                                                                                                                                            (input)))
                                                                                                                                                                    (cons
                                                                                                                                                                     x8596
                                                                                                                                                                     '()))))
                                                                                                                                                          (cons
                                                                                                                                                           x8597
                                                                                                                                                           x8595))))
                                                                                                                                                (cons
                                                                                                                                                 'snake
                                                                                                                                                 x8594)))
                                                                                                                                             (x8587
                                                                                                                                              (letrec ((x8588
                                                                                                                                                        (letrec ((x8589
                                                                                                                                                                  (letrec ((x8592
                                                                                                                                                                            (input))
                                                                                                                                                                           (x8590
                                                                                                                                                                            (letrec ((x8591
                                                                                                                                                                                      (input)))
                                                                                                                                                                              (cons
                                                                                                                                                                               x8591
                                                                                                                                                                               '()))))
                                                                                                                                                                    (cons
                                                                                                                                                                     x8592
                                                                                                                                                                     x8590))))
                                                                                                                                                          (cons
                                                                                                                                                           'posn
                                                                                                                                                           x8589))))
                                                                                                                                                (cons
                                                                                                                                                 x8588
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x8593
                                                                                                                                       x8587))))
                                                                                                                            (cons
                                                                                                                             'world
                                                                                                                             x8586))))
                                                                                                                  (x8598
                                                                                                                   x8585)))
                                                                                                               (g8498
                                                                                                                (letrec ((x8612
                                                                                                                          ((lambda (j7305
                                                                                                                                    k7306
                                                                                                                                    f7307)
                                                                                                                             (lambda (g7304)
                                                                                                                               (image/c
                                                                                                                                j7305
                                                                                                                                k7306
                                                                                                                                (f7307
                                                                                                                                 (WORLD/C
                                                                                                                                  j7305
                                                                                                                                  k7306
                                                                                                                                  g7304)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           world->scene))
                                                                                                                         (x8599
                                                                                                                          (letrec ((x8600
                                                                                                                                    (letrec ((x8607
                                                                                                                                              (letrec ((x8608
                                                                                                                                                        (letrec ((x8611
                                                                                                                                                                  (input))
                                                                                                                                                                 (x8609
                                                                                                                                                                  (letrec ((x8610
                                                                                                                                                                            (input)))
                                                                                                                                                                    (cons
                                                                                                                                                                     x8610
                                                                                                                                                                     '()))))
                                                                                                                                                          (cons
                                                                                                                                                           x8611
                                                                                                                                                           x8609))))
                                                                                                                                                (cons
                                                                                                                                                 'snake
                                                                                                                                                 x8608)))
                                                                                                                                             (x8601
                                                                                                                                              (letrec ((x8602
                                                                                                                                                        (letrec ((x8603
                                                                                                                                                                  (letrec ((x8606
                                                                                                                                                                            (input))
                                                                                                                                                                           (x8604
                                                                                                                                                                            (letrec ((x8605
                                                                                                                                                                                      (input)))
                                                                                                                                                                              (cons
                                                                                                                                                                               x8605
                                                                                                                                                                               '()))))
                                                                                                                                                                    (cons
                                                                                                                                                                     x8606
                                                                                                                                                                     x8604))))
                                                                                                                                                          (cons
                                                                                                                                                           'posn
                                                                                                                                                           x8603))))
                                                                                                                                                (cons
                                                                                                                                                 x8602
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x8607
                                                                                                                                       x8601))))
                                                                                                                            (cons
                                                                                                                             'world
                                                                                                                             x8600))))
                                                                                                                  (x8612
                                                                                                                   x8599)))
                                                                                                               (g8499
                                                                                                                (letrec ((x8619
                                                                                                                          ((lambda (j7310
                                                                                                                                    k7311
                                                                                                                                    f7312)
                                                                                                                             (lambda (g7308
                                                                                                                                      g7309)
                                                                                                                               (image/c
                                                                                                                                j7310
                                                                                                                                k7311
                                                                                                                                (f7312
                                                                                                                                 (POSN/C
                                                                                                                                  j7310
                                                                                                                                  k7311
                                                                                                                                  g7308)
                                                                                                                                 (image/c
                                                                                                                                  j7310
                                                                                                                                  k7311
                                                                                                                                  g7309)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           food+scene))
                                                                                                                         (x8614
                                                                                                                          (letrec ((x8615
                                                                                                                                    (letrec ((x8618
                                                                                                                                              (input))
                                                                                                                                             (x8616
                                                                                                                                              (letrec ((x8617
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x8617
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x8618
                                                                                                                                       x8616))))
                                                                                                                            (cons
                                                                                                                             'posn
                                                                                                                             x8615)))
                                                                                                                         (x8613
                                                                                                                          (cons
                                                                                                                           'image
                                                                                                                           '())))
                                                                                                                  (x8619
                                                                                                                   x8614
                                                                                                                   x8613)))
                                                                                                               (g8500
                                                                                                                (letrec ((x8624
                                                                                                                          ((lambda (j7317
                                                                                                                                    k7318
                                                                                                                                    f7319)
                                                                                                                             (lambda (g7313
                                                                                                                                      g7314
                                                                                                                                      g7315
                                                                                                                                      g7316)
                                                                                                                               (image/c
                                                                                                                                j7317
                                                                                                                                k7318
                                                                                                                                (f7319
                                                                                                                                 (image/c
                                                                                                                                  j7317
                                                                                                                                  k7318
                                                                                                                                  g7313)
                                                                                                                                 (real?/c
                                                                                                                                  j7317
                                                                                                                                  k7318
                                                                                                                                  g7314)
                                                                                                                                 (real?/c
                                                                                                                                  j7317
                                                                                                                                  k7318
                                                                                                                                  g7315)
                                                                                                                                 (image/c
                                                                                                                                  j7317
                                                                                                                                  k7318
                                                                                                                                  g7316)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           place-image-on-grid))
                                                                                                                         (x8623
                                                                                                                          (cons
                                                                                                                           'image
                                                                                                                           '()))
                                                                                                                         (x8622
                                                                                                                          (input))
                                                                                                                         (x8621
                                                                                                                          (input))
                                                                                                                         (x8620
                                                                                                                          (cons
                                                                                                                           'image
                                                                                                                           '())))
                                                                                                                  (x8624
                                                                                                                   x8623
                                                                                                                   x8622
                                                                                                                   x8621
                                                                                                                   x8620)))
                                                                                                               (g8501
                                                                                                                (letrec ((x8631
                                                                                                                          ((lambda (j7322
                                                                                                                                    k7323
                                                                                                                                    f7324)
                                                                                                                             (lambda (g7320
                                                                                                                                      g7321)
                                                                                                                               (image/c
                                                                                                                                j7322
                                                                                                                                k7323
                                                                                                                                (f7324
                                                                                                                                 (SNAKE/C
                                                                                                                                  j7322
                                                                                                                                  k7323
                                                                                                                                  g7320)
                                                                                                                                 (image/c
                                                                                                                                  j7322
                                                                                                                                  k7323
                                                                                                                                  g7321)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           snake+scene))
                                                                                                                         (x8626
                                                                                                                          (letrec ((x8627
                                                                                                                                    (letrec ((x8630
                                                                                                                                              (input))
                                                                                                                                             (x8628
                                                                                                                                              (letrec ((x8629
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x8629
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x8630
                                                                                                                                       x8628))))
                                                                                                                            (cons
                                                                                                                             'snake
                                                                                                                             x8627)))
                                                                                                                         (x8625
                                                                                                                          (cons
                                                                                                                           'image
                                                                                                                           '())))
                                                                                                                  (x8631
                                                                                                                   x8626
                                                                                                                   x8625)))
                                                                                                               (g8502
                                                                                                                (letrec ((x8634
                                                                                                                          ((lambda (j7327
                                                                                                                                    k7328
                                                                                                                                    f7329)
                                                                                                                             (lambda (g7325
                                                                                                                                      g7326)
                                                                                                                               (image/c
                                                                                                                                j7327
                                                                                                                                k7328
                                                                                                                                (f7329
                                                                                                                                 ((listof
                                                                                                                                   POSN/C)
                                                                                                                                  j7327
                                                                                                                                  k7328
                                                                                                                                  g7325)
                                                                                                                                 (image/c
                                                                                                                                  j7327
                                                                                                                                  k7328
                                                                                                                                  g7326)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           segments+scene))
                                                                                                                         (x8633
                                                                                                                          (input))
                                                                                                                         (x8632
                                                                                                                          (cons
                                                                                                                           'image
                                                                                                                           '())))
                                                                                                                  (x8634
                                                                                                                   x8633
                                                                                                                   x8632)))
                                                                                                               (g8503
                                                                                                                (letrec ((x8641
                                                                                                                          ((lambda (j7332
                                                                                                                                    k7333
                                                                                                                                    f7334)
                                                                                                                             (lambda (g7330
                                                                                                                                      g7331)
                                                                                                                               (image/c
                                                                                                                                j7332
                                                                                                                                k7333
                                                                                                                                (f7334
                                                                                                                                 (POSN/C
                                                                                                                                  j7332
                                                                                                                                  k7333
                                                                                                                                  g7330)
                                                                                                                                 (image/c
                                                                                                                                  j7332
                                                                                                                                  k7333
                                                                                                                                  g7331)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           segment+scene))
                                                                                                                         (x8636
                                                                                                                          (letrec ((x8637
                                                                                                                                    (letrec ((x8640
                                                                                                                                              (input))
                                                                                                                                             (x8638
                                                                                                                                              (letrec ((x8639
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x8639
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x8640
                                                                                                                                       x8638))))
                                                                                                                            (cons
                                                                                                                             'posn
                                                                                                                             x8637)))
                                                                                                                         (x8635
                                                                                                                          (cons
                                                                                                                           'image
                                                                                                                           '())))
                                                                                                                  (x8641
                                                                                                                   x8636
                                                                                                                   x8635))))
                                                                                                        g8503)))
                                                                                              g8479)))
                                                                                    g8478))))
                                                                        g8309))))
                                                            g8288))))
                                                g8261))))
                                    g8250)))
                          g8249))))
              g7362)))
    g7361))
