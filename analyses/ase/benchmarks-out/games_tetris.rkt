(letrec ((any? (lambda (v) (letrec ((g7239 #t)) g7239)))
         (meta (lambda (v) (letrec ((g7240 v)) g7240)))
         (member
          (lambda (v lst)
            (letrec ((g7241
                      (letrec ((g7242
                                (letrec ((x-e7243 lst))
                                  (match
                                   x-e7243
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7244 (eq? v v1)))
                                       (if x-cnd7244 #t (member v vs)))))))))
                        g7242)))
              g7241)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7245 (lambda (v) (letrec ((g7246 v)) g7246)))) g7245)))
         (nonzero?
          (lambda (v)
            (letrec ((g7247 (letrec ((x7248 (= v 0))) (not x7248)))) g7247))))
  (letrec ((g7249
            (letrec ((g7250
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7251 '())
                                 (g7252
                                  (letrec ((real/c
                                            (lambda (g6905 g6906 g6907)
                                              (letrec ((g7253
                                                        (letrec ((x-cnd7254
                                                                  (real?
                                                                   g6907)))
                                                          (if x-cnd7254
                                                            g6907
                                                            (blame
                                                             g6905
                                                             'real?)))))
                                                g7253)))
                                           (boolean?/c
                                            (lambda (g6908 g6909 g6910)
                                              (letrec ((g7255
                                                        (letrec ((x-cnd7256
                                                                  (boolean?
                                                                   g6910)))
                                                          (if x-cnd7256
                                                            g6910
                                                            (blame
                                                             g6908
                                                             'boolean?)))))
                                                g7255)))
                                           (number?/c
                                            (lambda (g6911 g6912 g6913)
                                              (letrec ((g7257
                                                        (letrec ((x-cnd7258
                                                                  (number?
                                                                   g6913)))
                                                          (if x-cnd7258
                                                            g6913
                                                            (blame
                                                             g6911
                                                             'number?)))))
                                                g7257)))
                                           (any/c
                                            (lambda (g6914 g6915 g6916)
                                              (letrec ((g7259
                                                        (letrec ((x-cnd7260
                                                                  ((lambda (v)
                                                                     (letrec ((g7261
                                                                               #t))
                                                                       g7261))
                                                                   g6916)))
                                                          (if x-cnd7260
                                                            g6916
                                                            (blame
                                                             g6914
                                                             '(lambda (v)
                                                                #t))))))
                                                g7259)))
                                           (any?/c
                                            (lambda (g6917 g6918 g6919)
                                              (letrec ((g7262
                                                        (letrec ((x-cnd7263
                                                                  ((lambda (v)
                                                                     (letrec ((g7264
                                                                               #t))
                                                                       g7264))
                                                                   g6919)))
                                                          (if x-cnd7263
                                                            g6919
                                                            (blame
                                                             g6917
                                                             '(lambda (v)
                                                                #t))))))
                                                g7262)))
                                           (cons?/c
                                            (lambda (g6920 g6921 g6922)
                                              (letrec ((g7265
                                                        (letrec ((x-cnd7266
                                                                  (pair?
                                                                   g6922)))
                                                          (if x-cnd7266
                                                            g6922
                                                            (blame
                                                             g6920
                                                             'pair?)))))
                                                g7265)))
                                           (pair?/c
                                            (lambda (g6923 g6924 g6925)
                                              (letrec ((g7267
                                                        (letrec ((x-cnd7268
                                                                  (pair?
                                                                   g6925)))
                                                          (if x-cnd7268
                                                            g6925
                                                            (blame
                                                             g6923
                                                             'pair?)))))
                                                g7267)))
                                           (integer?/c
                                            (lambda (g6926 g6927 g6928)
                                              (letrec ((g7269
                                                        (letrec ((x-cnd7270
                                                                  (integer?
                                                                   g6928)))
                                                          (if x-cnd7270
                                                            g6928
                                                            (blame
                                                             g6926
                                                             'integer?)))))
                                                g7269)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7271
                                                        (lambda (k j v)
                                                          (letrec ((g7272
                                                                    (letrec ((x-cnd7273
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7273
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7272))))
                                                g7271)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7274
                                                        (lambda (k j v)
                                                          (letrec ((g7275
                                                                    (letrec ((x-cnd7276
                                                                              (null?
                                                                               v)))
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
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7282 #t)) g7282)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7283
                                                        (letrec ((x7284
                                                                  (= v 0)))
                                                          (not x7284))))
                                                g7283)))
                                           (nonzero?/c
                                            (lambda (g6929 g6930 g6931)
                                              (letrec ((g7285
                                                        (letrec ((x-cnd7286
                                                                  ((lambda (v)
                                                                     (letrec ((g7287
                                                                               (letrec ((x7288
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7288))))
                                                                       g7287))
                                                                   g6931)))
                                                          (if x-cnd7286
                                                            g6931
                                                            (blame
                                                             g6929
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7285)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7289 v)) g7289)))
                                           (+
                                            ((lambda (j6934 k6935 f6936)
                                               (letrec ((g7291
                                                         (lambda (g6932 g6933)
                                                           (letrec ((g7292
                                                                     (letrec ((x7293
                                                                               (letrec ((x7295
                                                                                         (number?/c
                                                                                          j6934
                                                                                          k6935
                                                                                          g6932))
                                                                                        (x7294
                                                                                         (number?/c
                                                                                          j6934
                                                                                          k6935
                                                                                          g6933)))
                                                                                 (f6936
                                                                                  x7295
                                                                                  x7294))))
                                                                       (number?/c
                                                                        j6934
                                                                        k6935
                                                                        x7293))))
                                                             g7292))))
                                                 g7291))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7290 (orig-+ a b)))
                                                 g7290))))
                                           (-
                                            ((lambda (j6939 k6940 f6941)
                                               (letrec ((g7297
                                                         (lambda (g6937 g6938)
                                                           (letrec ((g7298
                                                                     (letrec ((x7299
                                                                               (letrec ((x7301
                                                                                         (number?/c
                                                                                          j6939
                                                                                          k6940
                                                                                          g6937))
                                                                                        (x7300
                                                                                         (number?/c
                                                                                          j6939
                                                                                          k6940
                                                                                          g6938)))
                                                                                 (f6941
                                                                                  x7301
                                                                                  x7300))))
                                                                       (number?/c
                                                                        j6939
                                                                        k6940
                                                                        x7299))))
                                                             g7298))))
                                                 g7297))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7296 (orig-- a b)))
                                                 g7296))))
                                           (*
                                            ((lambda (j6944 k6945 f6946)
                                               (letrec ((g7303
                                                         (lambda (g6942 g6943)
                                                           (letrec ((g7304
                                                                     (letrec ((x7305
                                                                               (letrec ((x7307
                                                                                         (number?/c
                                                                                          j6944
                                                                                          k6945
                                                                                          g6942))
                                                                                        (x7306
                                                                                         (number?/c
                                                                                          j6944
                                                                                          k6945
                                                                                          g6943)))
                                                                                 (f6946
                                                                                  x7307
                                                                                  x7306))))
                                                                       (number?/c
                                                                        j6944
                                                                        k6945
                                                                        x7305))))
                                                             g7304))))
                                                 g7303))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7302 (orig-* a b)))
                                                 g7302))))
                                           (/
                                            ((lambda (j6949 k6950 f6951)
                                               (letrec ((g7309
                                                         (lambda (g6947 g6948)
                                                           (letrec ((g7310
                                                                     (letrec ((x7311
                                                                               (letrec ((x7313
                                                                                         (number?/c
                                                                                          j6949
                                                                                          k6950
                                                                                          g6947))
                                                                                        (x7312
                                                                                         (number?/c
                                                                                          j6949
                                                                                          k6950
                                                                                          g6948)))
                                                                                 (f6951
                                                                                  x7313
                                                                                  x7312))))
                                                                       (number?/c
                                                                        j6949
                                                                        k6950
                                                                        x7311))))
                                                             g7310))))
                                                 g7309))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7308 (orig-/ a b)))
                                                 g7308))))
                                           (car
                                            ((lambda (j6953 k6954 f6955)
                                               (letrec ((g7315
                                                         (lambda (g6952)
                                                           (letrec ((g7316
                                                                     (letrec ((x7317
                                                                               (letrec ((x7318
                                                                                         (pair?/c
                                                                                          j6953
                                                                                          k6954
                                                                                          g6952)))
                                                                                 (f6955
                                                                                  x7318))))
                                                                       (any/c
                                                                        j6953
                                                                        k6954
                                                                        x7317))))
                                                             g7316))))
                                                 g7315))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7314 (orig-car p)))
                                                 g7314))))
                                           (cdr
                                            ((lambda (j6957 k6958 f6959)
                                               (letrec ((g7320
                                                         (lambda (g6956)
                                                           (letrec ((g7321
                                                                     (letrec ((x7322
                                                                               (letrec ((x7323
                                                                                         (pair?/c
                                                                                          j6957
                                                                                          k6958
                                                                                          g6956)))
                                                                                 (f6959
                                                                                  x7323))))
                                                                       (any/c
                                                                        j6957
                                                                        k6958
                                                                        x7322))))
                                                             g7321))))
                                                 g7320))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7319 (orig-cdr p)))
                                                 g7319))))
                                           (cons
                                            ((lambda (j6962 k6963 f6964)
                                               (letrec ((g7325
                                                         (lambda (g6960 g6961)
                                                           (letrec ((g7326
                                                                     (letrec ((x7327
                                                                               (letrec ((x7329
                                                                                         (any/c
                                                                                          j6962
                                                                                          k6963
                                                                                          g6960))
                                                                                        (x7328
                                                                                         (any/c
                                                                                          j6962
                                                                                          k6963
                                                                                          g6961)))
                                                                                 (f6964
                                                                                  x7329
                                                                                  x7328))))
                                                                       (pair?/c
                                                                        j6962
                                                                        k6963
                                                                        x7327))))
                                                             g7326))))
                                                 g7325))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7324 (cons a b)))
                                                 g7324))))
                                           (vector-ref
                                            ((lambda (j6966 k6967 f6968)
                                               (letrec ((g7331
                                                         (lambda (g6965)
                                                           (letrec ((g7332
                                                                     (letrec ((x7333
                                                                               (letrec ((x7334
                                                                                         (vector?/c
                                                                                          j6966
                                                                                          k6967
                                                                                          g6965)))
                                                                                 (f6968
                                                                                  x7334))))
                                                                       (integer?/c
                                                                        j6966
                                                                        k6967
                                                                        x7333))))
                                                             g7332))))
                                                 g7331))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7330
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7330))))
                                           (vector-set!
                                            ((lambda (j6971 k6972 f6973)
                                               (letrec ((g7336
                                                         (lambda (g6969 g6970)
                                                           (letrec ((g7337
                                                                     (letrec ((x7338
                                                                               (letrec ((x7340
                                                                                         (vector?/c
                                                                                          j6971
                                                                                          k6972
                                                                                          g6969))
                                                                                        (x7339
                                                                                         (integer?/c
                                                                                          j6971
                                                                                          k6972
                                                                                          g6970)))
                                                                                 (f6973
                                                                                  x7340
                                                                                  x7339))))
                                                                       (any/c
                                                                        j6971
                                                                        k6972
                                                                        x7338))))
                                                             g7337))))
                                                 g7336))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7335
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7335))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7341 #t)) g7341)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7342
                                                        (letrec ((x7343
                                                                  (letrec ((x7344
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7344))))
                                                          (cdr x7343))))
                                                g7342)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7345
                                                        (letrec ((x7348
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7348)))
                                                       (g7346
                                                        (letrec ((x7349
                                                                  (list? l)))
                                                          (assert x7349)))
                                                       (g7347
                                                        (letrec ((x-cnd7350
                                                                  (null? l)))
                                                          (if x-cnd7350
                                                            '()
                                                            (letrec ((x7353
                                                                      (letrec ((x7354
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7354)))
                                                                     (x7351
                                                                      (letrec ((x7352
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7352))))
                                                              (cons
                                                               x7353
                                                               x7351))))))
                                                g7347)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7355
                                                        (letrec ((x7356
                                                                  (car x)))
                                                          (cdr x7356))))
                                                g7355)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7357
                                                        (letrec ((x7358
                                                                  (letrec ((x7359
                                                                            (letrec ((x7360
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7360))))
                                                                    (cdr
                                                                     x7359))))
                                                          (car x7358))))
                                                g7357)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7361
                                                        (letrec ((x7362
                                                                  (letrec ((x7363
                                                                            (letrec ((x7364
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7364))))
                                                                    (car
                                                                     x7363))))
                                                          (cdr x7362))))
                                                g7361)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7365
                                                        (letrec ((x7368
                                                                  (string?
                                                                   filename)))
                                                          (assert x7368)))
                                                       (g7366
                                                        (letrec ((x7369
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7369)))
                                                       (g7367
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7370
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7371 res))
                                                            g7371))))
                                                g7367)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7372
                                                        (letrec ((x7373
                                                                  (letrec ((x7374
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7374))))
                                                          (car x7373))))
                                                g7372)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7375
                                                        (letrec ((x7376
                                                                  (letrec ((x7377
                                                                            (letrec ((x7378
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7378))))
                                                                    (car
                                                                     x7377))))
                                                          (cdr x7376))))
                                                g7375)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7379
                                                        (letrec ((x7381
                                                                  (list? l)))
                                                          (assert x7381)))
                                                       (g7380
                                                        (letrec ((x-cnd7382
                                                                  (null? l)))
                                                          (if x-cnd7382
                                                            #f
                                                            (letrec ((x-cnd7383
                                                                      (letrec ((x7384
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7384
                                                                         k))))
                                                              (if x-cnd7383
                                                                (car l)
                                                                (letrec ((x7385
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7385))))))))
                                                g7380)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7386
                                                        (letrec ((x7387
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7387))))
                                                g7386)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7388
                                                        (letrec ((x7390
                                                                  (list? l)))
                                                          (assert x7390)))
                                                       (g7389
                                                        (letrec ((x-cnd7391
                                                                  (null? l)))
                                                          (if x-cnd7391
                                                            ""
                                                            (letrec ((x7394
                                                                      (letrec ((x7395
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7395)))
                                                                     (x7392
                                                                      (letrec ((x7393
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7393))))
                                                              (string-append
                                                               x7394
                                                               x7392))))))
                                                g7389)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7396
                                                        (letrec ((x7399
                                                                  (char? c1)))
                                                          (assert x7399)))
                                                       (g7397
                                                        (letrec ((x7400
                                                                  (char? c2)))
                                                          (assert x7400)))
                                                       (g7398
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7401
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7401))))
                                                g7398)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7402
                                                        (letrec ((x7403
                                                                  (letrec ((x7404
                                                                            (letrec ((x7405
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7405))))
                                                                    (cdr
                                                                     x7404))))
                                                          (cdr x7403))))
                                                g7402)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7406
                                                        (letrec ((x7409
                                                                  (list? l)))
                                                          (assert x7409)))
                                                       (g7407
                                                        (letrec ((x7410
                                                                  (numer?)))
                                                          (assert x7410)))
                                                       (g7408
                                                        (letrec ((x-cnd7411
                                                                  (zero? k)))
                                                          (if x-cnd7411
                                                            x
                                                            (letrec ((x7413
                                                                      (cdr x))
                                                                     (x7412
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7413
                                                               x7412))))))
                                                g7408)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7414 '())) g7414)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7415
                                                        (letrec ((x-cnd7416
                                                                  (letrec ((x7417
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7417))))
                                                          (if x-cnd7416
                                                            (letrec ((x7418
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7418))
                                                            #f))))
                                                g7415)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7419
                                                        (letrec ((x7421
                                                                  (number? x)))
                                                          (assert x7421)))
                                                       (g7420
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7422
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7423
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7423)))))
                                                            g7422))))
                                                g7420)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7424
                                                        (letrec ((val6890
                                                                  (letrec ((x7425
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7425
                                                                     9))))
                                                          (letrec ((g7426
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7427
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7427
                                                                                   10))))
                                                                        (letrec ((g7428
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7429
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7429
                                                                                       32)))))
                                                                          g7428)))))
                                                            g7426))))
                                                g7424)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7430
                                                        (letrec ((x7431
                                                                  (letrec ((x7432
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7432))))
                                                          (cdr x7431))))
                                                g7430)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7433
                                                        (letrec ((x7435
                                                                  (number? x)))
                                                          (assert x7435)))
                                                       (g7434 (> x 0)))
                                                g7434)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7436 #f)) g7436)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7437
                                                        (letrec ((x7438
                                                                  (cdr x)))
                                                          (cdr x7438))))
                                                g7437)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7439
                                                        (letrec ((x7441
                                                                  (number? x)))
                                                          (assert x7441)))
                                                       (g7440
                                                        (letrec ((x-cnd7442
                                                                  (< x 0)))
                                                          (if x-cnd7442
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7440)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7443
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7444
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7446
                                                                                          (null?
                                                                                           a))
                                                                                         (x7445
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7446
                                                                                       x7445))))
                                                                        (letrec ((g7447
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7450
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7449
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7448
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7450
                                                                                                     x7449
                                                                                                     x7448))))
                                                                                      (letrec ((g7451
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7459
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7458
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7455
                                                                                                                      (letrec ((x7457
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7456
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7457
                                                                                                                         x7456)))
                                                                                                                     (x7452
                                                                                                                      (letrec ((x7454
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7453
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7454
                                                                                                                         x7453))))
                                                                                                              (and x7459
                                                                                                                   x7458
                                                                                                                   x7455
                                                                                                                   x7452))))
                                                                                                    (letrec ((g7460
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7476
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7475
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7461
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7462
                                                                                                                                      (letrec ((x7473
                                                                                                                                                (letrec ((x7474
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7474
                                                                                                                                                   n)))
                                                                                                                                               (x7463
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7464
                                                                                                                                                                      (letrec ((x7471
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7465
                                                                                                                                                                                (letrec ((x7468
                                                                                                                                                                                          (letrec ((x7470
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7469
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7470
                                                                                                                                                                                             x7469)))
                                                                                                                                                                                         (x7466
                                                                                                                                                                                          (letrec ((x7467
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7467))))
                                                                                                                                                                                  (and x7468
                                                                                                                                                                                       x7466))))
                                                                                                                                                                        (or x7471
                                                                                                                                                                            x7465))))
                                                                                                                                                              g7464))))
                                                                                                                                                  (letrec ((g7472
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7472))))
                                                                                                                                        (and x7473
                                                                                                                                             x7463))))
                                                                                                                              g7462))))
                                                                                                                  (and x7476
                                                                                                                       x7475
                                                                                                                       x7461)))))
                                                                                                      g7460)))))
                                                                                        g7451)))))
                                                                          g7447)))))
                                                            g7444))))
                                                g7443)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7477
                                                        (letrec ((x7478
                                                                  (letrec ((x7479
                                                                            (letrec ((x7480
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7480))))
                                                                    (car
                                                                     x7479))))
                                                          (cdr x7478))))
                                                g7477)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7481
                                                        (letrec ((x7482
                                                                  (letrec ((x7483
                                                                            (letrec ((x7484
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7484))))
                                                                    (car
                                                                     x7483))))
                                                          (car x7482))))
                                                g7481)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7485 (eq? x y)))
                                                g7485)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7486
                                                        (letrec ((x7488
                                                                  (number? x)))
                                                          (assert x7488)))
                                                       (g7487
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7489
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7490
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7490)))))
                                                            g7489))))
                                                g7487)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7491
                                                        (letrec ((x7494
                                                                  (string?
                                                                   filename)))
                                                          (assert x7494)))
                                                       (g7492
                                                        (letrec ((x7495
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7495)))
                                                       (g7493
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7496
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7497 res))
                                                            g7497))))
                                                g7493)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7498 (cons x '())))
                                                g7498)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7499
                                                        (letrec ((x7502
                                                                  (char? c1)))
                                                          (assert x7502)))
                                                       (g7500
                                                        (letrec ((x7503
                                                                  (char? c2)))
                                                          (assert x7503)))
                                                       (g7501
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7504
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7504))))
                                                g7501)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7505
                                                        (letrec ((x7506
                                                                  (letrec ((x7507
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7507))))
                                                          (cdr x7506))))
                                                g7505)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7508
                                                        (letrec ((x7509
                                                                  (letrec ((x7510
                                                                            (letrec ((x7511
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7511))))
                                                                    (car
                                                                     x7510))))
                                                          (cdr x7509))))
                                                g7508)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7512
                                                        (letrec ((x7513
                                                                  (letrec ((x7514
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7514))))
                                                          (car x7513))))
                                                g7512)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7515
                                                        (letrec ((x7516
                                                                  (letrec ((x7517
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7517))))
                                                          (car x7516))))
                                                g7515)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7518
                                                        (letrec ((x7521
                                                                  (char? c1)))
                                                          (assert x7521)))
                                                       (g7519
                                                        (letrec ((x7522
                                                                  (char? c2)))
                                                          (assert x7522)))
                                                       (g7520
                                                        (letrec ((x7523
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7523))))
                                                g7520)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7524
                                                        (letrec ((x7525
                                                                  (letrec ((x7526
                                                                            (letrec ((x7527
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7527))))
                                                                    (car
                                                                     x7526))))
                                                          (car x7525))))
                                                g7524)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7528
                                                        (letrec ((x7530
                                                                  (number? x)))
                                                          (assert x7530)))
                                                       (g7529 (< x 0)))
                                                g7529)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7531 (memq e l)))
                                                g7531)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7532
                                                        (letrec ((x7533
                                                                  (letrec ((x7534
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7534))))
                                                          (car x7533))))
                                                g7532)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7535 '())) g7535)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7536
                                                        (letrec ((x7538
                                                                  (list? l)))
                                                          (assert x7538)))
                                                       (g7537
                                                        (letrec ((x-cnd7539
                                                                  (null? l)))
                                                          (if x-cnd7539
                                                            '()
                                                            (letrec ((x7542
                                                                      (letrec ((x7543
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7543)))
                                                                     (x7540
                                                                      (letrec ((x7541
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7541))))
                                                              (append
                                                               x7542
                                                               x7540))))))
                                                g7537)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7544
                                                        (letrec ((x7545
                                                                  (letrec ((x7546
                                                                            (letrec ((x7547
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7547))))
                                                                    (car
                                                                     x7546))))
                                                          (car x7545))))
                                                g7544)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7548
                                                        (letrec ((x7549
                                                                  (letrec ((x7550
                                                                            (letrec ((x7551
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7551))))
                                                                    (cdr
                                                                     x7550))))
                                                          (cdr x7549))))
                                                g7548)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7552
                                                        (letrec ((x7554
                                                                  (number? x)))
                                                          (assert x7554)))
                                                       (g7553
                                                        (letrec ((x7555
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7555))))
                                                g7553)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7556
                                                        (letrec ((x7557
                                                                  (letrec ((x7558
                                                                            (letrec ((x7559
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7559))))
                                                                    (car
                                                                     x7558))))
                                                          (car x7557))))
                                                g7556)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7560
                                                        (letrec ((x7563
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7563)))
                                                       (g7561
                                                        (letrec ((x7564
                                                                  (list?
                                                                   args)))
                                                          (assert x7564)))
                                                       (g7562
                                                        (if cnd
                                                          (letrec ((g7565
                                                                    (proc)))
                                                            g7565)
                                                          (if cnd
                                                            (letrec ((g7566
                                                                      (letrec ((x7567
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7567))))
                                                              g7566)
                                                            (if cnd
                                                              (letrec ((g7568
                                                                        (letrec ((x7570
                                                                                  (car
                                                                                   args))
                                                                                 (x7569
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7570
                                                                           x7569))))
                                                                g7568)
                                                              (if cnd
                                                                (letrec ((g7571
                                                                          (letrec ((x7574
                                                                                    (car
                                                                                     args))
                                                                                   (x7573
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7572
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7574
                                                                             x7573
                                                                             x7572))))
                                                                  g7571)
                                                                (if cnd
                                                                  (letrec ((g7575
                                                                            (letrec ((x7579
                                                                                      (car
                                                                                       args))
                                                                                     (x7578
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7577
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7576
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7579
                                                                               x7578
                                                                               x7577
                                                                               x7576))))
                                                                    g7575)
                                                                  (if cnd
                                                                    (letrec ((g7580
                                                                              (letrec ((x7586
                                                                                        (car
                                                                                         args))
                                                                                       (x7585
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7584
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7583
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7581
                                                                                        (letrec ((x7582
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7582))))
                                                                                (proc
                                                                                 x7586
                                                                                 x7585
                                                                                 x7584
                                                                                 x7583
                                                                                 x7581))))
                                                                      g7580)
                                                                    (if cnd
                                                                      (letrec ((g7587
                                                                                (letrec ((x7595
                                                                                          (car
                                                                                           args))
                                                                                         (x7594
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7593
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7592
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7590
                                                                                          (letrec ((x7591
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7591)))
                                                                                         (x7588
                                                                                          (letrec ((x7589
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7589))))
                                                                                  (proc
                                                                                   x7595
                                                                                   x7594
                                                                                   x7593
                                                                                   x7592
                                                                                   x7590
                                                                                   x7588))))
                                                                        g7587)
                                                                      (if cnd
                                                                        (letrec ((g7596
                                                                                  (letrec ((x7606
                                                                                            (car
                                                                                             args))
                                                                                           (x7605
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7604
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7603
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7601
                                                                                            (letrec ((x7602
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7602)))
                                                                                           (x7599
                                                                                            (letrec ((x7600
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7600)))
                                                                                           (x7597
                                                                                            (letrec ((x7598
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7598))))
                                                                                    (proc
                                                                                     x7606
                                                                                     x7605
                                                                                     x7604
                                                                                     x7603
                                                                                     x7601
                                                                                     x7599
                                                                                     x7597))))
                                                                          g7596)
                                                                        (letrec ((g7607
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7607)))))))))))
                                                g7562)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7608
                                                        (letrec ((x7610
                                                                  (list? l)))
                                                          (assert x7610)))
                                                       (g7609
                                                        (letrec ((x-cnd7611
                                                                  (null? l)))
                                                          (if x-cnd7611
                                                            #f
                                                            (letrec ((x-cnd7612
                                                                      (letrec ((x7613
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7613
                                                                         e))))
                                                              (if x-cnd7612
                                                                l
                                                                (letrec ((x7614
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7614))))))))
                                                g7609)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7615
                                                        (letrec ((x7616
                                                                  (letrec ((x7617
                                                                            (letrec ((x7618
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7618))))
                                                                    (cdr
                                                                     x7617))))
                                                          (cdr x7616))))
                                                g7615)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7619
                                                        (letrec ((x7620
                                                                  (letrec ((x7621
                                                                            (letrec ((x7622
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7622))))
                                                                    (cdr
                                                                     x7621))))
                                                          (car x7620))))
                                                g7619)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7623 (random 42)))
                                                g7623)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7624
                                                        (letrec ((x7626
                                                                  (number? x)))
                                                          (assert x7626)))
                                                       (g7625 (= x 0)))
                                                g7625)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7627
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7628
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7628))))
                                                g7627)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7629
                                                        (letrec ((x7630
                                                                  (cdr x)))
                                                          (car x7630))))
                                                g7629)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7631
                                                        (letrec ((val6900
                                                                  (letrec ((x7634
                                                                            (pair?
                                                                             l))
                                                                           (x7632
                                                                            (letrec ((x7633
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7633))))
                                                                    (and x7634
                                                                         x7632))))
                                                          (letrec ((g7635
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7635))))
                                                g7631)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7636
                                                        (letrec ((x7637
                                                                  (letrec ((x7638
                                                                            (letrec ((x7639
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7639))))
                                                                    (cdr
                                                                     x7638))))
                                                          (cdr x7637))))
                                                g7636)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7640
                                                        (letrec ((x-cnd7641
                                                                  (letrec ((x7642
                                                                            #\0))
                                                                    (char<=?
                                                                     x7642
                                                                     c))))
                                                          (if x-cnd7641
                                                            (letrec ((x7643
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7643))
                                                            #f))))
                                                g7640)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7644
                                                        (letrec ((x7646
                                                                  (list? l)))
                                                          (assert x7646)))
                                                       (g7645
                                                        (letrec ((x-cnd7647
                                                                  (null? l)))
                                                          (if x-cnd7647
                                                            #f
                                                            (letrec ((x-cnd7648
                                                                      (letrec ((x7649
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7649
                                                                         k))))
                                                              (if x-cnd7648
                                                                (car l)
                                                                (letrec ((x7650
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7650))))))))
                                                g7645)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7651 (if x #f #t)))
                                                g7651)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7652 (append l1 l2)))
                                                g7652)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7653
                                                        (letrec ((x7655
                                                                  (list? l)))
                                                          (assert x7655)))
                                                       (g7654
                                                        (letrec ((x-cnd7656
                                                                  (null? l)))
                                                          (if x-cnd7656
                                                            #f
                                                            (letrec ((x-cnd7657
                                                                      (letrec ((x7658
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7658
                                                                         e))))
                                                              (if x-cnd7657
                                                                l
                                                                (letrec ((x7659
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7659))))))))
                                                g7654)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7660
                                                        (letrec ((x7661
                                                                  (letrec ((x7662
                                                                            (letrec ((x7663
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7663))))
                                                                    (cdr
                                                                     x7662))))
                                                          (car x7661))))
                                                g7660)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7664
                                                        (letrec ((x7666
                                                                  (list? l)))
                                                          (assert x7666)))
                                                       (g7665
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7667
                                                                              (letrec ((x-cnd7668
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7668
                                                                                  0
                                                                                  (letrec ((x7669
                                                                                            (letrec ((x7670
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7670))))
                                                                                    (+
                                                                                     1
                                                                                     x7669))))))
                                                                      g7667))))
                                                          (letrec ((g7671
                                                                    (rec l)))
                                                            g7671))))
                                                g7665)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7672
                                                        (letrec ((x7675
                                                                  (char? c1)))
                                                          (assert x7675)))
                                                       (g7673
                                                        (letrec ((x7676
                                                                  (char? c2)))
                                                          (assert x7676)))
                                                       (g7674
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7677
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7677))))
                                                g7674)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7678
                                                        (letrec ((x7679
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7679))))
                                                g7678)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7680
                                                        (letrec ((x7681
                                                                  (letrec ((x7682
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7682))))
                                                          (cdr x7681))))
                                                g7680)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7683
                                                        (letrec ((x7685
                                                                  (list? l)))
                                                          (assert x7685)))
                                                       (g7684
                                                        (letrec ((x-cnd7686
                                                                  (null? l)))
                                                          (if x-cnd7686
                                                            #f
                                                            (letrec ((x-cnd7687
                                                                      (letrec ((x7688
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7688
                                                                         k))))
                                                              (if x-cnd7687
                                                                (car l)
                                                                (letrec ((x7689
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7689))))))))
                                                g7684)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7690
                                                        (letrec ((x7691
                                                                  (car x)))
                                                          (car x7691))))
                                                g7690)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7692
                                                        (letrec ((x7695
                                                                  (char? c1)))
                                                          (assert x7695)))
                                                       (g7693
                                                        (letrec ((x7696
                                                                  (char? c2)))
                                                          (assert x7696)))
                                                       (g7694
                                                        (letrec ((x7697
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7697))))
                                                g7694)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7698
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7699
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7699))))
                                                g7698)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7700
                                                        (letrec ((x7703
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7703)))
                                                       (g7701
                                                        (letrec ((x7704
                                                                  (list? l)))
                                                          (assert x7704)))
                                                       (g7702
                                                        (letrec ((x-cnd7705
                                                                  (null? l)))
                                                          (if x-cnd7705
                                                            #t
                                                            (letrec ((x-cnd7706
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7706
                                                                (letrec ((g7707
                                                                          (letrec ((x7709
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7709)))
                                                                         (g7708
                                                                          (letrec ((x7710
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7710))))
                                                                  g7708)
                                                                '()))))))
                                                g7702)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7711
                                                        (letrec ((x7713
                                                                  (number? x)))
                                                          (assert x7713)))
                                                       (g7712
                                                        (letrec ((x-cnd7714
                                                                  (< x 0)))
                                                          (if x-cnd7714
                                                            (- 0 x)
                                                            x))))
                                                g7712)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7715
                                                        (letrec ((x7718
                                                                  (char? c1)))
                                                          (assert x7718)))
                                                       (g7716
                                                        (letrec ((x7719
                                                                  (char? c2)))
                                                          (assert x7719)))
                                                       (g7717
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7720
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7720))))
                                                g7717)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7721
                                                        (letrec ((x7722
                                                                  (letrec ((x7723
                                                                            (letrec ((x7724
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7724))))
                                                                    (cdr
                                                                     x7723))))
                                                          (car x7722))))
                                                g7721)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7725 #f)) g7725)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7726
                                                        (letrec ((x7728
                                                                  (letrec ((x7729
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7729)))
                                                                 (x7727
                                                                  (gcd m n)))
                                                          (/ x7728 x7727))))
                                                g7726)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7730
                                                        (letrec ((x7732
                                                                  (number? x)))
                                                          (assert x7732)))
                                                       (g7731
                                                        (letrec ((x7733
                                                                  (<= x y)))
                                                          (not x7733))))
                                                g7731)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7734
                                                        (letrec ((x7738
                                                                  (list? l)))
                                                          (assert x7738)))
                                                       (g7735
                                                        (letrec ((x7739
                                                                  (number?
                                                                   index)))
                                                          (assert x7739)))
                                                       (g7736
                                                        (letrec ((x7740
                                                                  (letrec ((x7741
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7741))))
                                                          (assert x7740)))
                                                       (g7737
                                                        (letrec ((x-cnd7742
                                                                  (= index 0)))
                                                          (if x-cnd7742
                                                            (car l)
                                                            (letrec ((x7744
                                                                      (cdr l))
                                                                     (x7743
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7744
                                                               x7743))))))
                                                g7737)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7745
                                                        (letrec ((x-cnd7746
                                                                  (= b 0)))
                                                          (if x-cnd7746
                                                            a
                                                            (letrec ((x7747
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7747))))))
                                                g7745)))
                                           (block
                                            (lambda (x7217 y7218 color7219)
                                              (letrec ((g7748
                                                        (letrec ((x7749
                                                                  (letrec ((x7750
                                                                            (letrec ((x7751
                                                                                      (cons
                                                                                       color7219
                                                                                       '())))
                                                                              (cons
                                                                               y7218
                                                                               x7751))))
                                                                    (cons
                                                                     x7217
                                                                     x7750))))
                                                          (cons
                                                           'block
                                                           x7749))))
                                                g7748)))
                                           (block?
                                            (lambda (block7216)
                                              (letrec ((g7752
                                                        (letrec ((x7753
                                                                  (car
                                                                   block7216)))
                                                          (eq? x7753 'block))))
                                                g7752)))
                                           (block-x
                                            (lambda (block)
                                              (letrec ((g7754
                                                        (letrec ((x7755
                                                                  (cdr block)))
                                                          (car x7755))))
                                                g7754)))
                                           (block-y
                                            (lambda (block)
                                              (letrec ((g7756
                                                        (letrec ((x7757
                                                                  (letrec ((x7758
                                                                            (cdr
                                                                             block)))
                                                                    (cdr
                                                                     x7758))))
                                                          (car x7757))))
                                                g7756)))
                                           (block-color
                                            (lambda (block)
                                              (letrec ((g7759
                                                        (letrec ((x7760
                                                                  (letrec ((x7761
                                                                            (letrec ((x7762
                                                                                      (cdr
                                                                                       block)))
                                                                              (cdr
                                                                               x7762))))
                                                                    (cdr
                                                                     x7761))))
                                                          (car x7760))))
                                                g7759)))
                                           (tetra
                                            (lambda (center7224 blocks7225)
                                              (letrec ((g7763
                                                        (letrec ((x7764
                                                                  (letrec ((x7765
                                                                            (cons
                                                                             blocks7225
                                                                             '())))
                                                                    (cons
                                                                     center7224
                                                                     x7765))))
                                                          (cons
                                                           'tetra
                                                           x7764))))
                                                g7763)))
                                           (tetra?
                                            (lambda (tetra7223)
                                              (letrec ((g7766
                                                        (letrec ((x7767
                                                                  (car
                                                                   tetra7223)))
                                                          (eq? x7767 'tetra))))
                                                g7766)))
                                           (tetra-center
                                            (lambda (tetra)
                                              (letrec ((g7768
                                                        (letrec ((x7769
                                                                  (cdr tetra)))
                                                          (car x7769))))
                                                g7768)))
                                           (tetra-blocks
                                            (lambda (tetra)
                                              (letrec ((g7770
                                                        (letrec ((x7771
                                                                  (letrec ((x7772
                                                                            (cdr
                                                                             tetra)))
                                                                    (cdr
                                                                     x7772))))
                                                          (car x7771))))
                                                g7770)))
                                           (world
                                            (lambda (tetra7229 blocks7230)
                                              (letrec ((g7773
                                                        (letrec ((x7774
                                                                  (letrec ((x7775
                                                                            (cons
                                                                             blocks7230
                                                                             '())))
                                                                    (cons
                                                                     tetra7229
                                                                     x7775))))
                                                          (cons
                                                           'world
                                                           x7774))))
                                                g7773)))
                                           (world?
                                            (lambda (world7228)
                                              (letrec ((g7776
                                                        (letrec ((x7777
                                                                  (car
                                                                   world7228)))
                                                          (eq? x7777 'world))))
                                                g7776)))
                                           (world-tetra
                                            (lambda (world)
                                              (letrec ((g7778
                                                        (letrec ((x7779
                                                                  (cdr world)))
                                                          (car x7779))))
                                                g7778)))
                                           (world-blocks
                                            (lambda (world)
                                              (letrec ((g7780
                                                        (letrec ((x7781
                                                                  (letrec ((x7782
                                                                            (cdr
                                                                             world)))
                                                                    (cdr
                                                                     x7782))))
                                                          (car x7781))))
                                                g7780)))
                                           (posn
                                            (lambda (x7234 y7235)
                                              (letrec ((g7783
                                                        (letrec ((x7784
                                                                  (letrec ((x7785
                                                                            (cons
                                                                             y7235
                                                                             '())))
                                                                    (cons
                                                                     x7234
                                                                     x7785))))
                                                          (cons 'posn x7784))))
                                                g7783)))
                                           (posn?
                                            (lambda (posn7233)
                                              (letrec ((g7786
                                                        (letrec ((x7787
                                                                  (car
                                                                   posn7233)))
                                                          (eq? x7787 'posn))))
                                                g7786)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g7788
                                                        (letrec ((x7789
                                                                  (cdr posn)))
                                                          (car x7789))))
                                                g7788)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g7790
                                                        (letrec ((x7791
                                                                  (letrec ((x7792
                                                                            (cdr
                                                                             posn)))
                                                                    (cdr
                                                                     x7792))))
                                                          (car x7791))))
                                                g7790)))
                                           (COLOR/C symbol?)
                                           (POSN/C
                                            (lambda (j6975 k6976 v6974)
                                              (letrec ((g7793
                                                        (letrec ((checked6977
                                                                  (letrec ((x7794
                                                                            (car
                                                                             v6974)))
                                                                    (real?/c
                                                                     'j6975
                                                                     'k6976
                                                                     x7794))))
                                                          (letrec ((g7795
                                                                    (letrec ((checked6978
                                                                              (letrec ((x7796
                                                                                        (letrec ((x7797
                                                                                                  (cdr
                                                                                                   v6974)))
                                                                                          (car
                                                                                           x7797))))
                                                                                (real?/c
                                                                                 'j6975
                                                                                 'k6976
                                                                                 x7796))))
                                                                      (letrec ((g7798
                                                                                (letrec ((x7799
                                                                                          (letrec ((x7800
                                                                                                    (cons
                                                                                                     checked6978
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked6977
                                                                                             x7800))))
                                                                                  (cons
                                                                                   posn
                                                                                   x7799))))
                                                                        g7798))))
                                                            g7795))))
                                                g7793)))
                                           (BLOCK/C
                                            (lambda (j6981 k6982 v6980)
                                              (letrec ((g7801
                                                        (letrec ((checked6983
                                                                  (letrec ((x7802
                                                                            (car
                                                                             v6980)))
                                                                    (real?/c
                                                                     'j6981
                                                                     'k6982
                                                                     x7802))))
                                                          (letrec ((g7803
                                                                    (letrec ((checked6984
                                                                              (letrec ((x7804
                                                                                        (letrec ((x7805
                                                                                                  (cdr
                                                                                                   v6980)))
                                                                                          (car
                                                                                           x7805))))
                                                                                (real?/c
                                                                                 'j6981
                                                                                 'k6982
                                                                                 x7804))))
                                                                      (letrec ((g7806
                                                                                (letrec ((checked6985
                                                                                          (letrec ((x7807
                                                                                                    (letrec ((x7808
                                                                                                              (letrec ((x7809
                                                                                                                        (cdr
                                                                                                                         v6980)))
                                                                                                                (cdr
                                                                                                                 x7809))))
                                                                                                      (car
                                                                                                       x7808))))
                                                                                            (COLOR/C
                                                                                             'j6981
                                                                                             'k6982
                                                                                             x7807))))
                                                                                  (letrec ((g7810
                                                                                            (letrec ((x7811
                                                                                                      (letrec ((x7812
                                                                                                                (letrec ((x7813
                                                                                                                          (cons
                                                                                                                           checked6985
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   checked6984
                                                                                                                   x7813))))
                                                                                                        (cons
                                                                                                         checked6983
                                                                                                         x7812))))
                                                                                              (cons
                                                                                               block
                                                                                               x7811))))
                                                                                    g7810))))
                                                                        g7806))))
                                                            g7803))))
                                                g7801)))
                                           (BSET/C (listof BLOCK/C))
                                           (TETRA/C
                                            (lambda (j6988 k6989 v6987)
                                              (letrec ((g7814
                                                        (letrec ((checked6990
                                                                  (letrec ((x7815
                                                                            (car
                                                                             v6987)))
                                                                    (POSN/C
                                                                     'j6988
                                                                     'k6989
                                                                     x7815))))
                                                          (letrec ((g7816
                                                                    (letrec ((checked6991
                                                                              (letrec ((x7817
                                                                                        (letrec ((x7818
                                                                                                  (cdr
                                                                                                   v6987)))
                                                                                          (car
                                                                                           x7818))))
                                                                                (BSET/C
                                                                                 'j6988
                                                                                 'k6989
                                                                                 x7817))))
                                                                      (letrec ((g7819
                                                                                (letrec ((x7820
                                                                                          (letrec ((x7821
                                                                                                    (cons
                                                                                                     checked6991
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked6990
                                                                                             x7821))))
                                                                                  (cons
                                                                                   tetra
                                                                                   x7820))))
                                                                        g7819))))
                                                            g7816))))
                                                g7814)))
                                           (WORLD/C
                                            (lambda (j6994 k6995 v6993)
                                              (letrec ((g7822
                                                        (letrec ((checked6996
                                                                  (letrec ((x7823
                                                                            (car
                                                                             v6993)))
                                                                    (TETRA/C
                                                                     'j6994
                                                                     'k6995
                                                                     x7823))))
                                                          (letrec ((g7824
                                                                    (letrec ((checked6997
                                                                              (letrec ((x7825
                                                                                        (letrec ((x7826
                                                                                                  (cdr
                                                                                                   v6993)))
                                                                                          (car
                                                                                           x7826))))
                                                                                (BSET/C
                                                                                 'j6994
                                                                                 'k6995
                                                                                 x7825))))
                                                                      (letrec ((g7827
                                                                                (letrec ((x7828
                                                                                          (letrec ((x7829
                                                                                                    (cons
                                                                                                     checked6997
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked6996
                                                                                             x7829))))
                                                                                  (cons
                                                                                   world
                                                                                   x7828))))
                                                                        g7827))))
                                                            g7824))))
                                                g7822)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g7830
                                                        (letrec ((x-cnd7831
                                                                  (letrec ((x7833
                                                                            (posn-x
                                                                             p1))
                                                                           (x7832
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x7833
                                                                     x7832))))
                                                          (if x-cnd7831
                                                            (letrec ((x7835
                                                                      (posn-y
                                                                       p1))
                                                                     (x7834
                                                                      (posn-y
                                                                       p2)))
                                                              (= x7835 x7834))
                                                            #f))))
                                                g7830)))
                                           (block-size 20)
                                           (board-height 20)
                                           (board-width 10)
                                           (block=?
                                            (lambda (b1 b2)
                                              (letrec ((g7836
                                                        (letrec ((x-cnd7837
                                                                  (letrec ((x7839
                                                                            (block-x
                                                                             b1))
                                                                           (x7838
                                                                            (block-x
                                                                             b2)))
                                                                    (=
                                                                     x7839
                                                                     x7838))))
                                                          (if x-cnd7837
                                                            (letrec ((x7841
                                                                      (block-y
                                                                       b1))
                                                                     (x7840
                                                                      (block-y
                                                                       b2)))
                                                              (= x7841 x7840))
                                                            #f))))
                                                g7836)))
                                           (block-move
                                            (lambda (dx dy b)
                                              (letrec ((g7842
                                                        (letrec ((x7846
                                                                  (letrec ((x7847
                                                                            (block-x
                                                                             b)))
                                                                    (+
                                                                     dx
                                                                     x7847)))
                                                                 (x7844
                                                                  (letrec ((x7845
                                                                            (block-y
                                                                             b)))
                                                                    (+
                                                                     dy
                                                                     x7845)))
                                                                 (x7843
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x7846
                                                           x7844
                                                           x7843))))
                                                g7842)))
                                           (block-rotate-ccw
                                            (lambda (c b)
                                              (letrec ((g7848
                                                        (letrec ((x7855
                                                                  (letrec ((x7859
                                                                            (posn-x
                                                                             c))
                                                                           (x7856
                                                                            (letrec ((x7858
                                                                                      (posn-y
                                                                                       c))
                                                                                     (x7857
                                                                                      (block-y
                                                                                       b)))
                                                                              (-
                                                                               x7858
                                                                               x7857))))
                                                                    (+
                                                                     x7859
                                                                     x7856)))
                                                                 (x7850
                                                                  (letrec ((x7854
                                                                            (posn-y
                                                                             c))
                                                                           (x7851
                                                                            (letrec ((x7853
                                                                                      (block-x
                                                                                       b))
                                                                                     (x7852
                                                                                      (posn-x
                                                                                       c)))
                                                                              (-
                                                                               x7853
                                                                               x7852))))
                                                                    (+
                                                                     x7854
                                                                     x7851)))
                                                                 (x7849
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x7855
                                                           x7850
                                                           x7849))))
                                                g7848)))
                                           (block-rotate-cw
                                            (lambda (c b)
                                              (letrec ((g7860
                                                        (letrec ((x7861
                                                                  (letrec ((x7862
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (block-rotate-ccw
                                                                     c
                                                                     x7862))))
                                                          (block-rotate-ccw
                                                           c
                                                           x7861))))
                                                g7860)))
                                           (ormap
                                            (lambda (p? xs)
                                              (letrec ((g7863
                                                        (if cnd
                                                          (letrec ((g7864 #f))
                                                            g7864)
                                                          (letrec ((g7865
                                                                    (letrec ((x7868
                                                                              (letrec ((x7869
                                                                                        (car
                                                                                         xs)))
                                                                                (p?
                                                                                 x7869)))
                                                                             (x7866
                                                                              (letrec ((x7867
                                                                                        (cdr
                                                                                         xs)))
                                                                                (ormap
                                                                                 p?
                                                                                 x7867))))
                                                                      (or x7868
                                                                          x7866))))
                                                            g7865))))
                                                g7863)))
                                           (andmap
                                            (lambda (p? xs)
                                              (letrec ((g7870
                                                        (if cnd
                                                          (letrec ((g7871 #t))
                                                            g7871)
                                                          (letrec ((g7872
                                                                    (letrec ((x7875
                                                                              (letrec ((x7876
                                                                                        (car
                                                                                         xs)))
                                                                                (p?
                                                                                 x7876)))
                                                                             (x7873
                                                                              (letrec ((x7874
                                                                                        (cdr
                                                                                         xs)))
                                                                                (andmap
                                                                                 p?
                                                                                 x7874))))
                                                                      (and x7875
                                                                           x7873))))
                                                            g7872))))
                                                g7870)))
                                           (map
                                            (lambda (f xs)
                                              (letrec ((g7877
                                                        (if cnd
                                                          (letrec ((g7878
                                                                    null))
                                                            g7878)
                                                          (letrec ((g7879
                                                                    (letrec ((x7882
                                                                              (letrec ((x7883
                                                                                        (car
                                                                                         xs)))
                                                                                (f
                                                                                 x7883)))
                                                                             (x7880
                                                                              (letrec ((x7881
                                                                                        (cdr
                                                                                         xs)))
                                                                                (map
                                                                                 f
                                                                                 x7881))))
                                                                      (cons
                                                                       x7882
                                                                       x7880))))
                                                            g7879))))
                                                g7877)))
                                           (filter
                                            (lambda (p? xs)
                                              (letrec ((g7884
                                                        (if cnd
                                                          (letrec ((g7885
                                                                    null))
                                                            g7885)
                                                          (if cnd
                                                            (letrec ((g7886
                                                                      (letrec ((x7889
                                                                                (car
                                                                                 xs))
                                                                               (x7887
                                                                                (letrec ((x7888
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (filter
                                                                                   p?
                                                                                   x7888))))
                                                                        (cons
                                                                         x7889
                                                                         x7887))))
                                                              g7886)
                                                            (letrec ((g7890
                                                                      (letrec ((x7891
                                                                                (cdr
                                                                                 xs)))
                                                                        (filter
                                                                         p?
                                                                         x7891))))
                                                              g7890)))))
                                                g7884)))
                                           (append
                                            (lambda (l r)
                                              (letrec ((g7892
                                                        (if cnd
                                                          (letrec ((g7893 r))
                                                            g7893)
                                                          (letrec ((g7894
                                                                    (letrec ((x7897
                                                                              (car
                                                                               l))
                                                                             (x7895
                                                                              (letrec ((x7896
                                                                                        (cdr
                                                                                         l)))
                                                                                (append
                                                                                 x7896
                                                                                 r))))
                                                                      (cons
                                                                       x7897
                                                                       x7895))))
                                                            g7894))))
                                                g7892)))
                                           (length
                                            (lambda (xs)
                                              (letrec ((g7898
                                                        (if cnd
                                                          (letrec ((g7899 0))
                                                            g7899)
                                                          (letrec ((g7900
                                                                    (letrec ((x7901
                                                                              (letrec ((x7902
                                                                                        (cdr
                                                                                         xs)))
                                                                                (length
                                                                                 x7902))))
                                                                      (+
                                                                       1
                                                                       x7901))))
                                                            g7900))))
                                                g7898)))
                                           (foldr
                                            (lambda (f a xs)
                                              (letrec ((g7903
                                                        (if cnd
                                                          (letrec ((g7904 a))
                                                            g7904)
                                                          (letrec ((g7905
                                                                    (letrec ((x7908
                                                                              (car
                                                                               xs))
                                                                             (x7906
                                                                              (letrec ((x7907
                                                                                        (cdr
                                                                                         xs)))
                                                                                (foldr
                                                                                 f
                                                                                 a
                                                                                 x7907))))
                                                                      (f
                                                                       x7908
                                                                       x7906))))
                                                            g7905))))
                                                g7903)))
                                           (blocks-contains?
                                            (lambda (bs b)
                                              (letrec ((g7909
                                                        (letrec ((x7910
                                                                  (letrec ((x7912
                                                                            (c))
                                                                           (x7911
                                                                            (block=?
                                                                             b
                                                                             c)))
                                                                    (λ x7912
                                                                      x7911))))
                                                          (ormap x7910 bs))))
                                                g7909)))
                                           (blocks-subset?
                                            (lambda (bs1 bs2)
                                              (letrec ((g7913
                                                        (letrec ((x7914
                                                                  (letrec ((x7916
                                                                            (b))
                                                                           (x7915
                                                                            (blocks-contains?
                                                                             bs2
                                                                             b)))
                                                                    (λ x7916
                                                                      x7915))))
                                                          (andmap x7914 bs1))))
                                                g7913)))
                                           (blocks=?
                                            (lambda (bs1 bs2)
                                              (letrec ((g7917
                                                        (letrec ((x-cnd7918
                                                                  (blocks-subset?
                                                                   bs1
                                                                   bs2)))
                                                          (if x-cnd7918
                                                            (blocks-subset?
                                                             bs2
                                                             bs1)
                                                            #f))))
                                                g7917)))
                                           (blocks-intersect
                                            (lambda (bs1 bs2)
                                              (letrec ((g7919
                                                        (letrec ((x7920
                                                                  (letrec ((x7922
                                                                            (b))
                                                                           (x7921
                                                                            (blocks-contains?
                                                                             bs2
                                                                             b)))
                                                                    (λ x7922
                                                                      x7921))))
                                                          (filter x7920 bs1))))
                                                g7919)))
                                           (blocks-count
                                            (lambda (bs)
                                              (letrec ((g7923 (length bs)))
                                                g7923)))
                                           (blocks-move
                                            (lambda (dx dy bs)
                                              (letrec ((g7924
                                                        (letrec ((x7925
                                                                  (letrec ((x7927
                                                                            (b))
                                                                           (x7926
                                                                            (block-move
                                                                             dx
                                                                             dy
                                                                             b)))
                                                                    (λ x7927
                                                                      x7926))))
                                                          (map x7925 bs))))
                                                g7924)))
                                           (blocks-rotate-ccw
                                            (lambda (c bs)
                                              (letrec ((g7928
                                                        (letrec ((x7929
                                                                  (letrec ((x7931
                                                                            (b))
                                                                           (x7930
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (λ x7931
                                                                      x7930))))
                                                          (map x7929 bs))))
                                                g7928)))
                                           (blocks-rotate-cw
                                            (lambda (c bs)
                                              (letrec ((g7932
                                                        (letrec ((x7933
                                                                  (letrec ((x7935
                                                                            (b))
                                                                           (x7934
                                                                            (block-rotate-cw
                                                                             c
                                                                             b)))
                                                                    (λ x7935
                                                                      x7934))))
                                                          (map x7933 bs))))
                                                g7932)))
                                           (blocks-change-color
                                            (lambda (bs c)
                                              (letrec ((g7936
                                                        (letrec ((x7937
                                                                  (letrec ((x7941
                                                                            (b))
                                                                           (x7938
                                                                            (letrec ((x7940
                                                                                      (block-x
                                                                                       b))
                                                                                     (x7939
                                                                                      (block-y
                                                                                       b)))
                                                                              (block
                                                                               x7940
                                                                               x7939
                                                                               c))))
                                                                    (λ x7941
                                                                      x7938))))
                                                          (map x7937 bs))))
                                                g7936)))
                                           (blocks-row
                                            (lambda (bs i)
                                              (letrec ((g7942
                                                        (letrec ((x7943
                                                                  (letrec ((x7946
                                                                            (b))
                                                                           (x7944
                                                                            (letrec ((x7945
                                                                                      (block-y
                                                                                       b)))
                                                                              (=
                                                                               i
                                                                               x7945))))
                                                                    (λ x7946
                                                                      x7944))))
                                                          (filter x7943 bs))))
                                                g7942)))
                                           (full-row?
                                            (lambda (bs i)
                                              (letrec ((g7947
                                                        (letrec ((x7948
                                                                  (letrec ((x7949
                                                                            (blocks-row
                                                                             bs
                                                                             i)))
                                                                    (blocks-count
                                                                     x7949))))
                                                          (=
                                                           board-width
                                                           x7948))))
                                                g7947)))
                                           (blocks-overflow?
                                            (lambda (bs)
                                              (letrec ((g7950
                                                        (letrec ((x7951
                                                                  (letrec ((x7954
                                                                            (b))
                                                                           (x7952
                                                                            (letrec ((x7953
                                                                                      (block-y
                                                                                       b)))
                                                                              (<=
                                                                               x7953
                                                                               0))))
                                                                    (λ x7954
                                                                      x7952))))
                                                          (ormap x7951 bs))))
                                                g7950)))
                                           (blocks-union
                                            (lambda (bs1 bs2)
                                              (letrec ((g7955
                                                        (letrec ((x7956
                                                                  (letrec ((x7960
                                                                            (b
                                                                             bs))
                                                                           (x7957
                                                                            (if cnd
                                                                              (letrec ((g7958
                                                                                        bs))
                                                                                g7958)
                                                                              (letrec ((g7959
                                                                                        (cons
                                                                                         b
                                                                                         bs)))
                                                                                g7959))))
                                                                    (λ x7960
                                                                      x7957))))
                                                          (foldr
                                                           x7956
                                                           bs2
                                                           bs1))))
                                                g7955)))
                                           (blocks-max-y
                                            (lambda (bs)
                                              (letrec ((g7961
                                                        (letrec ((x7962
                                                                  (letrec ((x7965
                                                                            (b
                                                                             n))
                                                                           (x7963
                                                                            (letrec ((x7964
                                                                                      (block-y
                                                                                       b)))
                                                                              (max
                                                                               x7964
                                                                               n))))
                                                                    (λ x7965
                                                                      x7963))))
                                                          (foldr x7962 0 bs))))
                                                g7961)))
                                           (blocks-min-x
                                            (lambda (bs)
                                              (letrec ((g7966
                                                        (letrec ((x7967
                                                                  (letrec ((x7970
                                                                            (b
                                                                             n))
                                                                           (x7968
                                                                            (letrec ((x7969
                                                                                      (block-x
                                                                                       b)))
                                                                              (min
                                                                               x7969
                                                                               n))))
                                                                    (λ x7970
                                                                      x7968))))
                                                          (foldr
                                                           x7967
                                                           board-width
                                                           bs))))
                                                g7966)))
                                           (blocks-max-x
                                            (lambda (bs)
                                              (letrec ((g7971
                                                        (letrec ((x7972
                                                                  (letrec ((x7975
                                                                            (b
                                                                             n))
                                                                           (x7973
                                                                            (letrec ((x7974
                                                                                      (block-x
                                                                                       b)))
                                                                              (max
                                                                               x7974
                                                                               n))))
                                                                    (λ x7975
                                                                      x7973))))
                                                          (foldr x7972 0 bs))))
                                                g7971)))
                                           (eliminate-full-rows
                                            (lambda (bs)
                                              (letrec ((g7976
                                                        (elim-row
                                                         bs
                                                         board-height
                                                         0)))
                                                g7976)))
                                           (elim-row
                                            (lambda (bs i offset)
                                              (letrec ((g7977
                                                        (if cnd
                                                          (letrec ((g7978
                                                                    empty))
                                                            g7978)
                                                          (if cnd
                                                            (letrec ((g7979
                                                                      (letrec ((x7981
                                                                                (sub1
                                                                                 i))
                                                                               (x7980
                                                                                (add1
                                                                                 offset)))
                                                                        (elim-row
                                                                         bs
                                                                         x7981
                                                                         x7980))))
                                                              g7979)
                                                            (letrec ((g7982
                                                                      (letrec ((x7985
                                                                                (letrec ((x7986
                                                                                          (sub1
                                                                                           i)))
                                                                                  (elim-row
                                                                                   bs
                                                                                   x7986
                                                                                   offset)))
                                                                               (x7983
                                                                                (letrec ((x7984
                                                                                          (blocks-row
                                                                                           bs
                                                                                           i)))
                                                                                  (blocks-move
                                                                                   0
                                                                                   offset
                                                                                   x7984))))
                                                                        (blocks-union
                                                                         x7985
                                                                         x7983))))
                                                              g7982)))))
                                                g7977)))
                                           (tetra-move
                                            (lambda (dx dy t)
                                              (letrec ((g7987
                                                        (letrec ((x7990
                                                                  (letrec ((x7994
                                                                            (letrec ((x7995
                                                                                      (letrec ((x7996
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-x
                                                                                         x7996))))
                                                                              (+
                                                                               dx
                                                                               x7995)))
                                                                           (x7991
                                                                            (letrec ((x7992
                                                                                      (letrec ((x7993
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-y
                                                                                         x7993))))
                                                                              (+
                                                                               dy
                                                                               x7992))))
                                                                    (posn
                                                                     x7994
                                                                     x7991)))
                                                                 (x7988
                                                                  (letrec ((x7989
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-move
                                                                     dx
                                                                     dy
                                                                     x7989))))
                                                          (tetra
                                                           x7990
                                                           x7988))))
                                                g7987)))
                                           (tetra-rotate-ccw
                                            (lambda (t)
                                              (letrec ((g7997
                                                        (letrec ((x8001
                                                                  (tetra-center
                                                                   t))
                                                                 (x7998
                                                                  (letrec ((x8000
                                                                            (tetra-center
                                                                             t))
                                                                           (x7999
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-ccw
                                                                     x8000
                                                                     x7999))))
                                                          (tetra
                                                           x8001
                                                           x7998))))
                                                g7997)))
                                           (tetra-rotate-cw
                                            (lambda (t)
                                              (letrec ((g8002
                                                        (letrec ((x8006
                                                                  (tetra-center
                                                                   t))
                                                                 (x8003
                                                                  (letrec ((x8005
                                                                            (tetra-center
                                                                             t))
                                                                           (x8004
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-cw
                                                                     x8005
                                                                     x8004))))
                                                          (tetra
                                                           x8006
                                                           x8003))))
                                                g8002)))
                                           (tetra-overlaps-blocks?
                                            (lambda (t bs)
                                              (letrec ((g8007
                                                        (letrec ((x8008
                                                                  (letrec ((x8009
                                                                            (letrec ((x8010
                                                                                      (tetra-blocks
                                                                                       t)))
                                                                              (blocks-intersect
                                                                               x8010
                                                                               bs))))
                                                                    (false?
                                                                     x8009))))
                                                          (false? x8008))))
                                                g8007)))
                                           (tetra-change-color
                                            (lambda (t c)
                                              (letrec ((g8011
                                                        (letrec ((x8014
                                                                  (tetra-center
                                                                   t))
                                                                 (x8012
                                                                  (letrec ((x8013
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-change-color
                                                                     x8013
                                                                     c))))
                                                          (tetra
                                                           x8014
                                                           x8012))))
                                                g8011)))
                                           (build-tetra-blocks
                                            (lambda (color
                                                     xc
                                                     yc
                                                     x1
                                                     y1
                                                     x2
                                                     y2
                                                     x3
                                                     y3
                                                     x4
                                                     y4)
                                              (letrec ((g8015
                                                        (letrec ((x8016
                                                                  (letrec ((x8022
                                                                            (posn
                                                                             xc
                                                                             yc))
                                                                           (x8017
                                                                            (letrec ((x8021
                                                                                      (block
                                                                                       x1
                                                                                       y1
                                                                                       color))
                                                                                     (x8020
                                                                                      (block
                                                                                       x2
                                                                                       y2
                                                                                       color))
                                                                                     (x8019
                                                                                      (block
                                                                                       x3
                                                                                       y3
                                                                                       color))
                                                                                     (x8018
                                                                                      (block
                                                                                       x4
                                                                                       y4
                                                                                       color)))
                                                                              (list
                                                                               x8021
                                                                               x8020
                                                                               x8019
                                                                               x8018))))
                                                                    (tetra
                                                                     x8022
                                                                     x8017))))
                                                          (tetra-move
                                                           3
                                                           0
                                                           x8016))))
                                                g8015)))
                                           (touchdown
                                            (lambda (w tetras)
                                              (letrec ((g8023
                                                        (letrec ((x8029
                                                                  (list-pick-random
                                                                   tetras))
                                                                 (x8024
                                                                  (letrec ((x8025
                                                                            (letrec ((x8027
                                                                                      (letrec ((x8028
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8028)))
                                                                                     (x8026
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (blocks-union
                                                                               x8027
                                                                               x8026))))
                                                                    (eliminate-full-rows
                                                                     x8025))))
                                                          (world
                                                           x8029
                                                           x8024))))
                                                g8023)))
                                           (world-jump-down
                                            (lambda (w)
                                              (letrec ((g8030
                                                        (if cnd
                                                          (letrec ((g8031 w))
                                                            g8031)
                                                          (letrec ((g8032
                                                                    (letrec ((x8033
                                                                              (letrec ((x8035
                                                                                        (letrec ((x8036
                                                                                                  (world-tetra
                                                                                                   w)))
                                                                                          (tetra-move
                                                                                           0
                                                                                           1
                                                                                           x8036)))
                                                                                       (x8034
                                                                                        (world-blocks
                                                                                         w)))
                                                                                (world
                                                                                 x8035
                                                                                 x8034))))
                                                                      (world-jump-down
                                                                       x8033))))
                                                            g8032))))
                                                g8030)))
                                           (landed-on-blocks?
                                            (lambda (w)
                                              (letrec ((g8037
                                                        (letrec ((x8039
                                                                  (letrec ((x8040
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     0
                                                                     1
                                                                     x8040)))
                                                                 (x8038
                                                                  (world-blocks
                                                                   w)))
                                                          (tetra-overlaps-blocks?
                                                           x8039
                                                           x8038))))
                                                g8037)))
                                           (landed-on-floor?
                                            (lambda (w)
                                              (letrec ((g8041
                                                        (letrec ((x8043
                                                                  (letrec ((x8044
                                                                            (letrec ((x8045
                                                                                      (world-tetra
                                                                                       w)))
                                                                              (tetra-blocks
                                                                               x8045))))
                                                                    (blocks-max-y
                                                                     x8044)))
                                                                 (x8042
                                                                  (sub1
                                                                   board-height)))
                                                          (= x8043 x8042))))
                                                g8041)))
                                           (landed?
                                            (lambda (w)
                                              (letrec ((g8046
                                                        (letrec ((val6904
                                                                  (landed-on-blocks?
                                                                   w)))
                                                          (letrec ((g8047
                                                                    (if val6904
                                                                      val6904
                                                                      (landed-on-floor?
                                                                       w))))
                                                            g8047))))
                                                g8046)))
                                           (next-world
                                            (lambda (w tetras)
                                              (letrec ((g8048
                                                        (if cnd
                                                          (letrec ((g8049
                                                                    (touchdown
                                                                     w
                                                                     tetras)))
                                                            g8049)
                                                          (letrec ((g8050
                                                                    (letrec ((x8052
                                                                              (letrec ((x8053
                                                                                        (world-tetra
                                                                                         w)))
                                                                                (tetra-move
                                                                                 0
                                                                                 1
                                                                                 x8053)))
                                                                             (x8051
                                                                              (world-blocks
                                                                               w)))
                                                                      (world
                                                                       x8052
                                                                       x8051))))
                                                            g8050))))
                                                g8048)))
                                           (try-new-tetra
                                            (lambda (w new-tetra)
                                              (letrec ((g8054
                                                        (if cnd
                                                          (letrec ((g8055 w))
                                                            g8055)
                                                          (letrec ((g8056
                                                                    (letrec ((x8057
                                                                              (world-blocks
                                                                               w)))
                                                                      (world
                                                                       new-tetra
                                                                       x8057))))
                                                            g8056))))
                                                g8054)))
                                           (world-move
                                            (lambda (dx dy w)
                                              (letrec ((g8058
                                                        (letrec ((x8059
                                                                  (letrec ((x8060
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     dx
                                                                     dy
                                                                     x8060))))
                                                          (try-new-tetra
                                                           w
                                                           x8059))))
                                                g8058)))
                                           (world-rotate-ccw
                                            (lambda (w)
                                              (letrec ((g8061
                                                        (letrec ((x8062
                                                                  (letrec ((x8063
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-ccw
                                                                     x8063))))
                                                          (try-new-tetra
                                                           w
                                                           x8062))))
                                                g8061)))
                                           (world-rotate-cw
                                            (lambda (w)
                                              (letrec ((g8064
                                                        (letrec ((x8065
                                                                  (letrec ((x8066
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-cw
                                                                     x8066))))
                                                          (try-new-tetra
                                                           w
                                                           x8065))))
                                                g8064)))
                                           (ghost-blocks
                                            (lambda (w)
                                              (letrec ((g8067
                                                        (letrec ((x8068
                                                                  (letrec ((x8069
                                                                            (letrec ((x8070
                                                                                      (world-jump-down
                                                                                       w)))
                                                                              (world-tetra
                                                                               x8070))))
                                                                    (tetra-change-color
                                                                     x8069
                                                                     'gray))))
                                                          (tetra-blocks
                                                           x8068))))
                                                g8067)))
                                           (world-key-move
                                            (lambda (w k)
                                              (letrec ((g8071
                                                        (if cnd
                                                          (letrec ((g8072
                                                                    (world-move
                                                                     neg-1
                                                                     0
                                                                     w)))
                                                            g8072)
                                                          (if cnd
                                                            (letrec ((g8073
                                                                      (world-move
                                                                       1
                                                                       0
                                                                       w)))
                                                              g8073)
                                                            (if cnd
                                                              (letrec ((g8074
                                                                        (world-jump-down
                                                                         w)))
                                                                g8074)
                                                              (if cnd
                                                                (letrec ((g8075
                                                                          (world-rotate-ccw
                                                                           w)))
                                                                  g8075)
                                                                (if cnd
                                                                  (letrec ((g8076
                                                                            (world-rotate-cw
                                                                             w)))
                                                                    g8076)
                                                                  (letrec ((g8077
                                                                            w))
                                                                    g8077))))))))
                                                g8071)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8078
                                                        (cons 'image '())))
                                                g8078)))
                                           (image?
                                            (lambda (image7238)
                                              (letrec ((g8079
                                                        (letrec ((x8080
                                                                  (car
                                                                   image7238)))
                                                          (eq? x8080 'image))))
                                                g8079)))
                                           (overlay
                                            (lambda (i₁ i₂)
                                              (letrec ((g8081 (image)))
                                                g8081)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8082 (image)))
                                                g8082)))
                                           (rectangle
                                            (lambda (w h m c)
                                              (letrec ((g8083 (image)))
                                                g8083)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8084 (image)))
                                                g8084)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8085 (image)))
                                                g8085)))
                                           (list-pick-random
                                            (lambda (xs)
                                              (letrec ((g8086
                                                        (if cnd
                                                          (letrec ((g8087
                                                                    (car xs)))
                                                            g8087)
                                                          (letrec ((g8088
                                                                    (letrec ((x8089
                                                                              (cdr
                                                                               xs)))
                                                                      (list-pick-random
                                                                       x8089))))
                                                            g8088))))
                                                g8086)))
                                           (neg-1 (random 10))
                                           (world->image
                                            (lambda (w)
                                              (letrec ((g8090
                                                        (letrec ((x8094
                                                                  (letrec ((x8095
                                                                            (letrec ((x8099
                                                                                      (letrec ((x8100
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8100)))
                                                                                     (x8096
                                                                                      (letrec ((x8098
                                                                                                (ghost-blocks
                                                                                                 w))
                                                                                               (x8097
                                                                                                (world-blocks
                                                                                                 w)))
                                                                                        (append
                                                                                         x8098
                                                                                         x8097))))
                                                                              (append
                                                                               x8099
                                                                               x8096))))
                                                                    (blocks->image
                                                                     x8095)))
                                                                 (x8091
                                                                  (letrec ((x8093
                                                                            (*
                                                                             board-width
                                                                             block-size))
                                                                           (x8092
                                                                            (*
                                                                             board-height
                                                                             block-size)))
                                                                    (empty-scene
                                                                     x8093
                                                                     x8092))))
                                                          (place-image
                                                           x8094
                                                           0
                                                           0
                                                           x8091))))
                                                g8090)))
                                           (blocks->image
                                            (lambda (bs)
                                              (letrec ((g8101
                                                        (letrec ((x8107
                                                                  (letrec ((x8111
                                                                            (b
                                                                             img))
                                                                           (x8108
                                                                            (if cnd
                                                                              (letrec ((g8109
                                                                                        (place-block
                                                                                         b
                                                                                         img)))
                                                                                g8109)
                                                                              (letrec ((g8110
                                                                                        img))
                                                                                g8110))))
                                                                    (λ x8111
                                                                      x8108)))
                                                                 (x8102
                                                                  (letrec ((x8105
                                                                            (letrec ((x8106
                                                                                      (*
                                                                                       board-width
                                                                                       block-size)))
                                                                              (add1
                                                                               x8106)))
                                                                           (x8103
                                                                            (letrec ((x8104
                                                                                      (*
                                                                                       board-height
                                                                                       block-size)))
                                                                              (add1
                                                                               x8104))))
                                                                    (empty-scene
                                                                     x8105
                                                                     x8103))))
                                                          (foldr
                                                           x8107
                                                           x8102
                                                           bs))))
                                                g8101)))
                                           (block->image
                                            (lambda (b)
                                              (letrec ((g8112
                                                        (letrec ((x8116
                                                                  (letrec ((x8119
                                                                            (add1
                                                                             block-size))
                                                                           (x8118
                                                                            (add1
                                                                             block-size))
                                                                           (x8117
                                                                            (block-color
                                                                             b)))
                                                                    (rectangle
                                                                     x8119
                                                                     x8118
                                                                     'solid
                                                                     x8117)))
                                                                 (x8113
                                                                  (letrec ((x8115
                                                                            (add1
                                                                             block-size))
                                                                           (x8114
                                                                            (add1
                                                                             block-size)))
                                                                    (rectangle
                                                                     x8115
                                                                     x8114
                                                                     'outline
                                                                     'black))))
                                                          (overlay
                                                           x8116
                                                           x8113))))
                                                g8112)))
                                           (place-block
                                            (lambda (b scene)
                                              (letrec ((g8120
                                                        (letrec ((x8129
                                                                  (block->image
                                                                   b))
                                                                 (x8125
                                                                  (letrec ((x8127
                                                                            (letrec ((x8128
                                                                                      (block-x
                                                                                       b)))
                                                                              (*
                                                                               x8128
                                                                               block-size)))
                                                                           (x8126
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8127
                                                                     x8126)))
                                                                 (x8121
                                                                  (letrec ((x8123
                                                                            (letrec ((x8124
                                                                                      (block-y
                                                                                       b)))
                                                                              (*
                                                                               x8124
                                                                               block-size)))
                                                                           (x8122
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8123
                                                                     x8122))))
                                                          (place-image
                                                           x8129
                                                           x8125
                                                           x8121
                                                           scene))))
                                                g8120)))
                                           (world0
                                            (lambda (tetras)
                                              (letrec ((g8130
                                                        (letrec ((x8131
                                                                  (list-pick-random
                                                                   tetras)))
                                                          (world x8131 null))))
                                                g8130))))
                                    (letrec ((g8132
                                              (letrec ((x8195
                                                        ((lambda (j7001
                                                                  k7002
                                                                  f7003)
                                                           (letrec ((g8196
                                                                     (lambda (g6999
                                                                              g7000)
                                                                       (letrec ((g8197
                                                                                 (letrec ((x8198
                                                                                           (letrec ((x8200
                                                                                                     (POSN/C
                                                                                                      j7001
                                                                                                      k7002
                                                                                                      g6999))
                                                                                                    (x8199
                                                                                                     (POSN/C
                                                                                                      j7001
                                                                                                      k7002
                                                                                                      g7000)))
                                                                                             (f7003
                                                                                              x8200
                                                                                              x8199))))
                                                                                   (boolean?/c
                                                                                    j7001
                                                                                    k7002
                                                                                    x8198))))
                                                                         g8197))))
                                                             g8196))
                                                         'module
                                                         'importer
                                                         posn=?))
                                                       (x8190
                                                        (letrec ((x8191
                                                                  (letrec ((x8194
                                                                            (input))
                                                                           (x8192
                                                                            (letrec ((x8193
                                                                                      (input)))
                                                                              (cons
                                                                               x8193
                                                                               '()))))
                                                                    (cons
                                                                     x8194
                                                                     x8192))))
                                                          (cons 'posn x8191)))
                                                       (x8185
                                                        (letrec ((x8186
                                                                  (letrec ((x8189
                                                                            (input))
                                                                           (x8187
                                                                            (letrec ((x8188
                                                                                      (input)))
                                                                              (cons
                                                                               x8188
                                                                               '()))))
                                                                    (cons
                                                                     x8189
                                                                     x8187))))
                                                          (cons 'posn x8186))))
                                                (x8195 x8190 x8185)))
                                             (g8133
                                              (any/c
                                               'module
                                               'importer
                                               COLOR/C))
                                             (g8134
                                              (any/c 'module 'importer POSN/C))
                                             (g8135
                                              (any/c
                                               'module
                                               'importer
                                               BLOCK/C))
                                             (g8136
                                              (any/c
                                               'module
                                               'importer
                                               TETRA/C))
                                             (g8137
                                              (any/c
                                               'module
                                               'importer
                                               WORLD/C))
                                             (g8138
                                              (any/c 'module 'importer BSET/C))
                                             (g8139
                                              (integer?
                                               'module
                                               'importer
                                               block-size))
                                             (g8140
                                              (integer?
                                               'module
                                               'importer
                                               board-width))
                                             (g8141
                                              (integer?
                                               'module
                                               'importer
                                               board-height))
                                             (g8142
                                              (letrec ((x8213
                                                        ((lambda (j7006
                                                                  k7007
                                                                  f7008)
                                                           (letrec ((g8214
                                                                     (lambda (g7004
                                                                              g7005)
                                                                       (letrec ((g8215
                                                                                 (letrec ((x8216
                                                                                           (letrec ((x8218
                                                                                                     (POSN/C
                                                                                                      j7006
                                                                                                      k7007
                                                                                                      g7004))
                                                                                                    (x8217
                                                                                                     (BLOCK/C
                                                                                                      j7006
                                                                                                      k7007
                                                                                                      g7005)))
                                                                                             (f7008
                                                                                              x8218
                                                                                              x8217))))
                                                                                   (BLOCK/C
                                                                                    j7006
                                                                                    k7007
                                                                                    x8216))))
                                                                         g8215))))
                                                             g8214))
                                                         'module
                                                         'importer
                                                         block-rotate-ccw))
                                                       (x8208
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
                                                          (cons 'posn x8209)))
                                                       (x8201
                                                        (letrec ((x8202
                                                                  (letrec ((x8207
                                                                            (input))
                                                                           (x8203
                                                                            (letrec ((x8206
                                                                                      (input))
                                                                                     (x8204
                                                                                      (letrec ((x8205
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8205
                                                                                         '()))))
                                                                              (cons
                                                                               x8206
                                                                               x8204))))
                                                                    (cons
                                                                     x8207
                                                                     x8203))))
                                                          (cons
                                                           'block
                                                           x8202))))
                                                (x8213 x8208 x8201)))
                                             (g8143
                                              (letrec ((x8231
                                                        ((lambda (j7011
                                                                  k7012
                                                                  f7013)
                                                           (letrec ((g8232
                                                                     (lambda (g7009
                                                                              g7010)
                                                                       (letrec ((g8233
                                                                                 (letrec ((x8234
                                                                                           (letrec ((x8236
                                                                                                     (POSN/C
                                                                                                      j7011
                                                                                                      k7012
                                                                                                      g7009))
                                                                                                    (x8235
                                                                                                     (BLOCK/C
                                                                                                      j7011
                                                                                                      k7012
                                                                                                      g7010)))
                                                                                             (f7013
                                                                                              x8236
                                                                                              x8235))))
                                                                                   (BLOCK/C
                                                                                    j7011
                                                                                    k7012
                                                                                    x8234))))
                                                                         g8233))))
                                                             g8232))
                                                         'module
                                                         'importer
                                                         block-rotate-cw))
                                                       (x8226
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
                                                          (cons 'posn x8227)))
                                                       (x8219
                                                        (letrec ((x8220
                                                                  (letrec ((x8225
                                                                            (input))
                                                                           (x8221
                                                                            (letrec ((x8224
                                                                                      (input))
                                                                                     (x8222
                                                                                      (letrec ((x8223
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8223
                                                                                         '()))))
                                                                              (cons
                                                                               x8224
                                                                               x8222))))
                                                                    (cons
                                                                     x8225
                                                                     x8221))))
                                                          (cons
                                                           'block
                                                           x8220))))
                                                (x8231 x8226 x8219)))
                                             (g8144
                                              (letrec ((x8251
                                                        ((lambda (j7016
                                                                  k7017
                                                                  f7018)
                                                           (letrec ((g8252
                                                                     (lambda (g7014
                                                                              g7015)
                                                                       (letrec ((g8253
                                                                                 (letrec ((x8254
                                                                                           (letrec ((x8256
                                                                                                     (BLOCK/C
                                                                                                      j7016
                                                                                                      k7017
                                                                                                      g7014))
                                                                                                    (x8255
                                                                                                     (BLOCK/C
                                                                                                      j7016
                                                                                                      k7017
                                                                                                      g7015)))
                                                                                             (f7018
                                                                                              x8256
                                                                                              x8255))))
                                                                                   (boolean?/c
                                                                                    j7016
                                                                                    k7017
                                                                                    x8254))))
                                                                         g8253))))
                                                             g8252))
                                                         'module
                                                         'importer
                                                         block=?))
                                                       (x8244
                                                        (letrec ((x8245
                                                                  (letrec ((x8250
                                                                            (input))
                                                                           (x8246
                                                                            (letrec ((x8249
                                                                                      (input))
                                                                                     (x8247
                                                                                      (letrec ((x8248
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8248
                                                                                         '()))))
                                                                              (cons
                                                                               x8249
                                                                               x8247))))
                                                                    (cons
                                                                     x8250
                                                                     x8246))))
                                                          (cons 'block x8245)))
                                                       (x8237
                                                        (letrec ((x8238
                                                                  (letrec ((x8243
                                                                            (input))
                                                                           (x8239
                                                                            (letrec ((x8242
                                                                                      (input))
                                                                                     (x8240
                                                                                      (letrec ((x8241
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8241
                                                                                         '()))))
                                                                              (cons
                                                                               x8242
                                                                               x8240))))
                                                                    (cons
                                                                     x8243
                                                                     x8239))))
                                                          (cons
                                                           'block
                                                           x8238))))
                                                (x8251 x8244 x8237)))
                                             (g8145
                                              (letrec ((x8266
                                                        ((lambda (j7022
                                                                  k7023
                                                                  f7024)
                                                           (letrec ((g8267
                                                                     (lambda (g7019
                                                                              g7020
                                                                              g7021)
                                                                       (letrec ((g8268
                                                                                 (letrec ((x8269
                                                                                           (letrec ((x8272
                                                                                                     (real?/c
                                                                                                      j7022
                                                                                                      k7023
                                                                                                      g7019))
                                                                                                    (x8271
                                                                                                     (real?/c
                                                                                                      j7022
                                                                                                      k7023
                                                                                                      g7020))
                                                                                                    (x8270
                                                                                                     (BLOCK/C
                                                                                                      j7022
                                                                                                      k7023
                                                                                                      g7021)))
                                                                                             (f7024
                                                                                              x8272
                                                                                              x8271
                                                                                              x8270))))
                                                                                   (BLOCK/C
                                                                                    j7022
                                                                                    k7023
                                                                                    x8269))))
                                                                         g8268))))
                                                             g8267))
                                                         'module
                                                         'importer
                                                         block-move))
                                                       (x8265 (input))
                                                       (x8264 (input))
                                                       (x8257
                                                        (letrec ((x8258
                                                                  (letrec ((x8263
                                                                            (input))
                                                                           (x8259
                                                                            (letrec ((x8262
                                                                                      (input))
                                                                                     (x8260
                                                                                      (letrec ((x8261
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8261
                                                                                         '()))))
                                                                              (cons
                                                                               x8262
                                                                               x8260))))
                                                                    (cons
                                                                     x8263
                                                                     x8259))))
                                                          (cons
                                                           'block
                                                           x8258))))
                                                (x8266 x8265 x8264 x8257)))
                                             (g8146
                                              (letrec ((x8281
                                                        ((lambda (j7027
                                                                  k7028
                                                                  f7029)
                                                           (letrec ((g8282
                                                                     (lambda (g7025
                                                                              g7026)
                                                                       (letrec ((g8283
                                                                                 (letrec ((x8284
                                                                                           (letrec ((x8286
                                                                                                     (BSET/C
                                                                                                      j7027
                                                                                                      k7028
                                                                                                      g7025))
                                                                                                    (x8285
                                                                                                     (BLOCK/C
                                                                                                      j7027
                                                                                                      k7028
                                                                                                      g7026)))
                                                                                             (f7029
                                                                                              x8286
                                                                                              x8285))))
                                                                                   (boolean?/c
                                                                                    j7027
                                                                                    k7028
                                                                                    x8284))))
                                                                         g8283))))
                                                             g8282))
                                                         'module
                                                         'importer
                                                         blocks-contains?))
                                                       (x8280 (input))
                                                       (x8273
                                                        (letrec ((x8274
                                                                  (letrec ((x8279
                                                                            (input))
                                                                           (x8275
                                                                            (letrec ((x8278
                                                                                      (input))
                                                                                     (x8276
                                                                                      (letrec ((x8277
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8277
                                                                                         '()))))
                                                                              (cons
                                                                               x8278
                                                                               x8276))))
                                                                    (cons
                                                                     x8279
                                                                     x8275))))
                                                          (cons
                                                           'block
                                                           x8274))))
                                                (x8281 x8280 x8273)))
                                             (g8147
                                              (letrec ((x8289
                                                        ((lambda (j7032
                                                                  k7033
                                                                  f7034)
                                                           (letrec ((g8290
                                                                     (lambda (g7030
                                                                              g7031)
                                                                       (letrec ((g8291
                                                                                 (letrec ((x8292
                                                                                           (letrec ((x8294
                                                                                                     (BSET/C
                                                                                                      j7032
                                                                                                      k7033
                                                                                                      g7030))
                                                                                                    (x8293
                                                                                                     (BSET/C
                                                                                                      j7032
                                                                                                      k7033
                                                                                                      g7031)))
                                                                                             (f7034
                                                                                              x8294
                                                                                              x8293))))
                                                                                   (boolean?/c
                                                                                    j7032
                                                                                    k7033
                                                                                    x8292))))
                                                                         g8291))))
                                                             g8290))
                                                         'module
                                                         'importer
                                                         blocks=?))
                                                       (x8288 (input))
                                                       (x8287 (input)))
                                                (x8289 x8288 x8287)))
                                             (g8148
                                              (letrec ((x8297
                                                        ((lambda (j7037
                                                                  k7038
                                                                  f7039)
                                                           (letrec ((g8298
                                                                     (lambda (g7035
                                                                              g7036)
                                                                       (letrec ((g8299
                                                                                 (letrec ((x8300
                                                                                           (letrec ((x8302
                                                                                                     (BSET/C
                                                                                                      j7037
                                                                                                      k7038
                                                                                                      g7035))
                                                                                                    (x8301
                                                                                                     (BSET/C
                                                                                                      j7037
                                                                                                      k7038
                                                                                                      g7036)))
                                                                                             (f7039
                                                                                              x8302
                                                                                              x8301))))
                                                                                   (boolean?/c
                                                                                    j7037
                                                                                    k7038
                                                                                    x8300))))
                                                                         g8299))))
                                                             g8298))
                                                         'module
                                                         'importer
                                                         blocks-subset?))
                                                       (x8296 (input))
                                                       (x8295 (input)))
                                                (x8297 x8296 x8295)))
                                             (g8149
                                              (letrec ((x8305
                                                        ((lambda (j7042
                                                                  k7043
                                                                  f7044)
                                                           (letrec ((g8306
                                                                     (lambda (g7040
                                                                              g7041)
                                                                       (letrec ((g8307
                                                                                 (letrec ((x8308
                                                                                           (letrec ((x8310
                                                                                                     (BSET/C
                                                                                                      j7042
                                                                                                      k7043
                                                                                                      g7040))
                                                                                                    (x8309
                                                                                                     (BSET/C
                                                                                                      j7042
                                                                                                      k7043
                                                                                                      g7041)))
                                                                                             (f7044
                                                                                              x8310
                                                                                              x8309))))
                                                                                   (BSET/C
                                                                                    j7042
                                                                                    k7043
                                                                                    x8308))))
                                                                         g8307))))
                                                             g8306))
                                                         'module
                                                         'importer
                                                         blocks-intersect))
                                                       (x8304 (input))
                                                       (x8303 (input)))
                                                (x8305 x8304 x8303)))
                                             (g8150
                                              (letrec ((x8312
                                                        ((lambda (j7046
                                                                  k7047
                                                                  f7048)
                                                           (letrec ((g8313
                                                                     (lambda (g7045)
                                                                       (letrec ((g8314
                                                                                 (letrec ((x8315
                                                                                           (letrec ((x8316
                                                                                                     (BSET/C
                                                                                                      j7046
                                                                                                      k7047
                                                                                                      g7045)))
                                                                                             (f7048
                                                                                              x8316))))
                                                                                   (real?/c
                                                                                    j7046
                                                                                    k7047
                                                                                    x8315))))
                                                                         g8314))))
                                                             g8313))
                                                         'module
                                                         'importer
                                                         blocks-count))
                                                       (x8311 (input)))
                                                (x8312 x8311)))
                                             (g8151
                                              (letrec ((x8318
                                                        ((lambda (j7050
                                                                  k7051
                                                                  f7052)
                                                           (letrec ((g8319
                                                                     (lambda (g7049)
                                                                       (letrec ((g8320
                                                                                 (letrec ((x8321
                                                                                           (letrec ((x8322
                                                                                                     (BSET/C
                                                                                                      j7050
                                                                                                      k7051
                                                                                                      g7049)))
                                                                                             (f7052
                                                                                              x8322))))
                                                                                   (boolean?/c
                                                                                    j7050
                                                                                    k7051
                                                                                    x8321))))
                                                                         g8320))))
                                                             g8319))
                                                         'module
                                                         'importer
                                                         blocks-overflow?))
                                                       (x8317 (input)))
                                                (x8318 x8317)))
                                             (g8152
                                              (letrec ((x8326
                                                        ((lambda (j7056
                                                                  k7057
                                                                  f7058)
                                                           (letrec ((g8327
                                                                     (lambda (g7053
                                                                              g7054
                                                                              g7055)
                                                                       (letrec ((g8328
                                                                                 (letrec ((x8329
                                                                                           (letrec ((x8332
                                                                                                     (real?/c
                                                                                                      j7056
                                                                                                      k7057
                                                                                                      g7053))
                                                                                                    (x8331
                                                                                                     (real?/c
                                                                                                      j7056
                                                                                                      k7057
                                                                                                      g7054))
                                                                                                    (x8330
                                                                                                     (BSET/C
                                                                                                      j7056
                                                                                                      k7057
                                                                                                      g7055)))
                                                                                             (f7058
                                                                                              x8332
                                                                                              x8331
                                                                                              x8330))))
                                                                                   (BSET/C
                                                                                    j7056
                                                                                    k7057
                                                                                    x8329))))
                                                                         g8328))))
                                                             g8327))
                                                         'module
                                                         'importer
                                                         blocks-move))
                                                       (x8325 (input))
                                                       (x8324 (input))
                                                       (x8323 (input)))
                                                (x8326 x8325 x8324 x8323)))
                                             (g8153
                                              (letrec ((x8339
                                                        ((lambda (j7061
                                                                  k7062
                                                                  f7063)
                                                           (letrec ((g8340
                                                                     (lambda (g7059
                                                                              g7060)
                                                                       (letrec ((g8341
                                                                                 (letrec ((x8342
                                                                                           (letrec ((x8344
                                                                                                     (POSN/C
                                                                                                      j7061
                                                                                                      k7062
                                                                                                      g7059))
                                                                                                    (x8343
                                                                                                     (BSET/C
                                                                                                      j7061
                                                                                                      k7062
                                                                                                      g7060)))
                                                                                             (f7063
                                                                                              x8344
                                                                                              x8343))))
                                                                                   (BSET/C
                                                                                    j7061
                                                                                    k7062
                                                                                    x8342))))
                                                                         g8341))))
                                                             g8340))
                                                         'module
                                                         'importer
                                                         blocks-rotate-cw))
                                                       (x8334
                                                        (letrec ((x8335
                                                                  (letrec ((x8338
                                                                            (input))
                                                                           (x8336
                                                                            (letrec ((x8337
                                                                                      (input)))
                                                                              (cons
                                                                               x8337
                                                                               '()))))
                                                                    (cons
                                                                     x8338
                                                                     x8336))))
                                                          (cons 'posn x8335)))
                                                       (x8333 (input)))
                                                (x8339 x8334 x8333)))
                                             (g8154
                                              (letrec ((x8351
                                                        ((lambda (j7066
                                                                  k7067
                                                                  f7068)
                                                           (letrec ((g8352
                                                                     (lambda (g7064
                                                                              g7065)
                                                                       (letrec ((g8353
                                                                                 (letrec ((x8354
                                                                                           (letrec ((x8356
                                                                                                     (POSN/C
                                                                                                      j7066
                                                                                                      k7067
                                                                                                      g7064))
                                                                                                    (x8355
                                                                                                     (BSET/C
                                                                                                      j7066
                                                                                                      k7067
                                                                                                      g7065)))
                                                                                             (f7068
                                                                                              x8356
                                                                                              x8355))))
                                                                                   (BSET/C
                                                                                    j7066
                                                                                    k7067
                                                                                    x8354))))
                                                                         g8353))))
                                                             g8352))
                                                         'module
                                                         'importer
                                                         blocks-rotate-ccw))
                                                       (x8346
                                                        (letrec ((x8347
                                                                  (letrec ((x8350
                                                                            (input))
                                                                           (x8348
                                                                            (letrec ((x8349
                                                                                      (input)))
                                                                              (cons
                                                                               x8349
                                                                               '()))))
                                                                    (cons
                                                                     x8350
                                                                     x8348))))
                                                          (cons 'posn x8347)))
                                                       (x8345 (input)))
                                                (x8351 x8346 x8345)))
                                             (g8155
                                              (letrec ((x8359
                                                        ((lambda (j7071
                                                                  k7072
                                                                  f7073)
                                                           (letrec ((g8360
                                                                     (lambda (g7069
                                                                              g7070)
                                                                       (letrec ((g8361
                                                                                 (letrec ((x8362
                                                                                           (letrec ((x8364
                                                                                                     (BSET/C
                                                                                                      j7071
                                                                                                      k7072
                                                                                                      g7069))
                                                                                                    (x8363
                                                                                                     (COLOR/C
                                                                                                      j7071
                                                                                                      k7072
                                                                                                      g7070)))
                                                                                             (f7073
                                                                                              x8364
                                                                                              x8363))))
                                                                                   (BSET/C
                                                                                    j7071
                                                                                    k7072
                                                                                    x8362))))
                                                                         g8361))))
                                                             g8360))
                                                         'module
                                                         'importer
                                                         blocks-change-color))
                                                       (x8358 (input))
                                                       (x8357 (input)))
                                                (x8359 x8358 x8357)))
                                             (g8156
                                              (letrec ((x8367
                                                        ((lambda (j7076
                                                                  k7077
                                                                  f7078)
                                                           (letrec ((g8368
                                                                     (lambda (g7074
                                                                              g7075)
                                                                       (letrec ((g8369
                                                                                 (letrec ((x8370
                                                                                           (letrec ((x8372
                                                                                                     (BSET/C
                                                                                                      j7076
                                                                                                      k7077
                                                                                                      g7074))
                                                                                                    (x8371
                                                                                                     (real?/c
                                                                                                      j7076
                                                                                                      k7077
                                                                                                      g7075)))
                                                                                             (f7078
                                                                                              x8372
                                                                                              x8371))))
                                                                                   (BSET/C
                                                                                    j7076
                                                                                    k7077
                                                                                    x8370))))
                                                                         g8369))))
                                                             g8368))
                                                         'module
                                                         'importer
                                                         blocks-row))
                                                       (x8366 (input))
                                                       (x8365 (input)))
                                                (x8367 x8366 x8365)))
                                             (g8157
                                              (letrec ((x8375
                                                        ((lambda (j7081
                                                                  k7082
                                                                  f7083)
                                                           (letrec ((g8376
                                                                     (lambda (g7079
                                                                              g7080)
                                                                       (letrec ((g8377
                                                                                 (letrec ((x8378
                                                                                           (letrec ((x8380
                                                                                                     (BSET/C
                                                                                                      j7081
                                                                                                      k7082
                                                                                                      g7079))
                                                                                                    (x8379
                                                                                                     (real?/c
                                                                                                      j7081
                                                                                                      k7082
                                                                                                      g7080)))
                                                                                             (f7083
                                                                                              x8380
                                                                                              x8379))))
                                                                                   (boolean?/c
                                                                                    j7081
                                                                                    k7082
                                                                                    x8378))))
                                                                         g8377))))
                                                             g8376))
                                                         'module
                                                         'importer
                                                         full-row?))
                                                       (x8374 (input))
                                                       (x8373 (input)))
                                                (x8375 x8374 x8373)))
                                             (g8158
                                              (letrec ((x8383
                                                        ((lambda (j7086
                                                                  k7087
                                                                  f7088)
                                                           (letrec ((g8384
                                                                     (lambda (g7084
                                                                              g7085)
                                                                       (letrec ((g8385
                                                                                 (letrec ((x8386
                                                                                           (letrec ((x8388
                                                                                                     (BSET/C
                                                                                                      j7086
                                                                                                      k7087
                                                                                                      g7084))
                                                                                                    (x8387
                                                                                                     (BSET/C
                                                                                                      j7086
                                                                                                      k7087
                                                                                                      g7085)))
                                                                                             (f7088
                                                                                              x8388
                                                                                              x8387))))
                                                                                   (BSET/C
                                                                                    j7086
                                                                                    k7087
                                                                                    x8386))))
                                                                         g8385))))
                                                             g8384))
                                                         'module
                                                         'importer
                                                         blocks-union))
                                                       (x8382 (input))
                                                       (x8381 (input)))
                                                (x8383 x8382 x8381)))
                                             (g8159
                                              (letrec ((x8390
                                                        ((lambda (j7090
                                                                  k7091
                                                                  f7092)
                                                           (letrec ((g8391
                                                                     (lambda (g7089)
                                                                       (letrec ((g8392
                                                                                 (letrec ((x8393
                                                                                           (letrec ((x8394
                                                                                                     (BSET/C
                                                                                                      j7090
                                                                                                      k7091
                                                                                                      g7089)))
                                                                                             (f7092
                                                                                              x8394))))
                                                                                   (real?/c
                                                                                    j7090
                                                                                    k7091
                                                                                    x8393))))
                                                                         g8392))))
                                                             g8391))
                                                         'module
                                                         'importer
                                                         blocks-max-x))
                                                       (x8389 (input)))
                                                (x8390 x8389)))
                                             (g8160
                                              (letrec ((x8396
                                                        ((lambda (j7094
                                                                  k7095
                                                                  f7096)
                                                           (letrec ((g8397
                                                                     (lambda (g7093)
                                                                       (letrec ((g8398
                                                                                 (letrec ((x8399
                                                                                           (letrec ((x8400
                                                                                                     (BSET/C
                                                                                                      j7094
                                                                                                      k7095
                                                                                                      g7093)))
                                                                                             (f7096
                                                                                              x8400))))
                                                                                   (real?/c
                                                                                    j7094
                                                                                    k7095
                                                                                    x8399))))
                                                                         g8398))))
                                                             g8397))
                                                         'module
                                                         'importer
                                                         blocks-min-x))
                                                       (x8395 (input)))
                                                (x8396 x8395)))
                                             (g8161
                                              (letrec ((x8402
                                                        ((lambda (j7098
                                                                  k7099
                                                                  f7100)
                                                           (letrec ((g8403
                                                                     (lambda (g7097)
                                                                       (letrec ((g8404
                                                                                 (letrec ((x8405
                                                                                           (letrec ((x8406
                                                                                                     (BSET/C
                                                                                                      j7098
                                                                                                      k7099
                                                                                                      g7097)))
                                                                                             (f7100
                                                                                              x8406))))
                                                                                   (real?/c
                                                                                    j7098
                                                                                    k7099
                                                                                    x8405))))
                                                                         g8404))))
                                                             g8403))
                                                         'module
                                                         'importer
                                                         blocks-max-y))
                                                       (x8401 (input)))
                                                (x8402 x8401)))
                                             (g8162
                                              (letrec ((x8408
                                                        ((lambda (j7102
                                                                  k7103
                                                                  f7104)
                                                           (letrec ((g8409
                                                                     (lambda (g7101)
                                                                       (letrec ((g8410
                                                                                 (letrec ((x8411
                                                                                           (letrec ((x8412
                                                                                                     (BSET/C
                                                                                                      j7102
                                                                                                      k7103
                                                                                                      g7101)))
                                                                                             (f7104
                                                                                              x8412))))
                                                                                   (BSET/C
                                                                                    j7102
                                                                                    k7103
                                                                                    x8411))))
                                                                         g8410))))
                                                             g8409))
                                                         'module
                                                         'importer
                                                         eliminate-full-rows))
                                                       (x8407 (input)))
                                                (x8408 x8407)))
                                             (g8163
                                              (letrec ((x8424
                                                        ((lambda (j7108
                                                                  k7109
                                                                  f7110)
                                                           (letrec ((g8425
                                                                     (lambda (g7105
                                                                              g7106
                                                                              g7107)
                                                                       (letrec ((g8426
                                                                                 (letrec ((x8427
                                                                                           (letrec ((x8430
                                                                                                     (integer?/c
                                                                                                      j7108
                                                                                                      k7109
                                                                                                      g7105))
                                                                                                    (x8429
                                                                                                     (integer?/c
                                                                                                      j7108
                                                                                                      k7109
                                                                                                      g7106))
                                                                                                    (x8428
                                                                                                     (TETRA/C
                                                                                                      j7108
                                                                                                      k7109
                                                                                                      g7107)))
                                                                                             (f7110
                                                                                              x8430
                                                                                              x8429
                                                                                              x8428))))
                                                                                   (TETRA/C
                                                                                    j7108
                                                                                    k7109
                                                                                    x8427))))
                                                                         g8426))))
                                                             g8425))
                                                         'module
                                                         'importer
                                                         tetra-move))
                                                       (x8423 (input))
                                                       (x8422 (input))
                                                       (x8413
                                                        (letrec ((x8414
                                                                  (letrec ((x8417
                                                                            (letrec ((x8418
                                                                                      (letrec ((x8421
                                                                                                (input))
                                                                                               (x8419
                                                                                                (letrec ((x8420
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8420
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8421
                                                                                         x8419))))
                                                                              (cons
                                                                               'posn
                                                                               x8418)))
                                                                           (x8415
                                                                            (letrec ((x8416
                                                                                      (input)))
                                                                              (cons
                                                                               x8416
                                                                               '()))))
                                                                    (cons
                                                                     x8417
                                                                     x8415))))
                                                          (cons
                                                           'tetra
                                                           x8414))))
                                                (x8424 x8423 x8422 x8413)))
                                             (g8164
                                              (letrec ((x8440
                                                        ((lambda (j7112
                                                                  k7113
                                                                  f7114)
                                                           (letrec ((g8441
                                                                     (lambda (g7111)
                                                                       (letrec ((g8442
                                                                                 (letrec ((x8443
                                                                                           (letrec ((x8444
                                                                                                     (TETRA/C
                                                                                                      j7112
                                                                                                      k7113
                                                                                                      g7111)))
                                                                                             (f7114
                                                                                              x8444))))
                                                                                   (TETRA/C
                                                                                    j7112
                                                                                    k7113
                                                                                    x8443))))
                                                                         g8442))))
                                                             g8441))
                                                         'module
                                                         'importer
                                                         tetra-rotate-ccw))
                                                       (x8431
                                                        (letrec ((x8432
                                                                  (letrec ((x8435
                                                                            (letrec ((x8436
                                                                                      (letrec ((x8439
                                                                                                (input))
                                                                                               (x8437
                                                                                                (letrec ((x8438
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8438
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8439
                                                                                         x8437))))
                                                                              (cons
                                                                               'posn
                                                                               x8436)))
                                                                           (x8433
                                                                            (letrec ((x8434
                                                                                      (input)))
                                                                              (cons
                                                                               x8434
                                                                               '()))))
                                                                    (cons
                                                                     x8435
                                                                     x8433))))
                                                          (cons
                                                           'tetra
                                                           x8432))))
                                                (x8440 x8431)))
                                             (g8165
                                              (letrec ((x8454
                                                        ((lambda (j7116
                                                                  k7117
                                                                  f7118)
                                                           (letrec ((g8455
                                                                     (lambda (g7115)
                                                                       (letrec ((g8456
                                                                                 (letrec ((x8457
                                                                                           (letrec ((x8458
                                                                                                     (TETRA/C
                                                                                                      j7116
                                                                                                      k7117
                                                                                                      g7115)))
                                                                                             (f7118
                                                                                              x8458))))
                                                                                   (TETRA/C
                                                                                    j7116
                                                                                    k7117
                                                                                    x8457))))
                                                                         g8456))))
                                                             g8455))
                                                         'module
                                                         'importer
                                                         tetra-rotate-cw))
                                                       (x8445
                                                        (letrec ((x8446
                                                                  (letrec ((x8449
                                                                            (letrec ((x8450
                                                                                      (letrec ((x8453
                                                                                                (input))
                                                                                               (x8451
                                                                                                (letrec ((x8452
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8452
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8453
                                                                                         x8451))))
                                                                              (cons
                                                                               'posn
                                                                               x8450)))
                                                                           (x8447
                                                                            (letrec ((x8448
                                                                                      (input)))
                                                                              (cons
                                                                               x8448
                                                                               '()))))
                                                                    (cons
                                                                     x8449
                                                                     x8447))))
                                                          (cons
                                                           'tetra
                                                           x8446))))
                                                (x8454 x8445)))
                                             (g8166
                                              (letrec ((x8469
                                                        ((lambda (j7121
                                                                  k7122
                                                                  f7123)
                                                           (letrec ((g8470
                                                                     (lambda (g7119
                                                                              g7120)
                                                                       (letrec ((g8471
                                                                                 (letrec ((x8472
                                                                                           (letrec ((x8474
                                                                                                     (TETRA/C
                                                                                                      j7121
                                                                                                      k7122
                                                                                                      g7119))
                                                                                                    (x8473
                                                                                                     (BSET/C
                                                                                                      j7121
                                                                                                      k7122
                                                                                                      g7120)))
                                                                                             (f7123
                                                                                              x8474
                                                                                              x8473))))
                                                                                   (boolean?/c
                                                                                    j7121
                                                                                    k7122
                                                                                    x8472))))
                                                                         g8471))))
                                                             g8470))
                                                         'module
                                                         'importer
                                                         tetra-overlaps-blocks?))
                                                       (x8460
                                                        (letrec ((x8461
                                                                  (letrec ((x8464
                                                                            (letrec ((x8465
                                                                                      (letrec ((x8468
                                                                                                (input))
                                                                                               (x8466
                                                                                                (letrec ((x8467
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8467
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8468
                                                                                         x8466))))
                                                                              (cons
                                                                               'posn
                                                                               x8465)))
                                                                           (x8462
                                                                            (letrec ((x8463
                                                                                      (input)))
                                                                              (cons
                                                                               x8463
                                                                               '()))))
                                                                    (cons
                                                                     x8464
                                                                     x8462))))
                                                          (cons 'tetra x8461)))
                                                       (x8459 (input)))
                                                (x8469 x8460 x8459)))
                                             (g8167
                                              (letrec ((x8486
                                                        ((lambda (j7135
                                                                  k7136
                                                                  f7137)
                                                           (letrec ((g8487
                                                                     (lambda (g7124
                                                                              g7125
                                                                              g7126
                                                                              g7127
                                                                              g7128
                                                                              g7129
                                                                              g7130
                                                                              g7131
                                                                              g7132
                                                                              g7133
                                                                              g7134)
                                                                       (letrec ((g8488
                                                                                 (letrec ((x8489
                                                                                           (letrec ((x8500
                                                                                                     (COLOR/C
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7124))
                                                                                                    (x8499
                                                                                                     (real?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7125))
                                                                                                    (x8498
                                                                                                     (real?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7126))
                                                                                                    (x8497
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7127))
                                                                                                    (x8496
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7128))
                                                                                                    (x8495
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7129))
                                                                                                    (x8494
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7130))
                                                                                                    (x8493
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7131))
                                                                                                    (x8492
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7132))
                                                                                                    (x8491
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7133))
                                                                                                    (x8490
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7134)))
                                                                                             (f7137
                                                                                              x8500
                                                                                              x8499
                                                                                              x8498
                                                                                              x8497
                                                                                              x8496
                                                                                              x8495
                                                                                              x8494
                                                                                              x8493
                                                                                              x8492
                                                                                              x8491
                                                                                              x8490))))
                                                                                   (TETRA/C
                                                                                    j7135
                                                                                    k7136
                                                                                    x8489))))
                                                                         g8488))))
                                                             g8487))
                                                         'module
                                                         'importer
                                                         build-tetra-blocks))
                                                       (x8485 (input))
                                                       (x8484 (input))
                                                       (x8483 (input))
                                                       (x8482 (input))
                                                       (x8481 (input))
                                                       (x8480 (input))
                                                       (x8479 (input))
                                                       (x8478 (input))
                                                       (x8477 (input))
                                                       (x8476 (input))
                                                       (x8475 (input)))
                                                (x8486
                                                 x8485
                                                 x8484
                                                 x8483
                                                 x8482
                                                 x8481
                                                 x8480
                                                 x8479
                                                 x8478
                                                 x8477
                                                 x8476
                                                 x8475)))
                                             (g8168
                                              (letrec ((x8511
                                                        ((lambda (j7140
                                                                  k7141
                                                                  f7142)
                                                           (letrec ((g8512
                                                                     (lambda (g7138
                                                                              g7139)
                                                                       (letrec ((g8513
                                                                                 (letrec ((x8514
                                                                                           (letrec ((x8516
                                                                                                     (TETRA/C
                                                                                                      j7140
                                                                                                      k7141
                                                                                                      g7138))
                                                                                                    (x8515
                                                                                                     (COLOR/C
                                                                                                      j7140
                                                                                                      k7141
                                                                                                      g7139)))
                                                                                             (f7142
                                                                                              x8516
                                                                                              x8515))))
                                                                                   (TETRA/C
                                                                                    j7140
                                                                                    k7141
                                                                                    x8514))))
                                                                         g8513))))
                                                             g8512))
                                                         'module
                                                         'importer
                                                         tetra-change-color))
                                                       (x8502
                                                        (letrec ((x8503
                                                                  (letrec ((x8506
                                                                            (letrec ((x8507
                                                                                      (letrec ((x8510
                                                                                                (input))
                                                                                               (x8508
                                                                                                (letrec ((x8509
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8509
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8510
                                                                                         x8508))))
                                                                              (cons
                                                                               'posn
                                                                               x8507)))
                                                                           (x8504
                                                                            (letrec ((x8505
                                                                                      (input)))
                                                                              (cons
                                                                               x8505
                                                                               '()))))
                                                                    (cons
                                                                     x8506
                                                                     x8504))))
                                                          (cons 'tetra x8503)))
                                                       (x8501 (input)))
                                                (x8511 x8502 x8501)))
                                             (g8169
                                              (letrec ((x8531
                                                        ((lambda (j7145
                                                                  k7146
                                                                  f7147)
                                                           (letrec ((g8532
                                                                     (lambda (g7143
                                                                              g7144)
                                                                       (letrec ((g8533
                                                                                 (letrec ((x8534
                                                                                           (letrec ((x8536
                                                                                                     (WORLD/C
                                                                                                      j7145
                                                                                                      k7146
                                                                                                      g7143))
                                                                                                    (x8535
                                                                                                     (string?/c
                                                                                                      j7145
                                                                                                      k7146
                                                                                                      g7144)))
                                                                                             (f7147
                                                                                              x8536
                                                                                              x8535))))
                                                                                   (WORLD/C
                                                                                    j7145
                                                                                    k7146
                                                                                    x8534))))
                                                                         g8533))))
                                                             g8532))
                                                         'module
                                                         'importer
                                                         world-key-move))
                                                       (x8518
                                                        (letrec ((x8519
                                                                  (letrec ((x8522
                                                                            (letrec ((x8523
                                                                                      (letrec ((x8526
                                                                                                (letrec ((x8527
                                                                                                          (letrec ((x8530
                                                                                                                    (input))
                                                                                                                   (x8528
                                                                                                                    (letrec ((x8529
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x8529
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x8530
                                                                                                             x8528))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x8527)))
                                                                                               (x8524
                                                                                                (letrec ((x8525
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8525
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8526
                                                                                         x8524))))
                                                                              (cons
                                                                               'tetra
                                                                               x8523)))
                                                                           (x8520
                                                                            (letrec ((x8521
                                                                                      (input)))
                                                                              (cons
                                                                               x8521
                                                                               '()))))
                                                                    (cons
                                                                     x8522
                                                                     x8520))))
                                                          (cons 'world x8519)))
                                                       (x8517 (input)))
                                                (x8531 x8518 x8517)))
                                             (g8170
                                              (letrec ((x8551
                                                        ((lambda (j7150
                                                                  k7151
                                                                  f7152)
                                                           (letrec ((g8552
                                                                     (lambda (g7148
                                                                              g7149)
                                                                       (letrec ((g8553
                                                                                 (letrec ((x8554
                                                                                           (letrec ((x8558
                                                                                                     (WORLD/C
                                                                                                      j7150
                                                                                                      k7151
                                                                                                      g7148))
                                                                                                    (x8555
                                                                                                     (letrec ((x8556
                                                                                                               (letrec ((x8557
                                                                                                                         (listof
                                                                                                                          TETRA/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x8557))))
                                                                                                       (x8556
                                                                                                        j7150
                                                                                                        k7151
                                                                                                        g7149))))
                                                                                             (f7152
                                                                                              x8558
                                                                                              x8555))))
                                                                                   (WORLD/C
                                                                                    j7150
                                                                                    k7151
                                                                                    x8554))))
                                                                         g8553))))
                                                             g8552))
                                                         'module
                                                         'importer
                                                         next-world))
                                                       (x8538
                                                        (letrec ((x8539
                                                                  (letrec ((x8542
                                                                            (letrec ((x8543
                                                                                      (letrec ((x8546
                                                                                                (letrec ((x8547
                                                                                                          (letrec ((x8550
                                                                                                                    (input))
                                                                                                                   (x8548
                                                                                                                    (letrec ((x8549
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x8549
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x8550
                                                                                                             x8548))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x8547)))
                                                                                               (x8544
                                                                                                (letrec ((x8545
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8545
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8546
                                                                                         x8544))))
                                                                              (cons
                                                                               'tetra
                                                                               x8543)))
                                                                           (x8540
                                                                            (letrec ((x8541
                                                                                      (input)))
                                                                              (cons
                                                                               x8541
                                                                               '()))))
                                                                    (cons
                                                                     x8542
                                                                     x8540))))
                                                          (cons 'world x8539)))
                                                       (x8537 (input)))
                                                (x8551 x8538 x8537)))
                                             (g8171
                                              (letrec ((x8572
                                                        ((lambda (j7154
                                                                  k7155
                                                                  f7156)
                                                           (letrec ((g8573
                                                                     (lambda (g7153)
                                                                       (letrec ((g8574
                                                                                 (letrec ((x8575
                                                                                           (letrec ((x8576
                                                                                                     (WORLD/C
                                                                                                      j7154
                                                                                                      k7155
                                                                                                      g7153)))
                                                                                             (f7156
                                                                                              x8576))))
                                                                                   (BSET/C
                                                                                    j7154
                                                                                    k7155
                                                                                    x8575))))
                                                                         g8574))))
                                                             g8573))
                                                         'module
                                                         'importer
                                                         ghost-blocks))
                                                       (x8559
                                                        (letrec ((x8560
                                                                  (letrec ((x8563
                                                                            (letrec ((x8564
                                                                                      (letrec ((x8567
                                                                                                (letrec ((x8568
                                                                                                          (letrec ((x8571
                                                                                                                    (input))
                                                                                                                   (x8569
                                                                                                                    (letrec ((x8570
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x8570
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x8571
                                                                                                             x8569))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x8568)))
                                                                                               (x8565
                                                                                                (letrec ((x8566
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8566
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8567
                                                                                         x8565))))
                                                                              (cons
                                                                               'tetra
                                                                               x8564)))
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
                                                           'world
                                                           x8560))))
                                                (x8572 x8559)))
                                             (g8172
                                              (letrec ((x8578
                                                        ((lambda (j7158
                                                                  k7159
                                                                  f7160)
                                                           (letrec ((g8579
                                                                     (lambda (g7157)
                                                                       (letrec ((g8580
                                                                                 (letrec ((x8581
                                                                                           (letrec ((x8582
                                                                                                     (any/c
                                                                                                      j7158
                                                                                                      k7159
                                                                                                      g7157)))
                                                                                             (f7160
                                                                                              x8582))))
                                                                                   (boolean?/c
                                                                                    j7158
                                                                                    k7159
                                                                                    x8581))))
                                                                         g8580))))
                                                             g8579))
                                                         'module
                                                         'importer
                                                         image?))
                                                       (x8577 (input)))
                                                (x8578 x8577)))
                                             (g8173
                                              (letrec ((x8585
                                                        ((lambda (j7163
                                                                  k7164
                                                                  f7165)
                                                           (letrec ((g8586
                                                                     (lambda (g7161
                                                                              g7162)
                                                                       (letrec ((g8587
                                                                                 (letrec ((x8588
                                                                                           (letrec ((x8590
                                                                                                     (image?
                                                                                                      j7163
                                                                                                      k7164
                                                                                                      g7161))
                                                                                                    (x8589
                                                                                                     (image?
                                                                                                      j7163
                                                                                                      k7164
                                                                                                      g7162)))
                                                                                             (f7165
                                                                                              x8590
                                                                                              x8589))))
                                                                                   (image?
                                                                                    j7163
                                                                                    k7164
                                                                                    x8588))))
                                                                         g8587))))
                                                             g8586))
                                                         'module
                                                         'importer
                                                         overlay))
                                                       (x8584 (input))
                                                       (x8583 (input)))
                                                (x8585 x8584 x8583)))
                                             (g8174
                                              (letrec ((x8594
                                                        ((lambda (j7169
                                                                  k7170
                                                                  f7171)
                                                           (letrec ((g8595
                                                                     (lambda (g7166
                                                                              g7167
                                                                              g7168)
                                                                       (letrec ((g8596
                                                                                 (letrec ((x8597
                                                                                           (letrec ((x8600
                                                                                                     (real?/c
                                                                                                      j7169
                                                                                                      k7170
                                                                                                      g7166))
                                                                                                    (x8599
                                                                                                     (real?/c
                                                                                                      j7169
                                                                                                      k7170
                                                                                                      g7167))
                                                                                                    (x8598
                                                                                                     (string?/c
                                                                                                      j7169
                                                                                                      k7170
                                                                                                      g7168)))
                                                                                             (f7171
                                                                                              x8600
                                                                                              x8599
                                                                                              x8598))))
                                                                                   (image?
                                                                                    j7169
                                                                                    k7170
                                                                                    x8597))))
                                                                         g8596))))
                                                             g8595))
                                                         'module
                                                         'importer
                                                         circle))
                                                       (x8593 (input))
                                                       (x8592 (input))
                                                       (x8591 (input)))
                                                (x8594 x8593 x8592 x8591)))
                                             (g8175
                                              (letrec ((x8605
                                                        ((lambda (j7176
                                                                  k7177
                                                                  f7178)
                                                           (letrec ((g8606
                                                                     (lambda (g7172
                                                                              g7173
                                                                              g7174
                                                                              g7175)
                                                                       (letrec ((g8607
                                                                                 (letrec ((x8608
                                                                                           (letrec ((x8612
                                                                                                     (real?/c
                                                                                                      j7176
                                                                                                      k7177
                                                                                                      g7172))
                                                                                                    (x8611
                                                                                                     (real?/c
                                                                                                      j7176
                                                                                                      k7177
                                                                                                      g7173))
                                                                                                    (x8610
                                                                                                     (COLOR/C
                                                                                                      j7176
                                                                                                      k7177
                                                                                                      g7174))
                                                                                                    (x8609
                                                                                                     (COLOR/C
                                                                                                      j7176
                                                                                                      k7177
                                                                                                      g7175)))
                                                                                             (f7178
                                                                                              x8612
                                                                                              x8611
                                                                                              x8610
                                                                                              x8609))))
                                                                                   (image?
                                                                                    j7176
                                                                                    k7177
                                                                                    x8608))))
                                                                         g8607))))
                                                             g8606))
                                                         'module
                                                         'importer
                                                         rectangle))
                                                       (x8604 (input))
                                                       (x8603 (input))
                                                       (x8602 (input))
                                                       (x8601 (input)))
                                                (x8605
                                                 x8604
                                                 x8603
                                                 x8602
                                                 x8601)))
                                             (g8176
                                              (letrec ((x8617
                                                        ((lambda (j7183
                                                                  k7184
                                                                  f7185)
                                                           (letrec ((g8618
                                                                     (lambda (g7179
                                                                              g7180
                                                                              g7181
                                                                              g7182)
                                                                       (letrec ((g8619
                                                                                 (letrec ((x8620
                                                                                           (letrec ((x8624
                                                                                                     (image/c
                                                                                                      j7183
                                                                                                      k7184
                                                                                                      g7179))
                                                                                                    (x8623
                                                                                                     (real?/c
                                                                                                      j7183
                                                                                                      k7184
                                                                                                      g7180))
                                                                                                    (x8622
                                                                                                     (real?/c
                                                                                                      j7183
                                                                                                      k7184
                                                                                                      g7181))
                                                                                                    (x8621
                                                                                                     (image/c
                                                                                                      j7183
                                                                                                      k7184
                                                                                                      g7182)))
                                                                                             (f7185
                                                                                              x8624
                                                                                              x8623
                                                                                              x8622
                                                                                              x8621))))
                                                                                   (image/c
                                                                                    j7183
                                                                                    k7184
                                                                                    x8620))))
                                                                         g8619))))
                                                             g8618))
                                                         'module
                                                         'importer
                                                         place-image))
                                                       (x8616 (input))
                                                       (x8615 (input))
                                                       (x8614 (input))
                                                       (x8613 (input)))
                                                (x8617
                                                 x8616
                                                 x8615
                                                 x8614
                                                 x8613)))
                                             (g8177
                                              (letrec ((x8627
                                                        ((lambda (j7188
                                                                  k7189
                                                                  f7190)
                                                           (letrec ((g8628
                                                                     (lambda (g7186
                                                                              g7187)
                                                                       (letrec ((g8629
                                                                                 (letrec ((x8630
                                                                                           (letrec ((x8632
                                                                                                     (real?/c
                                                                                                      j7188
                                                                                                      k7189
                                                                                                      g7186))
                                                                                                    (x8631
                                                                                                     (real?/c
                                                                                                      j7188
                                                                                                      k7189
                                                                                                      g7187)))
                                                                                             (f7190
                                                                                              x8632
                                                                                              x8631))))
                                                                                   (image?
                                                                                    j7188
                                                                                    k7189
                                                                                    x8630))))
                                                                         g8629))))
                                                             g8628))
                                                         'module
                                                         'importer
                                                         empty-scene))
                                                       (x8626 (input))
                                                       (x8625 (input)))
                                                (x8627 x8626 x8625)))
                                             (g8178
                                              (letrec ((x8634
                                                        ((lambda (j7192
                                                                  k7193
                                                                  f7194)
                                                           (letrec ((g8635
                                                                     (lambda (g7191)
                                                                       (letrec ((g8636
                                                                                 (letrec ((x8637
                                                                                           (letrec ((x8638
                                                                                                     (letrec ((x8639
                                                                                                               (letrec ((x8640
                                                                                                                         (listof
                                                                                                                          TETRA/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x8640))))
                                                                                                       (x8639
                                                                                                        j7192
                                                                                                        k7193
                                                                                                        g7191))))
                                                                                             (f7194
                                                                                              x8638))))
                                                                                   (TETRA/C
                                                                                    j7192
                                                                                    k7193
                                                                                    x8637))))
                                                                         g8636))))
                                                             g8635))
                                                         'module
                                                         'importer
                                                         list-pick-random))
                                                       (x8633 (input)))
                                                (x8634 x8633)))
                                             (g8179
                                              (integer?/c
                                               'module
                                               'importer
                                               neg-1))
                                             (g8180
                                              (letrec ((x8654
                                                        ((lambda (j7196
                                                                  k7197
                                                                  f7198)
                                                           (letrec ((g8655
                                                                     (lambda (g7195)
                                                                       (letrec ((g8656
                                                                                 (letrec ((x8657
                                                                                           (letrec ((x8658
                                                                                                     (WORLD/C
                                                                                                      j7196
                                                                                                      k7197
                                                                                                      g7195)))
                                                                                             (f7198
                                                                                              x8658))))
                                                                                   (image/c
                                                                                    j7196
                                                                                    k7197
                                                                                    x8657))))
                                                                         g8656))))
                                                             g8655))
                                                         'module
                                                         'importer
                                                         world->image))
                                                       (x8641
                                                        (letrec ((x8642
                                                                  (letrec ((x8645
                                                                            (letrec ((x8646
                                                                                      (letrec ((x8649
                                                                                                (letrec ((x8650
                                                                                                          (letrec ((x8653
                                                                                                                    (input))
                                                                                                                   (x8651
                                                                                                                    (letrec ((x8652
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x8652
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x8653
                                                                                                             x8651))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x8650)))
                                                                                               (x8647
                                                                                                (letrec ((x8648
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8648
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8649
                                                                                         x8647))))
                                                                              (cons
                                                                               'tetra
                                                                               x8646)))
                                                                           (x8643
                                                                            (letrec ((x8644
                                                                                      (input)))
                                                                              (cons
                                                                               x8644
                                                                               '()))))
                                                                    (cons
                                                                     x8645
                                                                     x8643))))
                                                          (cons
                                                           'world
                                                           x8642))))
                                                (x8654 x8641)))
                                             (g8181
                                              (letrec ((x8660
                                                        ((lambda (j7200
                                                                  k7201
                                                                  f7202)
                                                           (letrec ((g8661
                                                                     (lambda (g7199)
                                                                       (letrec ((g8662
                                                                                 (letrec ((x8663
                                                                                           (letrec ((x8664
                                                                                                     (BSET/C
                                                                                                      j7200
                                                                                                      k7201
                                                                                                      g7199)))
                                                                                             (f7202
                                                                                              x8664))))
                                                                                   (image/c
                                                                                    j7200
                                                                                    k7201
                                                                                    x8663))))
                                                                         g8662))))
                                                             g8661))
                                                         'module
                                                         'importer
                                                         blocks->image))
                                                       (x8659 (input)))
                                                (x8660 x8659)))
                                             (g8182
                                              (letrec ((x8672
                                                        ((lambda (j7204
                                                                  k7205
                                                                  f7206)
                                                           (letrec ((g8673
                                                                     (lambda (g7203)
                                                                       (letrec ((g8674
                                                                                 (letrec ((x8675
                                                                                           (letrec ((x8676
                                                                                                     (BLOCK/C
                                                                                                      j7204
                                                                                                      k7205
                                                                                                      g7203)))
                                                                                             (f7206
                                                                                              x8676))))
                                                                                   (image/c
                                                                                    j7204
                                                                                    k7205
                                                                                    x8675))))
                                                                         g8674))))
                                                             g8673))
                                                         'module
                                                         'importer
                                                         block->image))
                                                       (x8665
                                                        (letrec ((x8666
                                                                  (letrec ((x8671
                                                                            (input))
                                                                           (x8667
                                                                            (letrec ((x8670
                                                                                      (input))
                                                                                     (x8668
                                                                                      (letrec ((x8669
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8669
                                                                                         '()))))
                                                                              (cons
                                                                               x8670
                                                                               x8668))))
                                                                    (cons
                                                                     x8671
                                                                     x8667))))
                                                          (cons
                                                           'block
                                                           x8666))))
                                                (x8672 x8665)))
                                             (g8183
                                              (letrec ((x8685
                                                        ((lambda (j7209
                                                                  k7210
                                                                  f7211)
                                                           (letrec ((g8686
                                                                     (lambda (g7207
                                                                              g7208)
                                                                       (letrec ((g8687
                                                                                 (letrec ((x8688
                                                                                           (letrec ((x8690
                                                                                                     (BLOCK/C
                                                                                                      j7209
                                                                                                      k7210
                                                                                                      g7207))
                                                                                                    (x8689
                                                                                                     (image/c
                                                                                                      j7209
                                                                                                      k7210
                                                                                                      g7208)))
                                                                                             (f7211
                                                                                              x8690
                                                                                              x8689))))
                                                                                   (image/c
                                                                                    j7209
                                                                                    k7210
                                                                                    x8688))))
                                                                         g8687))))
                                                             g8686))
                                                         'module
                                                         'importer
                                                         place-block))
                                                       (x8678
                                                        (letrec ((x8679
                                                                  (letrec ((x8684
                                                                            (input))
                                                                           (x8680
                                                                            (letrec ((x8683
                                                                                      (input))
                                                                                     (x8681
                                                                                      (letrec ((x8682
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8682
                                                                                         '()))))
                                                                              (cons
                                                                               x8683
                                                                               x8681))))
                                                                    (cons
                                                                     x8684
                                                                     x8680))))
                                                          (cons 'block x8679)))
                                                       (x8677 (input)))
                                                (x8685 x8678 x8677)))
                                             (g8184
                                              (letrec ((x8692
                                                        ((lambda (j7213
                                                                  k7214
                                                                  f7215)
                                                           (letrec ((g8693
                                                                     (lambda (g7212)
                                                                       (letrec ((g8694
                                                                                 (letrec ((x8695
                                                                                           (letrec ((x8696
                                                                                                     (letrec ((x8697
                                                                                                               (letrec ((x8698
                                                                                                                         (listof
                                                                                                                          TETRA/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x8698))))
                                                                                                       (x8697
                                                                                                        j7213
                                                                                                        k7214
                                                                                                        g7212))))
                                                                                             (f7215
                                                                                              x8696))))
                                                                                   (WORLD/C
                                                                                    j7213
                                                                                    k7214
                                                                                    x8695))))
                                                                         g8694))))
                                                             g8693))
                                                         'module
                                                         'importer
                                                         world0))
                                                       (x8691 (input)))
                                                (x8692 x8691))))
                                      g8184))))
                          g7252))))
              g7250)))
    g7249))
