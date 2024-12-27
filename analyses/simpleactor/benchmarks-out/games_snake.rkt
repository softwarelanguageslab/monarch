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
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7363 '())
                                 (g7364
                                  (letrec ((real/c
                                            (lambda (g7164 g7165 g7166)
                                              (letrec ((g7365
                                                        (letrec ((x-cnd7366
                                                                  (real?
                                                                   g7166)))
                                                          (if x-cnd7366
                                                            g7166
                                                            (blame
                                                             g7164
                                                             'real?)))))
                                                g7365)))
                                           (boolean?/c
                                            (lambda (g7167 g7168 g7169)
                                              (letrec ((g7367
                                                        (letrec ((x-cnd7368
                                                                  (boolean?
                                                                   g7169)))
                                                          (if x-cnd7368
                                                            g7169
                                                            (blame
                                                             g7167
                                                             'boolean?)))))
                                                g7367)))
                                           (number?/c
                                            (lambda (g7170 g7171 g7172)
                                              (letrec ((g7369
                                                        (letrec ((x-cnd7370
                                                                  (number?
                                                                   g7172)))
                                                          (if x-cnd7370
                                                            g7172
                                                            (blame
                                                             g7170
                                                             'number?)))))
                                                g7369)))
                                           (any/c
                                            (lambda (g7173 g7174 g7175)
                                              (letrec ((g7371
                                                        (letrec ((x-cnd7372
                                                                  ((lambda (v)
                                                                     (letrec ((g7373
                                                                               #t))
                                                                       g7373))
                                                                   g7175)))
                                                          (if x-cnd7372
                                                            g7175
                                                            (blame
                                                             g7173
                                                             '(lambda (v)
                                                                #t))))))
                                                g7371)))
                                           (any?/c
                                            (lambda (g7176 g7177 g7178)
                                              (letrec ((g7374
                                                        (letrec ((x-cnd7375
                                                                  ((lambda (v)
                                                                     (letrec ((g7376
                                                                               #t))
                                                                       g7376))
                                                                   g7178)))
                                                          (if x-cnd7375
                                                            g7178
                                                            (blame
                                                             g7176
                                                             '(lambda (v)
                                                                #t))))))
                                                g7374)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7179 g7180 g7181)
                                              (letrec ((g7377
                                                        (letrec ((x-cnd7378
                                                                  (pair?
                                                                   g7181)))
                                                          (if x-cnd7378
                                                            g7181
                                                            (blame
                                                             g7179
                                                             'pair?)))))
                                                g7377)))
                                           (pair?/c
                                            (lambda (g7182 g7183 g7184)
                                              (letrec ((g7379
                                                        (letrec ((x-cnd7380
                                                                  (pair?
                                                                   g7184)))
                                                          (if x-cnd7380
                                                            g7184
                                                            (blame
                                                             g7182
                                                             'pair?)))))
                                                g7379)))
                                           (integer?
                                            (lambda (g7185 g7186 g7187)
                                              (letrec ((g7381
                                                        (letrec ((x-cnd7382
                                                                  (integer?
                                                                   g7187)))
                                                          (if x-cnd7382
                                                            g7187
                                                            (blame
                                                             g7185
                                                             'integer?)))))
                                                g7381)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7383
                                                        (lambda (k j v)
                                                          (letrec ((g7384
                                                                    (letrec ((x-cnd7385
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7385
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7384))))
                                                g7383)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7386
                                                        (lambda (k j v)
                                                          (letrec ((g7387
                                                                    (letrec ((x-cnd7388
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7388
                                                                        '()
                                                                        (letrec ((x7392
                                                                                  (letrec ((x7393
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7393)))
                                                                                 (x7389
                                                                                  (letrec ((x7391
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7390
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7391
                                                                                     k
                                                                                     j
                                                                                     x7390))))
                                                                          (cons
                                                                           x7392
                                                                           x7389))))))
                                                            g7387))))
                                                g7386)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7394 #t)) g7394)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7395
                                                        (letrec ((x7396
                                                                  (= v 0)))
                                                          (not x7396))))
                                                g7395)))
                                           (nonzero?/c
                                            (lambda (g7188 g7189 g7190)
                                              (letrec ((g7397
                                                        (letrec ((x-cnd7398
                                                                  ((lambda (v)
                                                                     (letrec ((g7399
                                                                               (letrec ((x7400
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7400))))
                                                                       g7399))
                                                                   g7190)))
                                                          (if x-cnd7398
                                                            g7190
                                                            (blame
                                                             g7188
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7397)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7401 v)) g7401)))
                                           (+
                                            ((lambda (j7193 k7194 f7195)
                                               (letrec ((g7403
                                                         (lambda (g7191 g7192)
                                                           (letrec ((g7404
                                                                     (letrec ((x7405
                                                                               (letrec ((x7407
                                                                                         (number?/c
                                                                                          j7193
                                                                                          k7194
                                                                                          g7191))
                                                                                        (x7406
                                                                                         (number?/c
                                                                                          j7193
                                                                                          k7194
                                                                                          g7192)))
                                                                                 (f7195
                                                                                  x7407
                                                                                  x7406))))
                                                                       (number?/c
                                                                        j7193
                                                                        k7194
                                                                        x7405))))
                                                             g7404))))
                                                 g7403))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7402 (orig-+ a b)))
                                                 g7402))))
                                           (-
                                            ((lambda (j7198 k7199 f7200)
                                               (letrec ((g7409
                                                         (lambda (g7196 g7197)
                                                           (letrec ((g7410
                                                                     (letrec ((x7411
                                                                               (letrec ((x7413
                                                                                         (number?/c
                                                                                          j7198
                                                                                          k7199
                                                                                          g7196))
                                                                                        (x7412
                                                                                         (number?/c
                                                                                          j7198
                                                                                          k7199
                                                                                          g7197)))
                                                                                 (f7200
                                                                                  x7413
                                                                                  x7412))))
                                                                       (number?/c
                                                                        j7198
                                                                        k7199
                                                                        x7411))))
                                                             g7410))))
                                                 g7409))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7408 (orig-- a b)))
                                                 g7408))))
                                           (*
                                            ((lambda (j7203 k7204 f7205)
                                               (letrec ((g7415
                                                         (lambda (g7201 g7202)
                                                           (letrec ((g7416
                                                                     (letrec ((x7417
                                                                               (letrec ((x7419
                                                                                         (number?/c
                                                                                          j7203
                                                                                          k7204
                                                                                          g7201))
                                                                                        (x7418
                                                                                         (number?/c
                                                                                          j7203
                                                                                          k7204
                                                                                          g7202)))
                                                                                 (f7205
                                                                                  x7419
                                                                                  x7418))))
                                                                       (number?/c
                                                                        j7203
                                                                        k7204
                                                                        x7417))))
                                                             g7416))))
                                                 g7415))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7414 (orig-* a b)))
                                                 g7414))))
                                           (/
                                            ((lambda (j7208 k7209 f7210)
                                               (letrec ((g7421
                                                         (lambda (g7206 g7207)
                                                           (letrec ((g7422
                                                                     (letrec ((x7423
                                                                               (letrec ((x7425
                                                                                         (number?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7206))
                                                                                        (x7424
                                                                                         (number?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7207)))
                                                                                 (f7210
                                                                                  x7425
                                                                                  x7424))))
                                                                       (number?/c
                                                                        j7208
                                                                        k7209
                                                                        x7423))))
                                                             g7422))))
                                                 g7421))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7420 (orig-/ a b)))
                                                 g7420))))
                                           (car
                                            ((lambda (j7212 k7213 f7214)
                                               (letrec ((g7427
                                                         (lambda (g7211)
                                                           (letrec ((g7428
                                                                     (letrec ((x7429
                                                                               (letrec ((x7430
                                                                                         (pair?/c
                                                                                          j7212
                                                                                          k7213
                                                                                          g7211)))
                                                                                 (f7214
                                                                                  x7430))))
                                                                       (any/c
                                                                        j7212
                                                                        k7213
                                                                        x7429))))
                                                             g7428))))
                                                 g7427))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7426 (orig-car p)))
                                                 g7426))))
                                           (cdr
                                            ((lambda (j7216 k7217 f7218)
                                               (letrec ((g7432
                                                         (lambda (g7215)
                                                           (letrec ((g7433
                                                                     (letrec ((x7434
                                                                               (letrec ((x7435
                                                                                         (pair?/c
                                                                                          j7216
                                                                                          k7217
                                                                                          g7215)))
                                                                                 (f7218
                                                                                  x7435))))
                                                                       (any/c
                                                                        j7216
                                                                        k7217
                                                                        x7434))))
                                                             g7433))))
                                                 g7432))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7431 (orig-cdr p)))
                                                 g7431))))
                                           (cons
                                            ((lambda (j7221 k7222 f7223)
                                               (letrec ((g7437
                                                         (lambda (g7219 g7220)
                                                           (letrec ((g7438
                                                                     (letrec ((x7439
                                                                               (letrec ((x7441
                                                                                         (any/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7219))
                                                                                        (x7440
                                                                                         (any/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7220)))
                                                                                 (f7223
                                                                                  x7441
                                                                                  x7440))))
                                                                       (pair?/c
                                                                        j7221
                                                                        k7222
                                                                        x7439))))
                                                             g7438))))
                                                 g7437))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7436 (cons a b)))
                                                 g7436))))
                                           (vector-ref
                                            ((lambda (j7225 k7226 f7227)
                                               (letrec ((g7443
                                                         (lambda (g7224)
                                                           (letrec ((g7444
                                                                     (letrec ((x7445
                                                                               (letrec ((x7446
                                                                                         (vector?/c
                                                                                          j7225
                                                                                          k7226
                                                                                          g7224)))
                                                                                 (f7227
                                                                                  x7446))))
                                                                       (integer?/c
                                                                        j7225
                                                                        k7226
                                                                        x7445))))
                                                             g7444))))
                                                 g7443))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7442
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7442))))
                                           (vector-set!
                                            ((lambda (j7230 k7231 f7232)
                                               (letrec ((g7448
                                                         (lambda (g7228 g7229)
                                                           (letrec ((g7449
                                                                     (letrec ((x7450
                                                                               (letrec ((x7452
                                                                                         (vector?/c
                                                                                          j7230
                                                                                          k7231
                                                                                          g7228))
                                                                                        (x7451
                                                                                         (integer?/c
                                                                                          j7230
                                                                                          k7231
                                                                                          g7229)))
                                                                                 (f7232
                                                                                  x7452
                                                                                  x7451))))
                                                                       (any/c
                                                                        j7230
                                                                        k7231
                                                                        x7450))))
                                                             g7449))))
                                                 g7448))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7447
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7447))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7453 #t)) g7453)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7454
                                                        (letrec ((x7455
                                                                  (letrec ((x7456
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7456))))
                                                          (cdr x7455))))
                                                g7454)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7457
                                                        (letrec ((x7460
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7460)))
                                                       (g7458
                                                        (letrec ((x7461
                                                                  (list? l)))
                                                          (assert x7461)))
                                                       (g7459
                                                        (letrec ((x-cnd7462
                                                                  (null? l)))
                                                          (if x-cnd7462
                                                            '()
                                                            (letrec ((x7465
                                                                      (letrec ((x7466
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7466)))
                                                                     (x7463
                                                                      (letrec ((x7464
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7464))))
                                                              (cons
                                                               x7465
                                                               x7463))))))
                                                g7459)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7467
                                                        (letrec ((x7468
                                                                  (car x)))
                                                          (cdr x7468))))
                                                g7467)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7469
                                                        (letrec ((x7470
                                                                  (letrec ((x7471
                                                                            (letrec ((x7472
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7472))))
                                                                    (cdr
                                                                     x7471))))
                                                          (car x7470))))
                                                g7469)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7473
                                                        (letrec ((x7474
                                                                  (letrec ((x7475
                                                                            (letrec ((x7476
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7476))))
                                                                    (car
                                                                     x7475))))
                                                          (cdr x7474))))
                                                g7473)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7477
                                                        (letrec ((x7480
                                                                  (string?
                                                                   filename)))
                                                          (assert x7480)))
                                                       (g7478
                                                        (letrec ((x7481
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7481)))
                                                       (g7479
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7482
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7483 res))
                                                            g7483))))
                                                g7479)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7484
                                                        (letrec ((x7485
                                                                  (letrec ((x7486
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7486))))
                                                          (car x7485))))
                                                g7484)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7487
                                                        (letrec ((x7488
                                                                  (letrec ((x7489
                                                                            (letrec ((x7490
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7490))))
                                                                    (car
                                                                     x7489))))
                                                          (cdr x7488))))
                                                g7487)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7491
                                                        (letrec ((x7493
                                                                  (list? l)))
                                                          (assert x7493)))
                                                       (g7492
                                                        (letrec ((x-cnd7494
                                                                  (null? l)))
                                                          (if x-cnd7494
                                                            #f
                                                            (letrec ((x-cnd7495
                                                                      (letrec ((x7496
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7496
                                                                         k))))
                                                              (if x-cnd7495
                                                                (car l)
                                                                (letrec ((x7497
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7497))))))))
                                                g7492)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7498
                                                        (letrec ((x7499
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7499))))
                                                g7498)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7500
                                                        (letrec ((x7502
                                                                  (list? l)))
                                                          (assert x7502)))
                                                       (g7501
                                                        (letrec ((x-cnd7503
                                                                  (null? l)))
                                                          (if x-cnd7503
                                                            ""
                                                            (letrec ((x7506
                                                                      (letrec ((x7507
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7507)))
                                                                     (x7504
                                                                      (letrec ((x7505
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7505))))
                                                              (string-append
                                                               x7506
                                                               x7504))))))
                                                g7501)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7508
                                                        (letrec ((x7511
                                                                  (char? c1)))
                                                          (assert x7511)))
                                                       (g7509
                                                        (letrec ((x7512
                                                                  (char? c2)))
                                                          (assert x7512)))
                                                       (g7510
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7513
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7513))))
                                                g7510)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7514
                                                        (letrec ((x7515
                                                                  (letrec ((x7516
                                                                            (letrec ((x7517
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7517))))
                                                                    (cdr
                                                                     x7516))))
                                                          (cdr x7515))))
                                                g7514)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7518
                                                        (letrec ((x7521
                                                                  (list? l)))
                                                          (assert x7521)))
                                                       (g7519
                                                        (letrec ((x7522
                                                                  (numer?)))
                                                          (assert x7522)))
                                                       (g7520
                                                        (letrec ((x-cnd7523
                                                                  (zero? k)))
                                                          (if x-cnd7523
                                                            x
                                                            (letrec ((x7525
                                                                      (cdr x))
                                                                     (x7524
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7525
                                                               x7524))))))
                                                g7520)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7526 '())) g7526)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7527
                                                        (letrec ((x-cnd7528
                                                                  (letrec ((x7529
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7529))))
                                                          (if x-cnd7528
                                                            (letrec ((x7530
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7530))
                                                            #f))))
                                                g7527)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7531
                                                        (letrec ((x7533
                                                                  (number? x)))
                                                          (assert x7533)))
                                                       (g7532
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7534
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7535
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7535)))))
                                                            g7534))))
                                                g7532)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7536
                                                        (letrec ((val7146
                                                                  (letrec ((x7537
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7537
                                                                     9))))
                                                          (letrec ((g7538
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7539
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7539
                                                                                   10))))
                                                                        (letrec ((g7540
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7541
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7541
                                                                                       32)))))
                                                                          g7540)))))
                                                            g7538))))
                                                g7536)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7542
                                                        (letrec ((x7543
                                                                  (letrec ((x7544
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7544))))
                                                          (cdr x7543))))
                                                g7542)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7545
                                                        (letrec ((x7547
                                                                  (number? x)))
                                                          (assert x7547)))
                                                       (g7546 (> x 0)))
                                                g7546)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7548 #f)) g7548)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7549
                                                        (letrec ((x7550
                                                                  (cdr x)))
                                                          (cdr x7550))))
                                                g7549)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7551
                                                        (letrec ((x7553
                                                                  (number? x)))
                                                          (assert x7553)))
                                                       (g7552
                                                        (letrec ((x-cnd7554
                                                                  (< x 0)))
                                                          (if x-cnd7554
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7552)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7555
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7556
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7558
                                                                                          (null?
                                                                                           a))
                                                                                         (x7557
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7558
                                                                                       x7557))))
                                                                        (letrec ((g7559
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7562
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7561
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7560
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7562
                                                                                                     x7561
                                                                                                     x7560))))
                                                                                      (letrec ((g7563
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7571
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7570
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7567
                                                                                                                      (letrec ((x7569
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7568
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7569
                                                                                                                         x7568)))
                                                                                                                     (x7564
                                                                                                                      (letrec ((x7566
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7565
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7566
                                                                                                                         x7565))))
                                                                                                              (and x7571
                                                                                                                   x7570
                                                                                                                   x7567
                                                                                                                   x7564))))
                                                                                                    (letrec ((g7572
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7591
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7590
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7573
                                                                                                                          (letrec ((x7587
                                                                                                                                    (letrec ((x7588
                                                                                                                                              (letrec ((x7589
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7589))))
                                                                                                                                      (x7588)))
                                                                                                                                   (x7574
                                                                                                                                    (letrec ((x7585
                                                                                                                                              (letrec ((x7586
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7586
                                                                                                                                                 n)))
                                                                                                                                             (x7575
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7576
                                                                                                                                                                    (letrec ((x7583
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7577
                                                                                                                                                                              (letrec ((x7580
                                                                                                                                                                                        (letrec ((x7582
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7581
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7582
                                                                                                                                                                                           x7581)))
                                                                                                                                                                                       (x7578
                                                                                                                                                                                        (letrec ((x7579
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7579))))
                                                                                                                                                                                (and x7580
                                                                                                                                                                                     x7578))))
                                                                                                                                                                      (or x7583
                                                                                                                                                                          x7577))))
                                                                                                                                                            g7576))))
                                                                                                                                                (letrec ((g7584
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7584))))
                                                                                                                                      (and x7585
                                                                                                                                           x7575))))
                                                                                                                            (let x7587 x7574))))
                                                                                                                  (and x7591
                                                                                                                       x7590
                                                                                                                       x7573)))))
                                                                                                      g7572)))))
                                                                                        g7563)))))
                                                                          g7559)))))
                                                            g7556))))
                                                g7555)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7592
                                                        (letrec ((x7593
                                                                  (letrec ((x7594
                                                                            (letrec ((x7595
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7595))))
                                                                    (car
                                                                     x7594))))
                                                          (cdr x7593))))
                                                g7592)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7596
                                                        (letrec ((x7597
                                                                  (letrec ((x7598
                                                                            (letrec ((x7599
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7599))))
                                                                    (car
                                                                     x7598))))
                                                          (car x7597))))
                                                g7596)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7600 (eq? x y)))
                                                g7600)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7601
                                                        (letrec ((x7603
                                                                  (number? x)))
                                                          (assert x7603)))
                                                       (g7602
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7604
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7605
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7605)))))
                                                            g7604))))
                                                g7602)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7606
                                                        (letrec ((x7609
                                                                  (string?
                                                                   filename)))
                                                          (assert x7609)))
                                                       (g7607
                                                        (letrec ((x7610
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7610)))
                                                       (g7608
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7611
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7612 res))
                                                            g7612))))
                                                g7608)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7613 (cons x '())))
                                                g7613)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7614
                                                        (letrec ((x7617
                                                                  (char? c1)))
                                                          (assert x7617)))
                                                       (g7615
                                                        (letrec ((x7618
                                                                  (char? c2)))
                                                          (assert x7618)))
                                                       (g7616
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7619
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7619))))
                                                g7616)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7620
                                                        (letrec ((x7621
                                                                  (letrec ((x7622
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7622))))
                                                          (cdr x7621))))
                                                g7620)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7623
                                                        (letrec ((x7624
                                                                  (letrec ((x7625
                                                                            (letrec ((x7626
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7626))))
                                                                    (car
                                                                     x7625))))
                                                          (cdr x7624))))
                                                g7623)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7627
                                                        (letrec ((x7628
                                                                  (letrec ((x7629
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7629))))
                                                          (car x7628))))
                                                g7627)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7630
                                                        (letrec ((x7631
                                                                  (letrec ((x7632
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7632))))
                                                          (car x7631))))
                                                g7630)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7633
                                                        (letrec ((x7636
                                                                  (char? c1)))
                                                          (assert x7636)))
                                                       (g7634
                                                        (letrec ((x7637
                                                                  (char? c2)))
                                                          (assert x7637)))
                                                       (g7635
                                                        (letrec ((x7638
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7638))))
                                                g7635)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7639
                                                        (letrec ((x7640
                                                                  (letrec ((x7641
                                                                            (letrec ((x7642
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7642))))
                                                                    (car
                                                                     x7641))))
                                                          (car x7640))))
                                                g7639)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7643
                                                        (letrec ((x7645
                                                                  (number? x)))
                                                          (assert x7645)))
                                                       (g7644 (< x 0)))
                                                g7644)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7646 (memq e l)))
                                                g7646)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7647
                                                        (letrec ((x7648
                                                                  (letrec ((x7649
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7649))))
                                                          (car x7648))))
                                                g7647)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7650 '())) g7650)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7651
                                                        (letrec ((x7653
                                                                  (list? l)))
                                                          (assert x7653)))
                                                       (g7652
                                                        (letrec ((x-cnd7654
                                                                  (null? l)))
                                                          (if x-cnd7654
                                                            '()
                                                            (letrec ((x7657
                                                                      (letrec ((x7658
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7658)))
                                                                     (x7655
                                                                      (letrec ((x7656
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7656))))
                                                              (append
                                                               x7657
                                                               x7655))))))
                                                g7652)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7659
                                                        (letrec ((x7660
                                                                  (letrec ((x7661
                                                                            (letrec ((x7662
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7662))))
                                                                    (car
                                                                     x7661))))
                                                          (car x7660))))
                                                g7659)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7663
                                                        (letrec ((x7664
                                                                  (letrec ((x7665
                                                                            (letrec ((x7666
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7666))))
                                                                    (cdr
                                                                     x7665))))
                                                          (cdr x7664))))
                                                g7663)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7667
                                                        (letrec ((x7669
                                                                  (number? x)))
                                                          (assert x7669)))
                                                       (g7668
                                                        (letrec ((x7670
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7670))))
                                                g7668)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7671
                                                        (letrec ((x7672
                                                                  (letrec ((x7673
                                                                            (letrec ((x7674
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7674))))
                                                                    (car
                                                                     x7673))))
                                                          (car x7672))))
                                                g7671)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7675
                                                        (letrec ((x7678
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7678)))
                                                       (g7676
                                                        (letrec ((x7679
                                                                  (list?
                                                                   args)))
                                                          (assert x7679)))
                                                       (g7677
                                                        (if cnd
                                                          (letrec ((g7680
                                                                    (proc)))
                                                            g7680)
                                                          (if cnd
                                                            (letrec ((g7681
                                                                      (letrec ((x7682
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7682))))
                                                              g7681)
                                                            (if cnd
                                                              (letrec ((g7683
                                                                        (letrec ((x7685
                                                                                  (car
                                                                                   args))
                                                                                 (x7684
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7685
                                                                           x7684))))
                                                                g7683)
                                                              (if cnd
                                                                (letrec ((g7686
                                                                          (letrec ((x7689
                                                                                    (car
                                                                                     args))
                                                                                   (x7688
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7687
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7689
                                                                             x7688
                                                                             x7687))))
                                                                  g7686)
                                                                (if cnd
                                                                  (letrec ((g7690
                                                                            (letrec ((x7694
                                                                                      (car
                                                                                       args))
                                                                                     (x7693
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7692
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7691
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7694
                                                                               x7693
                                                                               x7692
                                                                               x7691))))
                                                                    g7690)
                                                                  (if cnd
                                                                    (letrec ((g7695
                                                                              (letrec ((x7701
                                                                                        (car
                                                                                         args))
                                                                                       (x7700
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7699
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7698
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7696
                                                                                        (letrec ((x7697
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7697))))
                                                                                (proc
                                                                                 x7701
                                                                                 x7700
                                                                                 x7699
                                                                                 x7698
                                                                                 x7696))))
                                                                      g7695)
                                                                    (if cnd
                                                                      (letrec ((g7702
                                                                                (letrec ((x7710
                                                                                          (car
                                                                                           args))
                                                                                         (x7709
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7708
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7707
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7705
                                                                                          (letrec ((x7706
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7706)))
                                                                                         (x7703
                                                                                          (letrec ((x7704
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7704))))
                                                                                  (proc
                                                                                   x7710
                                                                                   x7709
                                                                                   x7708
                                                                                   x7707
                                                                                   x7705
                                                                                   x7703))))
                                                                        g7702)
                                                                      (if cnd
                                                                        (letrec ((g7711
                                                                                  (letrec ((x7721
                                                                                            (car
                                                                                             args))
                                                                                           (x7720
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7719
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7718
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7716
                                                                                            (letrec ((x7717
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7717)))
                                                                                           (x7714
                                                                                            (letrec ((x7715
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7715)))
                                                                                           (x7712
                                                                                            (letrec ((x7713
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7713))))
                                                                                    (proc
                                                                                     x7721
                                                                                     x7720
                                                                                     x7719
                                                                                     x7718
                                                                                     x7716
                                                                                     x7714
                                                                                     x7712))))
                                                                          g7711)
                                                                        (letrec ((g7722
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7722)))))))))))
                                                g7677)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7723
                                                        (letrec ((x7725
                                                                  (list? l)))
                                                          (assert x7725)))
                                                       (g7724
                                                        (letrec ((x-cnd7726
                                                                  (null? l)))
                                                          (if x-cnd7726
                                                            #f
                                                            (letrec ((x-cnd7727
                                                                      (letrec ((x7728
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7728
                                                                         e))))
                                                              (if x-cnd7727
                                                                l
                                                                (letrec ((x7729
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7729))))))))
                                                g7724)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7730
                                                        (letrec ((x7731
                                                                  (letrec ((x7732
                                                                            (letrec ((x7733
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7733))))
                                                                    (cdr
                                                                     x7732))))
                                                          (cdr x7731))))
                                                g7730)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7734
                                                        (letrec ((x7735
                                                                  (letrec ((x7736
                                                                            (letrec ((x7737
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7737))))
                                                                    (cdr
                                                                     x7736))))
                                                          (car x7735))))
                                                g7734)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7738 (random 42)))
                                                g7738)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7739
                                                        (letrec ((x7741
                                                                  (number? x)))
                                                          (assert x7741)))
                                                       (g7740 (= x 0)))
                                                g7740)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7742
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7743
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7743))))
                                                g7742)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7744
                                                        (letrec ((x7745
                                                                  (cdr x)))
                                                          (car x7745))))
                                                g7744)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7746
                                                        (letrec ((val7156
                                                                  (letrec ((x7749
                                                                            (pair?
                                                                             l))
                                                                           (x7747
                                                                            (letrec ((x7748
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7748))))
                                                                    (and x7749
                                                                         x7747))))
                                                          (letrec ((g7750
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7750))))
                                                g7746)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7751
                                                        (letrec ((x7752
                                                                  (letrec ((x7753
                                                                            (letrec ((x7754
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7754))))
                                                                    (cdr
                                                                     x7753))))
                                                          (cdr x7752))))
                                                g7751)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7755
                                                        (letrec ((x-cnd7756
                                                                  (letrec ((x7757
                                                                            #\0))
                                                                    (char<=?
                                                                     x7757
                                                                     c))))
                                                          (if x-cnd7756
                                                            (letrec ((x7758
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7758))
                                                            #f))))
                                                g7755)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7759
                                                        (letrec ((x7761
                                                                  (list? l)))
                                                          (assert x7761)))
                                                       (g7760
                                                        (letrec ((x-cnd7762
                                                                  (null? l)))
                                                          (if x-cnd7762
                                                            #f
                                                            (letrec ((x-cnd7763
                                                                      (letrec ((x7764
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7764
                                                                         k))))
                                                              (if x-cnd7763
                                                                (car l)
                                                                (letrec ((x7765
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7765))))))))
                                                g7760)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7766 (if x #f #t)))
                                                g7766)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7767 (append l1 l2)))
                                                g7767)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7768
                                                        (letrec ((x7770
                                                                  (list? l)))
                                                          (assert x7770)))
                                                       (g7769
                                                        (letrec ((x-cnd7771
                                                                  (null? l)))
                                                          (if x-cnd7771
                                                            #f
                                                            (letrec ((x-cnd7772
                                                                      (letrec ((x7773
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7773
                                                                         e))))
                                                              (if x-cnd7772
                                                                l
                                                                (letrec ((x7774
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7774))))))))
                                                g7769)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7775
                                                        (letrec ((x7776
                                                                  (letrec ((x7777
                                                                            (letrec ((x7778
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7778))))
                                                                    (cdr
                                                                     x7777))))
                                                          (car x7776))))
                                                g7775)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7779
                                                        (letrec ((x7781
                                                                  (list? l)))
                                                          (assert x7781)))
                                                       (g7780
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7782
                                                                              (letrec ((x-cnd7783
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7783
                                                                                  0
                                                                                  (letrec ((x7784
                                                                                            (letrec ((x7785
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7785))))
                                                                                    (+
                                                                                     1
                                                                                     x7784))))))
                                                                      g7782))))
                                                          (letrec ((g7786
                                                                    (rec l)))
                                                            g7786))))
                                                g7780)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7787
                                                        (letrec ((x7790
                                                                  (char? c1)))
                                                          (assert x7790)))
                                                       (g7788
                                                        (letrec ((x7791
                                                                  (char? c2)))
                                                          (assert x7791)))
                                                       (g7789
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7792
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7792))))
                                                g7789)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7793
                                                        (letrec ((x7794
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7794))))
                                                g7793)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7795
                                                        (letrec ((x7796
                                                                  (letrec ((x7797
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7797))))
                                                          (cdr x7796))))
                                                g7795)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7798
                                                        (letrec ((x7800
                                                                  (list? l)))
                                                          (assert x7800)))
                                                       (g7799
                                                        (letrec ((x-cnd7801
                                                                  (null? l)))
                                                          (if x-cnd7801
                                                            #f
                                                            (letrec ((x-cnd7802
                                                                      (letrec ((x7803
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7803
                                                                         k))))
                                                              (if x-cnd7802
                                                                (car l)
                                                                (letrec ((x7804
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7804))))))))
                                                g7799)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7805
                                                        (letrec ((x7806
                                                                  (car x)))
                                                          (car x7806))))
                                                g7805)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7807
                                                        (letrec ((x7810
                                                                  (char? c1)))
                                                          (assert x7810)))
                                                       (g7808
                                                        (letrec ((x7811
                                                                  (char? c2)))
                                                          (assert x7811)))
                                                       (g7809
                                                        (letrec ((x7812
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7812))))
                                                g7809)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7813
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7814
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7814))))
                                                g7813)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7815
                                                        (letrec ((x7818
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7818)))
                                                       (g7816
                                                        (letrec ((x7819
                                                                  (list? l)))
                                                          (assert x7819)))
                                                       (g7817
                                                        (letrec ((x-cnd7820
                                                                  (null? l)))
                                                          (if x-cnd7820
                                                            #t
                                                            (letrec ((x-cnd7821
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7821
                                                                (letrec ((g7822
                                                                          (letrec ((x7824
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7824)))
                                                                         (g7823
                                                                          (letrec ((x7825
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7825))))
                                                                  g7823)
                                                                '()))))))
                                                g7817)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7826
                                                        (letrec ((x7828
                                                                  (number? x)))
                                                          (assert x7828)))
                                                       (g7827
                                                        (letrec ((x-cnd7829
                                                                  (< x 0)))
                                                          (if x-cnd7829
                                                            (- 0 x)
                                                            x))))
                                                g7827)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7830
                                                        (letrec ((x7833
                                                                  (char? c1)))
                                                          (assert x7833)))
                                                       (g7831
                                                        (letrec ((x7834
                                                                  (char? c2)))
                                                          (assert x7834)))
                                                       (g7832
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7835
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7835))))
                                                g7832)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7836
                                                        (letrec ((x7837
                                                                  (letrec ((x7838
                                                                            (letrec ((x7839
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7839))))
                                                                    (cdr
                                                                     x7838))))
                                                          (car x7837))))
                                                g7836)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7840 #f)) g7840)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7841
                                                        (letrec ((x7843
                                                                  (letrec ((x7844
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7844)))
                                                                 (x7842
                                                                  (gcd m n)))
                                                          (/ x7843 x7842))))
                                                g7841)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7845
                                                        (letrec ((x7847
                                                                  (number? x)))
                                                          (assert x7847)))
                                                       (g7846
                                                        (letrec ((x7848
                                                                  (<= x y)))
                                                          (not x7848))))
                                                g7846)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7849
                                                        (letrec ((x7853
                                                                  (list? l)))
                                                          (assert x7853)))
                                                       (g7850
                                                        (letrec ((x7854
                                                                  (number?
                                                                   index)))
                                                          (assert x7854)))
                                                       (g7851
                                                        (letrec ((x7855
                                                                  (letrec ((x7856
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7856))))
                                                          (assert x7855)))
                                                       (g7852
                                                        (letrec ((x-cnd7857
                                                                  (= index 0)))
                                                          (if x-cnd7857
                                                            (car l)
                                                            (letrec ((x7859
                                                                      (cdr l))
                                                                     (x7858
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7859
                                                               x7858))))))
                                                g7852)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7860
                                                        (letrec ((x-cnd7861
                                                                  (= b 0)))
                                                          (if x-cnd7861
                                                            a
                                                            (letrec ((x7862
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7862))))))
                                                g7860)))
                                           (image
                                            (lambda ()
                                              (letrec ((g7863
                                                        (cons 'image '())))
                                                g7863)))
                                           (image?
                                            (lambda (image7335)
                                              (letrec ((g7864
                                                        (letrec ((x7865
                                                                  (car
                                                                   image7335)))
                                                          (eq? x7865 'image))))
                                                g7864)))
                                           (image/c
                                            (lambda (j7234 k7235 v7233)
                                              (letrec ((g7866
                                                        (cons image '())))
                                                g7866)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g7867 (image)))
                                                g7867)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g7868 (image)))
                                                g7868)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g7869 (image)))
                                                g7869)))
                                           (posn
                                            (lambda (x7337 y7338)
                                              (letrec ((g7870
                                                        (letrec ((x7871
                                                                  (letrec ((x7872
                                                                            (cons
                                                                             y7338
                                                                             '())))
                                                                    (cons
                                                                     x7337
                                                                     x7872))))
                                                          (cons 'posn x7871))))
                                                g7870)))
                                           (posn?
                                            (lambda (posn7336)
                                              (letrec ((g7873
                                                        (letrec ((x7874
                                                                  (car
                                                                   posn7336)))
                                                          (eq? x7874 'posn))))
                                                g7873)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g7875
                                                        (letrec ((x7876
                                                                  (cdr posn)))
                                                          (car x7876))))
                                                g7875)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g7877
                                                        (letrec ((x7878
                                                                  (letrec ((x7879
                                                                            (cdr
                                                                             posn)))
                                                                    (cdr
                                                                     x7879))))
                                                          (car x7878))))
                                                g7877)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g7880
                                                        (letrec ((x-cnd7881
                                                                  (letrec ((x7883
                                                                            (posn-x
                                                                             p1))
                                                                           (x7882
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x7883
                                                                     x7882))))
                                                          (if x-cnd7881
                                                            (letrec ((x7885
                                                                      (posn-y
                                                                       p1))
                                                                     (x7884
                                                                      (posn-y
                                                                       p2)))
                                                              (= x7885 x7884))
                                                            #f))))
                                                g7880)))
                                           (snake
                                            (lambda (dir7342 segs7343)
                                              (letrec ((g7886
                                                        (letrec ((x7887
                                                                  (letrec ((x7888
                                                                            (cons
                                                                             segs7343
                                                                             '())))
                                                                    (cons
                                                                     dir7342
                                                                     x7888))))
                                                          (cons
                                                           'snake
                                                           x7887))))
                                                g7886)))
                                           (snake?
                                            (lambda (snake7341)
                                              (letrec ((g7889
                                                        (letrec ((x7890
                                                                  (car
                                                                   snake7341)))
                                                          (eq? x7890 'snake))))
                                                g7889)))
                                           (snake-dir
                                            (lambda (snake)
                                              (letrec ((g7891
                                                        (letrec ((x7892
                                                                  (cdr snake)))
                                                          (car x7892))))
                                                g7891)))
                                           (snake-segs
                                            (lambda (snake)
                                              (letrec ((g7893
                                                        (letrec ((x7894
                                                                  (letrec ((x7895
                                                                            (cdr
                                                                             snake)))
                                                                    (cdr
                                                                     x7895))))
                                                          (car x7894))))
                                                g7893)))
                                           (world
                                            (lambda (snake7347 food7348)
                                              (letrec ((g7896
                                                        (letrec ((x7897
                                                                  (letrec ((x7898
                                                                            (cons
                                                                             food7348
                                                                             '())))
                                                                    (cons
                                                                     snake7347
                                                                     x7898))))
                                                          (cons
                                                           'world
                                                           x7897))))
                                                g7896)))
                                           (world?
                                            (lambda (world7346)
                                              (letrec ((g7899
                                                        (letrec ((x7900
                                                                  (car
                                                                   world7346)))
                                                          (eq? x7900 'world))))
                                                g7899)))
                                           (world-snake
                                            (lambda (world)
                                              (letrec ((g7901
                                                        (letrec ((x7902
                                                                  (cdr world)))
                                                          (car x7902))))
                                                g7901)))
                                           (world-food
                                            (lambda (world)
                                              (letrec ((g7903
                                                        (letrec ((x7904
                                                                  (letrec ((x7905
                                                                            (cdr
                                                                             world)))
                                                                    (cdr
                                                                     x7905))))
                                                          (car x7904))))
                                                g7903)))
                                           (DIR/C
                                            (lambda (g7240 g7241 g7242)
                                              (letrec ((g7906
                                                        (letrec ((x-cnd7907
                                                                  ((lambda (v7239)
                                                                     (letrec ((g7908
                                                                               (letrec ((x-cnd7909
                                                                                         (eq?
                                                                                          'up
                                                                                          v7239)))
                                                                                 (if x-cnd7909
                                                                                   #t
                                                                                   (letrec ((x-cnd7910
                                                                                             (eq?
                                                                                              'down
                                                                                              v7239)))
                                                                                     (if x-cnd7910
                                                                                       #t
                                                                                       (letrec ((x-cnd7911
                                                                                                 (eq?
                                                                                                  'left
                                                                                                  v7239)))
                                                                                         (if x-cnd7911
                                                                                           #t
                                                                                           (eq?
                                                                                            'right
                                                                                            v7239)))))))))
                                                                       g7908))
                                                                   g7242)))
                                                          (if x-cnd7907
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
                                                g7906)))
                                           (POSN/C
                                            (lambda (j7244 k7245 v7243)
                                              (letrec ((g7912
                                                        (letrec ((checked7246
                                                                  (letrec ((x7913
                                                                            (car
                                                                             v7243)))
                                                                    (real?/c
                                                                     'j7244
                                                                     'k7245
                                                                     x7913))))
                                                          (letrec ((g7914
                                                                    (letrec ((checked7247
                                                                              (letrec ((x7915
                                                                                        (letrec ((x7916
                                                                                                  (cdr
                                                                                                   v7243)))
                                                                                          (car
                                                                                           x7916))))
                                                                                (real?/c
                                                                                 'j7244
                                                                                 'k7245
                                                                                 x7915))))
                                                                      (letrec ((g7917
                                                                                (letrec ((x7918
                                                                                          (letrec ((x7919
                                                                                                    (cons
                                                                                                     checked7247
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7246
                                                                                             x7919))))
                                                                                  (cons
                                                                                   posn
                                                                                   x7918))))
                                                                        g7917))))
                                                            g7914))))
                                                g7912)))
                                           (SNAKE/C
                                            (lambda (j7250 k7251 v7249)
                                              (letrec ((g7920
                                                        (letrec ((checked7252
                                                                  (letrec ((x7921
                                                                            (car
                                                                             v7249)))
                                                                    (DIR/C
                                                                     'j7250
                                                                     'k7251
                                                                     x7921))))
                                                          (letrec ((g7922
                                                                    (letrec ((checked7253
                                                                              (letrec ((x7925
                                                                                        (letrec ((x7926
                                                                                                  (listof
                                                                                                   POSN/C)))
                                                                                          (and/c
                                                                                           cons?/c
                                                                                           x7926)))
                                                                                       (x7923
                                                                                        (letrec ((x7924
                                                                                                  (cdr
                                                                                                   v7249)))
                                                                                          (car
                                                                                           x7924))))
                                                                                (x7925
                                                                                 'j7250
                                                                                 'k7251
                                                                                 x7923))))
                                                                      (letrec ((g7927
                                                                                (letrec ((x7928
                                                                                          (letrec ((x7929
                                                                                                    (cons
                                                                                                     checked7253
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7252
                                                                                             x7929))))
                                                                                  (cons
                                                                                   snake
                                                                                   x7928))))
                                                                        g7927))))
                                                            g7922))))
                                                g7920)))
                                           (WORLD/C
                                            (lambda (j7256 k7257 v7255)
                                              (letrec ((g7930
                                                        (letrec ((checked7258
                                                                  (letrec ((x7931
                                                                            (car
                                                                             v7255)))
                                                                    (SNAKE/C
                                                                     'j7256
                                                                     'k7257
                                                                     x7931))))
                                                          (letrec ((g7932
                                                                    (letrec ((checked7259
                                                                              (letrec ((x7933
                                                                                        (letrec ((x7934
                                                                                                  (cdr
                                                                                                   v7255)))
                                                                                          (car
                                                                                           x7934))))
                                                                                (POSN/C
                                                                                 'j7256
                                                                                 'k7257
                                                                                 x7933))))
                                                                      (letrec ((g7935
                                                                                (letrec ((x7936
                                                                                          (letrec ((x7937
                                                                                                    (cons
                                                                                                     checked7259
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7258
                                                                                             x7937))))
                                                                                  (cons
                                                                                   world
                                                                                   x7936))))
                                                                        g7935))))
                                                            g7932))))
                                                g7930)))
                                           (GRID-SIZE 30)
                                           (BOARD-HEIGHT 20)
                                           (BOARD-WIDTH 30)
                                           (BOARD-HEIGHT-PIXELS
                                            (* GRID-SIZE BOARD-HEIGHT))
                                           (BOARD-WIDTH-PIXELS
                                            (* GRID-SIZE BOARD-WIDTH))
                                           (BACKGROUND
                                            (empty-scene
                                             BOARD-WIDTH-PIXELS
                                             BOARD-HEIGHT-PIXELS))
                                           (SEGMENT-RADIUS (/ GRID-SIZE 2))
                                           (SEGMENT-IMAGE
                                            (circle
                                             SEGMENT-RADIUS
                                             "solid"
                                             "red"))
                                           (FOOD-RADIUS SEGMENT-RADIUS)
                                           (FOOD-IMAGE
                                            (circle
                                             FOOD-RADIUS
                                             "solid"
                                             "green"))
                                           (WORLD
                                            (letrec ((x7939
                                                      (letrec ((x7940
                                                                (letrec ((x7941
                                                                          (posn
                                                                           5
                                                                           3)))
                                                                  (cons
                                                                   x7941
                                                                   empty))))
                                                        (snake 'right x7940)))
                                                     (x7938 (posn 8 12)))
                                              (world x7939 x7938)))
                                           (snake-wall-collide?
                                            (lambda (snk)
                                              (letrec ((g7942
                                                        (letrec ((x7943
                                                                  (letrec ((x7944
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x7944))))
                                                          (head-collide?
                                                           x7943))))
                                                g7942)))
                                           (head-collide?
                                            (lambda (p)
                                              (letrec ((g7945
                                                        (letrec ((val7160
                                                                  (letrec ((x7946
                                                                            (posn-x
                                                                             p)))
                                                                    (<=
                                                                     x7946
                                                                     0))))
                                                          (letrec ((g7947
                                                                    (if val7160
                                                                      val7160
                                                                      (letrec ((val7161
                                                                                (letrec ((x7948
                                                                                          (posn-x
                                                                                           p)))
                                                                                  (>=
                                                                                   x7948
                                                                                   BOARD-WIDTH))))
                                                                        (letrec ((g7949
                                                                                  (if val7161
                                                                                    val7161
                                                                                    (letrec ((val7162
                                                                                              (letrec ((x7950
                                                                                                        (posn-y
                                                                                                         p)))
                                                                                                (<=
                                                                                                 x7950
                                                                                                 0))))
                                                                                      (letrec ((g7951
                                                                                                (if val7162
                                                                                                  val7162
                                                                                                  (letrec ((x7952
                                                                                                            (posn-y
                                                                                                             p)))
                                                                                                    (>=
                                                                                                     x7952
                                                                                                     BOARD-HEIGHT)))))
                                                                                        g7951)))))
                                                                          g7949)))))
                                                            g7947))))
                                                g7945)))
                                           (snake-self-collide?
                                            (lambda (snk)
                                              (letrec ((g7953
                                                        (letrec ((x7956
                                                                  (letrec ((x7957
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x7957)))
                                                                 (x7954
                                                                  (letrec ((x7955
                                                                            (snake-segs
                                                                             snk)))
                                                                    (cdr
                                                                     x7955))))
                                                          (segs-self-collide?
                                                           x7956
                                                           x7954))))
                                                g7953)))
                                           (segs-self-collide?
                                            (lambda (h segs)
                                              (letrec ((g7958
                                                        (if cnd
                                                          (letrec ((g7959 #f))
                                                            g7959)
                                                          (letrec ((g7960
                                                                    (letrec ((x7963
                                                                              (letrec ((x7964
                                                                                        (car
                                                                                         segs)))
                                                                                (posn=?
                                                                                 x7964
                                                                                 h)))
                                                                             (x7961
                                                                              (letrec ((x7962
                                                                                        (cdr
                                                                                         segs)))
                                                                                (segs-self-collide?
                                                                                 h
                                                                                 x7962))))
                                                                      (or x7963
                                                                          x7961))))
                                                            g7960))))
                                                g7958)))
                                           (cut-tail
                                            (lambda (segs)
                                              (letrec ((g7965
                                                        (letrec ((r
                                                                  (cdr segs)))
                                                          (letrec ((g7966
                                                                    (if cnd
                                                                      (letrec ((g7967
                                                                                empty))
                                                                        g7967)
                                                                      (letrec ((g7968
                                                                                (letrec ((x7970
                                                                                          (car
                                                                                           segs))
                                                                                         (x7969
                                                                                          (cut-tail
                                                                                           r)))
                                                                                  (cons
                                                                                   x7970
                                                                                   x7969))))
                                                                        g7968))))
                                                            g7966))))
                                                g7965)))
                                           (next-head
                                            (lambda (seg dir)
                                              (letrec ((g7971
                                                        (if cnd
                                                          (letrec ((g7972
                                                                    (letrec ((x7974
                                                                              (letrec ((x7975
                                                                                        (posn-x
                                                                                         seg)))
                                                                                (add1
                                                                                 x7975)))
                                                                             (x7973
                                                                              (posn-y
                                                                               seg)))
                                                                      (posn
                                                                       x7974
                                                                       x7973))))
                                                            g7972)
                                                          (if cnd
                                                            (letrec ((g7976
                                                                      (letrec ((x7978
                                                                                (letrec ((x7979
                                                                                          (posn-x
                                                                                           seg)))
                                                                                  (sub1
                                                                                   x7979)))
                                                                               (x7977
                                                                                (posn-y
                                                                                 seg)))
                                                                        (posn
                                                                         x7978
                                                                         x7977))))
                                                              g7976)
                                                            (if cnd
                                                              (letrec ((g7980
                                                                        (letrec ((x7983
                                                                                  (posn-x
                                                                                   seg))
                                                                                 (x7981
                                                                                  (letrec ((x7982
                                                                                            (posn-y
                                                                                             seg)))
                                                                                    (sub1
                                                                                     x7982))))
                                                                          (posn
                                                                           x7983
                                                                           x7981))))
                                                                g7980)
                                                              (letrec ((g7984
                                                                        (letrec ((x7987
                                                                                  (posn-x
                                                                                   seg))
                                                                                 (x7985
                                                                                  (letrec ((x7986
                                                                                            (posn-y
                                                                                             seg)))
                                                                                    (add1
                                                                                     x7986))))
                                                                          (posn
                                                                           x7987
                                                                           x7985))))
                                                                g7984))))))
                                                g7971)))
                                           (snake-slither
                                            (lambda (snk)
                                              (letrec ((g7988
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g7989
                                                                    (letrec ((x7990
                                                                              (letrec ((x7993
                                                                                        (letrec ((x7994
                                                                                                  (letrec ((x7995
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x7995))))
                                                                                          (next-head
                                                                                           x7994
                                                                                           d)))
                                                                                       (x7991
                                                                                        (letrec ((x7992
                                                                                                  (snake-segs
                                                                                                   snk)))
                                                                                          (cut-tail
                                                                                           x7992))))
                                                                                (cons
                                                                                 x7993
                                                                                 x7991))))
                                                                      (snake
                                                                       d
                                                                       x7990))))
                                                            g7989))))
                                                g7988)))
                                           (snake-grow
                                            (lambda (snk)
                                              (letrec ((g7996
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g7997
                                                                    (letrec ((x7998
                                                                              (letrec ((x8000
                                                                                        (letrec ((x8001
                                                                                                  (letrec ((x8002
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8002))))
                                                                                          (next-head
                                                                                           x8001
                                                                                           d)))
                                                                                       (x7999
                                                                                        (snake-segs
                                                                                         snk)))
                                                                                (cons
                                                                                 x8000
                                                                                 x7999))))
                                                                      (snake
                                                                       d
                                                                       x7998))))
                                                            g7997))))
                                                g7996)))
                                           (world->world
                                            (lambda (w)
                                              (letrec ((g8003
                                                        (if cnd
                                                          (letrec ((g8004
                                                                    (snake-eat
                                                                     w)))
                                                            g8004)
                                                          (letrec ((g8005
                                                                    (letrec ((x8007
                                                                              (letrec ((x8008
                                                                                        (world-snake
                                                                                         w)))
                                                                                (snake-slither
                                                                                 x8008)))
                                                                             (x8006
                                                                              (world-food
                                                                               w)))
                                                                      (world
                                                                       x8007
                                                                       x8006))))
                                                            g8005))))
                                                g8003)))
                                           (eating?
                                            (lambda (w)
                                              (letrec ((g8009
                                                        (letrec ((x8013
                                                                  (world-food
                                                                   w))
                                                                 (x8010
                                                                  (letrec ((x8011
                                                                            (letrec ((x8012
                                                                                      (world-snake
                                                                                       w)))
                                                                              (snake-segs
                                                                               x8012))))
                                                                    (car
                                                                     x8011))))
                                                          (posn=?
                                                           x8013
                                                           x8010))))
                                                g8009)))
                                           (snake-change-direction
                                            (lambda (snk dir)
                                              (letrec ((g8014
                                                        (letrec ((x8015
                                                                  (snake-segs
                                                                   snk)))
                                                          (snake dir x8015))))
                                                g8014)))
                                           (world-change-dir
                                            (lambda (w dir)
                                              (letrec ((g8016
                                                        (letrec ((x8018
                                                                  (letrec ((x8019
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-change-direction
                                                                     x8019
                                                                     dir)))
                                                                 (x8017
                                                                  (world-food
                                                                   w)))
                                                          (world
                                                           x8018
                                                           x8017))))
                                                g8016)))
                                           (snake-eat
                                            (lambda (w)
                                              (letrec ((g8020
                                                        (letrec ((x8024
                                                                  (letrec ((x8025
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-grow
                                                                     x8025)))
                                                                 (x8021
                                                                  (letrec ((x8023
                                                                            (-
                                                                             BOARD-WIDTH
                                                                             1))
                                                                           (x8022
                                                                            (-
                                                                             BOARD-HEIGHT
                                                                             1)))
                                                                    (posn
                                                                     x8023
                                                                     x8022))))
                                                          (world
                                                           x8024
                                                           x8021))))
                                                g8020)))
                                           (handle-key
                                            (lambda (w ke)
                                              (letrec ((g8026
                                                        (if cnd
                                                          (letrec ((g8027
                                                                    (world-change-dir
                                                                     w
                                                                     'up)))
                                                            g8027)
                                                          (if cnd
                                                            (letrec ((g8028
                                                                      (world-change-dir
                                                                       w
                                                                       'down)))
                                                              g8028)
                                                            (if cnd
                                                              (letrec ((g8029
                                                                        (world-change-dir
                                                                         w
                                                                         'left)))
                                                                g8029)
                                                              (if cnd
                                                                (letrec ((g8030
                                                                          (world-change-dir
                                                                           w
                                                                           'right)))
                                                                  g8030)
                                                                (letrec ((g8031
                                                                          w))
                                                                  g8031)))))))
                                                g8026)))
                                           (game-over?
                                            (lambda (w)
                                              (letrec ((g8032
                                                        (letrec ((val7163
                                                                  (letrec ((x8033
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-wall-collide?
                                                                     x8033))))
                                                          (letrec ((g8034
                                                                    (if val7163
                                                                      val7163
                                                                      (letrec ((x8035
                                                                                (world-snake
                                                                                 w)))
                                                                        (snake-self-collide?
                                                                         x8035)))))
                                                            g8034))))
                                                g8032)))
                                           (world->scene
                                            (lambda (w)
                                              (letrec ((g8036
                                                        (letrec ((x8039
                                                                  (world-snake
                                                                   w))
                                                                 (x8037
                                                                  (letrec ((x8038
                                                                            (world-food
                                                                             w)))
                                                                    (food+scene
                                                                     x8038
                                                                     BACKGROUND))))
                                                          (snake+scene
                                                           x8039
                                                           x8037))))
                                                g8036)))
                                           (food+scene
                                            (lambda (f scn)
                                              (letrec ((g8040
                                                        (letrec ((x8042
                                                                  (posn-x f))
                                                                 (x8041
                                                                  (posn-y f)))
                                                          (place-image-on-grid
                                                           FOOD-IMAGE
                                                           x8042
                                                           x8041
                                                           scn))))
                                                g8040)))
                                           (place-image-on-grid
                                            (lambda (img x y scn)
                                              (letrec ((g8043
                                                        (letrec ((x8046
                                                                  (*
                                                                   GRID-SIZE
                                                                   x))
                                                                 (x8044
                                                                  (letrec ((x8045
                                                                            (*
                                                                             GRID-SIZE
                                                                             y)))
                                                                    (-
                                                                     BOARD-HEIGHT-PIXELS
                                                                     x8045))))
                                                          (place-image
                                                           img
                                                           x8046
                                                           x8044
                                                           scn))))
                                                g8043)))
                                           (snake+scene
                                            (lambda (snk scn)
                                              (letrec ((g8047
                                                        (letrec ((x8048
                                                                  (snake-segs
                                                                   snk)))
                                                          (segments+scene
                                                           x8048
                                                           scn))))
                                                g8047)))
                                           (segments+scene
                                            (lambda (segs scn)
                                              (letrec ((g8049
                                                        (if cnd
                                                          (letrec ((g8050 scn))
                                                            g8050)
                                                          (letrec ((g8051
                                                                    (letrec ((x8054
                                                                              (cdr
                                                                               segs))
                                                                             (x8052
                                                                              (letrec ((x8053
                                                                                        (car
                                                                                         segs)))
                                                                                (segment+scene
                                                                                 x8053
                                                                                 scn))))
                                                                      (segments+scene
                                                                       x8054
                                                                       x8052))))
                                                            g8051))))
                                                g8049)))
                                           (segment+scene
                                            (lambda (seg scn)
                                              (letrec ((g8055
                                                        (letrec ((x8057
                                                                  (posn-x seg))
                                                                 (x8056
                                                                  (posn-y
                                                                   seg)))
                                                          (place-image-on-grid
                                                           SEGMENT-IMAGE
                                                           x8057
                                                           x8056
                                                           scn))))
                                                g8055))))
                                    (letrec ((g8058
                                              (letrec ((x8092
                                                        ((lambda (j7263
                                                                  k7264
                                                                  f7265)
                                                           (letrec ((g8093
                                                                     (lambda (g7261
                                                                              g7262)
                                                                       (letrec ((g8094
                                                                                 (letrec ((x8095
                                                                                           (letrec ((x8097
                                                                                                     (POSN/C
                                                                                                      j7263
                                                                                                      k7264
                                                                                                      g7261))
                                                                                                    (x8096
                                                                                                     (POSN/C
                                                                                                      j7263
                                                                                                      k7264
                                                                                                      g7262)))
                                                                                             (f7265
                                                                                              x8097
                                                                                              x8096))))
                                                                                   (boolean?/c
                                                                                    j7263
                                                                                    k7264
                                                                                    x8095))))
                                                                         g8094))))
                                                             g8093))
                                                         'module
                                                         'importer
                                                         posn=?))
                                                       (x8087
                                                        (letrec ((x8088
                                                                  (letrec ((x8091
                                                                            (input))
                                                                           (x8089
                                                                            (letrec ((x8090
                                                                                      (input)))
                                                                              (cons
                                                                               x8090
                                                                               '()))))
                                                                    (cons
                                                                     x8091
                                                                     x8089))))
                                                          (cons 'posn x8088)))
                                                       (x8082
                                                        (letrec ((x8083
                                                                  (letrec ((x8086
                                                                            (input))
                                                                           (x8084
                                                                            (letrec ((x8085
                                                                                      (input)))
                                                                              (cons
                                                                               x8085
                                                                               '()))))
                                                                    (cons
                                                                     x8086
                                                                     x8084))))
                                                          (cons 'posn x8083))))
                                                (x8092 x8087 x8082)))
                                             (g8059
                                              (WORLD/C
                                               'module
                                               'importer
                                               WORLD))
                                             (g8060
                                              (image/c
                                               'module
                                               'importer
                                               BACKGROUND))
                                             (g8061
                                              (image/c
                                               'module
                                               'importer
                                               FOOD-IMAGE))
                                             (g8062
                                              (image/c
                                               'module
                                               'importer
                                               SEGMENT-IMAGE))
                                             (g8063
                                              (real?
                                               'module
                                               'importer
                                               GRID-SIZE))
                                             (g8064
                                              (real?
                                               'module
                                               'importer
                                               BOARD-HEIGHT-PIXELS))
                                             (g8065
                                              (real?
                                               'module
                                               'importer
                                               BOARD-WIDTH))
                                             (g8066
                                              (real?
                                               'module
                                               'importer
                                               BOARD-HEIGHT))
                                             (g8067
                                              (letrec ((x8103
                                                        ((lambda (j7267
                                                                  k7268
                                                                  f7269)
                                                           (letrec ((g8104
                                                                     (lambda (g7266)
                                                                       (letrec ((g8105
                                                                                 (letrec ((x8106
                                                                                           (letrec ((x8107
                                                                                                     (SNAKE/C
                                                                                                      j7267
                                                                                                      k7268
                                                                                                      g7266)))
                                                                                             (f7269
                                                                                              x8107))))
                                                                                   (boolean?/c
                                                                                    j7267
                                                                                    k7268
                                                                                    x8106))))
                                                                         g8105))))
                                                             g8104))
                                                         'module
                                                         'importer
                                                         snake-wall-collide?))
                                                       (x8098
                                                        (letrec ((x8099
                                                                  (letrec ((x8102
                                                                            (input))
                                                                           (x8100
                                                                            (letrec ((x8101
                                                                                      (input)))
                                                                              (cons
                                                                               x8101
                                                                               '()))))
                                                                    (cons
                                                                     x8102
                                                                     x8100))))
                                                          (cons
                                                           'snake
                                                           x8099))))
                                                (x8103 x8098)))
                                             (g8068
                                              (letrec ((x8113
                                                        ((lambda (j7271
                                                                  k7272
                                                                  f7273)
                                                           (letrec ((g8114
                                                                     (lambda (g7270)
                                                                       (letrec ((g8115
                                                                                 (letrec ((x8116
                                                                                           (letrec ((x8117
                                                                                                     (SNAKE/C
                                                                                                      j7271
                                                                                                      k7272
                                                                                                      g7270)))
                                                                                             (f7273
                                                                                              x8117))))
                                                                                   (boolean?/c
                                                                                    j7271
                                                                                    k7272
                                                                                    x8116))))
                                                                         g8115))))
                                                             g8114))
                                                         'module
                                                         'importer
                                                         snake-self-collide?))
                                                       (x8108
                                                        (letrec ((x8109
                                                                  (letrec ((x8112
                                                                            (input))
                                                                           (x8110
                                                                            (letrec ((x8111
                                                                                      (input)))
                                                                              (cons
                                                                               x8111
                                                                               '()))))
                                                                    (cons
                                                                     x8112
                                                                     x8110))))
                                                          (cons
                                                           'snake
                                                           x8109))))
                                                (x8113 x8108)))
                                             (g8069
                                              (letrec ((x8119
                                                        ((lambda (j7275
                                                                  k7276
                                                                  f7277)
                                                           (letrec ((g8120
                                                                     (lambda (g7274)
                                                                       (letrec ((g8121
                                                                                 (letrec ((x8126
                                                                                           (listof
                                                                                            POSN/C))
                                                                                          (x8122
                                                                                           (letrec ((x8123
                                                                                                     (letrec ((x8124
                                                                                                               (letrec ((x8125
                                                                                                                         (listof
                                                                                                                          POSN/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x8125))))
                                                                                                       (x8124
                                                                                                        j7275
                                                                                                        k7276
                                                                                                        g7274))))
                                                                                             (f7277
                                                                                              x8123))))
                                                                                   (x8126
                                                                                    j7275
                                                                                    k7276
                                                                                    x8122))))
                                                                         g8121))))
                                                             g8120))
                                                         'module
                                                         'importer
                                                         cut-tail))
                                                       (x8118 (input)))
                                                (x8119 x8118)))
                                             (g8070
                                              (letrec ((x8132
                                                        ((lambda (j7279
                                                                  k7280
                                                                  f7281)
                                                           (letrec ((g8133
                                                                     (lambda (g7278)
                                                                       (letrec ((g8134
                                                                                 (letrec ((x8135
                                                                                           (letrec ((x8136
                                                                                                     (SNAKE/C
                                                                                                      j7279
                                                                                                      k7280
                                                                                                      g7278)))
                                                                                             (f7281
                                                                                              x8136))))
                                                                                   (SNAKE/C
                                                                                    j7279
                                                                                    k7280
                                                                                    x8135))))
                                                                         g8134))))
                                                             g8133))
                                                         'module
                                                         'importer
                                                         snake-slither))
                                                       (x8127
                                                        (letrec ((x8128
                                                                  (letrec ((x8131
                                                                            (input))
                                                                           (x8129
                                                                            (letrec ((x8130
                                                                                      (input)))
                                                                              (cons
                                                                               x8130
                                                                               '()))))
                                                                    (cons
                                                                     x8131
                                                                     x8129))))
                                                          (cons
                                                           'snake
                                                           x8128))))
                                                (x8132 x8127)))
                                             (g8071
                                              (letrec ((x8142
                                                        ((lambda (j7283
                                                                  k7284
                                                                  f7285)
                                                           (letrec ((g8143
                                                                     (lambda (g7282)
                                                                       (letrec ((g8144
                                                                                 (letrec ((x8145
                                                                                           (letrec ((x8146
                                                                                                     (SNAKE/C
                                                                                                      j7283
                                                                                                      k7284
                                                                                                      g7282)))
                                                                                             (f7285
                                                                                              x8146))))
                                                                                   (SNAKE/C
                                                                                    j7283
                                                                                    k7284
                                                                                    x8145))))
                                                                         g8144))))
                                                             g8143))
                                                         'module
                                                         'importer
                                                         snake-grow))
                                                       (x8137
                                                        (letrec ((x8138
                                                                  (letrec ((x8141
                                                                            (input))
                                                                           (x8139
                                                                            (letrec ((x8140
                                                                                      (input)))
                                                                              (cons
                                                                               x8140
                                                                               '()))))
                                                                    (cons
                                                                     x8141
                                                                     x8139))))
                                                          (cons
                                                           'snake
                                                           x8138))))
                                                (x8142 x8137)))
                                             (g8072
                                              (letrec ((x8161
                                                        ((lambda (j7288
                                                                  k7289
                                                                  f7290)
                                                           (letrec ((g8162
                                                                     (lambda (g7286
                                                                              g7287)
                                                                       (letrec ((g8163
                                                                                 (letrec ((x8164
                                                                                           (letrec ((x8166
                                                                                                     (WORLD/C
                                                                                                      j7288
                                                                                                      k7289
                                                                                                      g7286))
                                                                                                    (x8165
                                                                                                     (DIR/C
                                                                                                      j7288
                                                                                                      k7289
                                                                                                      g7287)))
                                                                                             (f7290
                                                                                              x8166
                                                                                              x8165))))
                                                                                   (WORLD/C
                                                                                    j7288
                                                                                    k7289
                                                                                    x8164))))
                                                                         g8163))))
                                                             g8162))
                                                         'module
                                                         'importer
                                                         world-change-dir))
                                                       (x8148
                                                        (letrec ((x8149
                                                                  (letrec ((x8156
                                                                            (letrec ((x8157
                                                                                      (letrec ((x8160
                                                                                                (input))
                                                                                               (x8158
                                                                                                (letrec ((x8159
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8159
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8160
                                                                                         x8158))))
                                                                              (cons
                                                                               'snake
                                                                               x8157)))
                                                                           (x8150
                                                                            (letrec ((x8151
                                                                                      (letrec ((x8152
                                                                                                (letrec ((x8155
                                                                                                          (input))
                                                                                                         (x8153
                                                                                                          (letrec ((x8154
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8154
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8155
                                                                                                   x8153))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8152))))
                                                                              (cons
                                                                               x8151
                                                                               '()))))
                                                                    (cons
                                                                     x8156
                                                                     x8150))))
                                                          (cons 'world x8149)))
                                                       (x8147 (input)))
                                                (x8161 x8148 x8147)))
                                             (g8073
                                              (letrec ((x8180
                                                        ((lambda (j7292
                                                                  k7293
                                                                  f7294)
                                                           (letrec ((g8181
                                                                     (lambda (g7291)
                                                                       (letrec ((g8182
                                                                                 (letrec ((x8183
                                                                                           (letrec ((x8184
                                                                                                     (WORLD/C
                                                                                                      j7292
                                                                                                      k7293
                                                                                                      g7291)))
                                                                                             (f7294
                                                                                              x8184))))
                                                                                   (WORLD/C
                                                                                    j7292
                                                                                    k7293
                                                                                    x8183))))
                                                                         g8182))))
                                                             g8181))
                                                         'module
                                                         'importer
                                                         world->world))
                                                       (x8167
                                                        (letrec ((x8168
                                                                  (letrec ((x8175
                                                                            (letrec ((x8176
                                                                                      (letrec ((x8179
                                                                                                (input))
                                                                                               (x8177
                                                                                                (letrec ((x8178
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8178
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8179
                                                                                         x8177))))
                                                                              (cons
                                                                               'snake
                                                                               x8176)))
                                                                           (x8169
                                                                            (letrec ((x8170
                                                                                      (letrec ((x8171
                                                                                                (letrec ((x8174
                                                                                                          (input))
                                                                                                         (x8172
                                                                                                          (letrec ((x8173
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8173
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8174
                                                                                                   x8172))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8171))))
                                                                              (cons
                                                                               x8170
                                                                               '()))))
                                                                    (cons
                                                                     x8175
                                                                     x8169))))
                                                          (cons
                                                           'world
                                                           x8168))))
                                                (x8180 x8167)))
                                             (g8074
                                              (letrec ((x8199
                                                        ((lambda (j7297
                                                                  k7298
                                                                  f7299)
                                                           (letrec ((g8200
                                                                     (lambda (g7295
                                                                              g7296)
                                                                       (letrec ((g8201
                                                                                 (letrec ((x8202
                                                                                           (letrec ((x8204
                                                                                                     (WORLD/C
                                                                                                      j7297
                                                                                                      k7298
                                                                                                      g7295))
                                                                                                    (x8203
                                                                                                     (string?/c
                                                                                                      j7297
                                                                                                      k7298
                                                                                                      g7296)))
                                                                                             (f7299
                                                                                              x8204
                                                                                              x8203))))
                                                                                   (WORLD/C
                                                                                    j7297
                                                                                    k7298
                                                                                    x8202))))
                                                                         g8201))))
                                                             g8200))
                                                         'module
                                                         'importer
                                                         handle-key))
                                                       (x8186
                                                        (letrec ((x8187
                                                                  (letrec ((x8194
                                                                            (letrec ((x8195
                                                                                      (letrec ((x8198
                                                                                                (input))
                                                                                               (x8196
                                                                                                (letrec ((x8197
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8197
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8198
                                                                                         x8196))))
                                                                              (cons
                                                                               'snake
                                                                               x8195)))
                                                                           (x8188
                                                                            (letrec ((x8189
                                                                                      (letrec ((x8190
                                                                                                (letrec ((x8193
                                                                                                          (input))
                                                                                                         (x8191
                                                                                                          (letrec ((x8192
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8192
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8193
                                                                                                   x8191))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8190))))
                                                                              (cons
                                                                               x8189
                                                                               '()))))
                                                                    (cons
                                                                     x8194
                                                                     x8188))))
                                                          (cons 'world x8187)))
                                                       (x8185 (input)))
                                                (x8199 x8186 x8185)))
                                             (g8075
                                              (letrec ((x8218
                                                        ((lambda (j7301
                                                                  k7302
                                                                  f7303)
                                                           (letrec ((g8219
                                                                     (lambda (g7300)
                                                                       (letrec ((g8220
                                                                                 (letrec ((x8221
                                                                                           (letrec ((x8222
                                                                                                     (WORLD/C
                                                                                                      j7301
                                                                                                      k7302
                                                                                                      g7300)))
                                                                                             (f7303
                                                                                              x8222))))
                                                                                   (boolean?/c
                                                                                    j7301
                                                                                    k7302
                                                                                    x8221))))
                                                                         g8220))))
                                                             g8219))
                                                         'module
                                                         'importer
                                                         game-over?))
                                                       (x8205
                                                        (letrec ((x8206
                                                                  (letrec ((x8213
                                                                            (letrec ((x8214
                                                                                      (letrec ((x8217
                                                                                                (input))
                                                                                               (x8215
                                                                                                (letrec ((x8216
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8216
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8217
                                                                                         x8215))))
                                                                              (cons
                                                                               'snake
                                                                               x8214)))
                                                                           (x8207
                                                                            (letrec ((x8208
                                                                                      (letrec ((x8209
                                                                                                (letrec ((x8212
                                                                                                          (input))
                                                                                                         (x8210
                                                                                                          (letrec ((x8211
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8211
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8212
                                                                                                   x8210))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8209))))
                                                                              (cons
                                                                               x8208
                                                                               '()))))
                                                                    (cons
                                                                     x8213
                                                                     x8207))))
                                                          (cons
                                                           'world
                                                           x8206))))
                                                (x8218 x8205)))
                                             (g8076
                                              (letrec ((x8236
                                                        ((lambda (j7305
                                                                  k7306
                                                                  f7307)
                                                           (letrec ((g8237
                                                                     (lambda (g7304)
                                                                       (letrec ((g8238
                                                                                 (letrec ((x8239
                                                                                           (letrec ((x8240
                                                                                                     (WORLD/C
                                                                                                      j7305
                                                                                                      k7306
                                                                                                      g7304)))
                                                                                             (f7307
                                                                                              x8240))))
                                                                                   (image/c
                                                                                    j7305
                                                                                    k7306
                                                                                    x8239))))
                                                                         g8238))))
                                                             g8237))
                                                         'module
                                                         'importer
                                                         world->scene))
                                                       (x8223
                                                        (letrec ((x8224
                                                                  (letrec ((x8231
                                                                            (letrec ((x8232
                                                                                      (letrec ((x8235
                                                                                                (input))
                                                                                               (x8233
                                                                                                (letrec ((x8234
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8234
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8235
                                                                                         x8233))))
                                                                              (cons
                                                                               'snake
                                                                               x8232)))
                                                                           (x8225
                                                                            (letrec ((x8226
                                                                                      (letrec ((x8227
                                                                                                (letrec ((x8230
                                                                                                          (input))
                                                                                                         (x8228
                                                                                                          (letrec ((x8229
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x8229
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x8230
                                                                                                   x8228))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x8227))))
                                                                              (cons
                                                                               x8226
                                                                               '()))))
                                                                    (cons
                                                                     x8231
                                                                     x8225))))
                                                          (cons
                                                           'world
                                                           x8224))))
                                                (x8236 x8223)))
                                             (g8077
                                              (letrec ((x8247
                                                        ((lambda (j7310
                                                                  k7311
                                                                  f7312)
                                                           (letrec ((g8248
                                                                     (lambda (g7308
                                                                              g7309)
                                                                       (letrec ((g8249
                                                                                 (letrec ((x8250
                                                                                           (letrec ((x8252
                                                                                                     (POSN/C
                                                                                                      j7310
                                                                                                      k7311
                                                                                                      g7308))
                                                                                                    (x8251
                                                                                                     (image/c
                                                                                                      j7310
                                                                                                      k7311
                                                                                                      g7309)))
                                                                                             (f7312
                                                                                              x8252
                                                                                              x8251))))
                                                                                   (image/c
                                                                                    j7310
                                                                                    k7311
                                                                                    x8250))))
                                                                         g8249))))
                                                             g8248))
                                                         'module
                                                         'importer
                                                         food+scene))
                                                       (x8242
                                                        (letrec ((x8243
                                                                  (letrec ((x8246
                                                                            (input))
                                                                           (x8244
                                                                            (letrec ((x8245
                                                                                      (input)))
                                                                              (cons
                                                                               x8245
                                                                               '()))))
                                                                    (cons
                                                                     x8246
                                                                     x8244))))
                                                          (cons 'posn x8243)))
                                                       (x8241
                                                        (cons 'image '())))
                                                (x8247 x8242 x8241)))
                                             (g8078
                                              (letrec ((x8257
                                                        ((lambda (j7317
                                                                  k7318
                                                                  f7319)
                                                           (letrec ((g8258
                                                                     (lambda (g7313
                                                                              g7314
                                                                              g7315
                                                                              g7316)
                                                                       (letrec ((g8259
                                                                                 (letrec ((x8260
                                                                                           (letrec ((x8264
                                                                                                     (image/c
                                                                                                      j7317
                                                                                                      k7318
                                                                                                      g7313))
                                                                                                    (x8263
                                                                                                     (real?/c
                                                                                                      j7317
                                                                                                      k7318
                                                                                                      g7314))
                                                                                                    (x8262
                                                                                                     (real?/c
                                                                                                      j7317
                                                                                                      k7318
                                                                                                      g7315))
                                                                                                    (x8261
                                                                                                     (image/c
                                                                                                      j7317
                                                                                                      k7318
                                                                                                      g7316)))
                                                                                             (f7319
                                                                                              x8264
                                                                                              x8263
                                                                                              x8262
                                                                                              x8261))))
                                                                                   (image/c
                                                                                    j7317
                                                                                    k7318
                                                                                    x8260))))
                                                                         g8259))))
                                                             g8258))
                                                         'module
                                                         'importer
                                                         place-image-on-grid))
                                                       (x8256
                                                        (cons 'image '()))
                                                       (x8255 (input))
                                                       (x8254 (input))
                                                       (x8253
                                                        (cons 'image '())))
                                                (x8257
                                                 x8256
                                                 x8255
                                                 x8254
                                                 x8253)))
                                             (g8079
                                              (letrec ((x8271
                                                        ((lambda (j7322
                                                                  k7323
                                                                  f7324)
                                                           (letrec ((g8272
                                                                     (lambda (g7320
                                                                              g7321)
                                                                       (letrec ((g8273
                                                                                 (letrec ((x8274
                                                                                           (letrec ((x8276
                                                                                                     (SNAKE/C
                                                                                                      j7322
                                                                                                      k7323
                                                                                                      g7320))
                                                                                                    (x8275
                                                                                                     (image/c
                                                                                                      j7322
                                                                                                      k7323
                                                                                                      g7321)))
                                                                                             (f7324
                                                                                              x8276
                                                                                              x8275))))
                                                                                   (image/c
                                                                                    j7322
                                                                                    k7323
                                                                                    x8274))))
                                                                         g8273))))
                                                             g8272))
                                                         'module
                                                         'importer
                                                         snake+scene))
                                                       (x8266
                                                        (letrec ((x8267
                                                                  (letrec ((x8270
                                                                            (input))
                                                                           (x8268
                                                                            (letrec ((x8269
                                                                                      (input)))
                                                                              (cons
                                                                               x8269
                                                                               '()))))
                                                                    (cons
                                                                     x8270
                                                                     x8268))))
                                                          (cons 'snake x8267)))
                                                       (x8265
                                                        (cons 'image '())))
                                                (x8271 x8266 x8265)))
                                             (g8080
                                              (letrec ((x8279
                                                        ((lambda (j7327
                                                                  k7328
                                                                  f7329)
                                                           (letrec ((g8280
                                                                     (lambda (g7325
                                                                              g7326)
                                                                       (letrec ((g8281
                                                                                 (letrec ((x8282
                                                                                           (letrec ((x8284
                                                                                                     (letrec ((x8285
                                                                                                               (listof
                                                                                                                POSN/C)))
                                                                                                       (x8285
                                                                                                        j7327
                                                                                                        k7328
                                                                                                        g7325)))
                                                                                                    (x8283
                                                                                                     (image/c
                                                                                                      j7327
                                                                                                      k7328
                                                                                                      g7326)))
                                                                                             (f7329
                                                                                              x8284
                                                                                              x8283))))
                                                                                   (image/c
                                                                                    j7327
                                                                                    k7328
                                                                                    x8282))))
                                                                         g8281))))
                                                             g8280))
                                                         'module
                                                         'importer
                                                         segments+scene))
                                                       (x8278 (input))
                                                       (x8277
                                                        (cons 'image '())))
                                                (x8279 x8278 x8277)))
                                             (g8081
                                              (letrec ((x8292
                                                        ((lambda (j7332
                                                                  k7333
                                                                  f7334)
                                                           (letrec ((g8293
                                                                     (lambda (g7330
                                                                              g7331)
                                                                       (letrec ((g8294
                                                                                 (letrec ((x8295
                                                                                           (letrec ((x8297
                                                                                                     (POSN/C
                                                                                                      j7332
                                                                                                      k7333
                                                                                                      g7330))
                                                                                                    (x8296
                                                                                                     (image/c
                                                                                                      j7332
                                                                                                      k7333
                                                                                                      g7331)))
                                                                                             (f7334
                                                                                              x8297
                                                                                              x8296))))
                                                                                   (image/c
                                                                                    j7332
                                                                                    k7333
                                                                                    x8295))))
                                                                         g8294))))
                                                             g8293))
                                                         'module
                                                         'importer
                                                         segment+scene))
                                                       (x8287
                                                        (letrec ((x8288
                                                                  (letrec ((x8291
                                                                            (input))
                                                                           (x8289
                                                                            (letrec ((x8290
                                                                                      (input)))
                                                                              (cons
                                                                               x8290
                                                                               '()))))
                                                                    (cons
                                                                     x8291
                                                                     x8289))))
                                                          (cons 'posn x8288)))
                                                       (x8286
                                                        (cons 'image '())))
                                                (x8292 x8287 x8286))))
                                      g8081))))
                          g7364))))
              g7362)))
    g7361))
