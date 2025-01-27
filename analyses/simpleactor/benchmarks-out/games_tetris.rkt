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
                                                                                                                (letrec ((x7479
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7478
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7461
                                                                                                                          (letrec ((x7475
                                                                                                                                    (letrec ((x7476
                                                                                                                                              (letrec ((x7477
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7477))))
                                                                                                                                      (x7476)))
                                                                                                                                   (x7462
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
                                                                                                                            (let x7475 x7462))))
                                                                                                                  (and x7479
                                                                                                                       x7478
                                                                                                                       x7461)))))
                                                                                                      g7460)))))
                                                                                        g7451)))))
                                                                          g7447)))))
                                                            g7444))))
                                                g7443)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7480
                                                        (letrec ((x7481
                                                                  (letrec ((x7482
                                                                            (letrec ((x7483
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7483))))
                                                                    (car
                                                                     x7482))))
                                                          (cdr x7481))))
                                                g7480)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7484
                                                        (letrec ((x7485
                                                                  (letrec ((x7486
                                                                            (letrec ((x7487
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7487))))
                                                                    (car
                                                                     x7486))))
                                                          (car x7485))))
                                                g7484)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7488 (eq? x y)))
                                                g7488)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7489
                                                        (letrec ((x7491
                                                                  (number? x)))
                                                          (assert x7491)))
                                                       (g7490
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7492
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7493
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7493)))))
                                                            g7492))))
                                                g7490)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7494
                                                        (letrec ((x7497
                                                                  (string?
                                                                   filename)))
                                                          (assert x7497)))
                                                       (g7495
                                                        (letrec ((x7498
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7498)))
                                                       (g7496
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7499
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7500 res))
                                                            g7500))))
                                                g7496)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7501 (cons x '())))
                                                g7501)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7502
                                                        (letrec ((x7505
                                                                  (char? c1)))
                                                          (assert x7505)))
                                                       (g7503
                                                        (letrec ((x7506
                                                                  (char? c2)))
                                                          (assert x7506)))
                                                       (g7504
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7507
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7507))))
                                                g7504)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7508
                                                        (letrec ((x7509
                                                                  (letrec ((x7510
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7510))))
                                                          (cdr x7509))))
                                                g7508)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7511
                                                        (letrec ((x7512
                                                                  (letrec ((x7513
                                                                            (letrec ((x7514
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7514))))
                                                                    (car
                                                                     x7513))))
                                                          (cdr x7512))))
                                                g7511)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7515
                                                        (letrec ((x7516
                                                                  (letrec ((x7517
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7517))))
                                                          (car x7516))))
                                                g7515)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7518
                                                        (letrec ((x7519
                                                                  (letrec ((x7520
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7520))))
                                                          (car x7519))))
                                                g7518)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7521
                                                        (letrec ((x7524
                                                                  (char? c1)))
                                                          (assert x7524)))
                                                       (g7522
                                                        (letrec ((x7525
                                                                  (char? c2)))
                                                          (assert x7525)))
                                                       (g7523
                                                        (letrec ((x7526
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7526))))
                                                g7523)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7527
                                                        (letrec ((x7528
                                                                  (letrec ((x7529
                                                                            (letrec ((x7530
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7530))))
                                                                    (car
                                                                     x7529))))
                                                          (car x7528))))
                                                g7527)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7531
                                                        (letrec ((x7533
                                                                  (number? x)))
                                                          (assert x7533)))
                                                       (g7532 (< x 0)))
                                                g7532)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7534 (memq e l)))
                                                g7534)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7535
                                                        (letrec ((x7536
                                                                  (letrec ((x7537
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7537))))
                                                          (car x7536))))
                                                g7535)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7538 '())) g7538)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7539
                                                        (letrec ((x7541
                                                                  (list? l)))
                                                          (assert x7541)))
                                                       (g7540
                                                        (letrec ((x-cnd7542
                                                                  (null? l)))
                                                          (if x-cnd7542
                                                            '()
                                                            (letrec ((x7545
                                                                      (letrec ((x7546
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7546)))
                                                                     (x7543
                                                                      (letrec ((x7544
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7544))))
                                                              (append
                                                               x7545
                                                               x7543))))))
                                                g7540)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7547
                                                        (letrec ((x7548
                                                                  (letrec ((x7549
                                                                            (letrec ((x7550
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7550))))
                                                                    (car
                                                                     x7549))))
                                                          (car x7548))))
                                                g7547)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7551
                                                        (letrec ((x7552
                                                                  (letrec ((x7553
                                                                            (letrec ((x7554
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7554))))
                                                                    (cdr
                                                                     x7553))))
                                                          (cdr x7552))))
                                                g7551)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7555
                                                        (letrec ((x7557
                                                                  (number? x)))
                                                          (assert x7557)))
                                                       (g7556
                                                        (letrec ((x7558
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7558))))
                                                g7556)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7559
                                                        (letrec ((x7560
                                                                  (letrec ((x7561
                                                                            (letrec ((x7562
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7562))))
                                                                    (car
                                                                     x7561))))
                                                          (car x7560))))
                                                g7559)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7563
                                                        (letrec ((x7566
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7566)))
                                                       (g7564
                                                        (letrec ((x7567
                                                                  (list?
                                                                   args)))
                                                          (assert x7567)))
                                                       (g7565
                                                        (if cnd
                                                          (letrec ((g7568
                                                                    (proc)))
                                                            g7568)
                                                          (if cnd
                                                            (letrec ((g7569
                                                                      (letrec ((x7570
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7570))))
                                                              g7569)
                                                            (if cnd
                                                              (letrec ((g7571
                                                                        (letrec ((x7573
                                                                                  (car
                                                                                   args))
                                                                                 (x7572
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7573
                                                                           x7572))))
                                                                g7571)
                                                              (if cnd
                                                                (letrec ((g7574
                                                                          (letrec ((x7577
                                                                                    (car
                                                                                     args))
                                                                                   (x7576
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7575
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7577
                                                                             x7576
                                                                             x7575))))
                                                                  g7574)
                                                                (if cnd
                                                                  (letrec ((g7578
                                                                            (letrec ((x7582
                                                                                      (car
                                                                                       args))
                                                                                     (x7581
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7580
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7579
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7582
                                                                               x7581
                                                                               x7580
                                                                               x7579))))
                                                                    g7578)
                                                                  (if cnd
                                                                    (letrec ((g7583
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
                                                                                         args))
                                                                                       (x7584
                                                                                        (letrec ((x7585
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7585))))
                                                                                (proc
                                                                                 x7589
                                                                                 x7588
                                                                                 x7587
                                                                                 x7586
                                                                                 x7584))))
                                                                      g7583)
                                                                    (if cnd
                                                                      (letrec ((g7590
                                                                                (letrec ((x7598
                                                                                          (car
                                                                                           args))
                                                                                         (x7597
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7596
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7595
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7593
                                                                                          (letrec ((x7594
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7594)))
                                                                                         (x7591
                                                                                          (letrec ((x7592
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7592))))
                                                                                  (proc
                                                                                   x7598
                                                                                   x7597
                                                                                   x7596
                                                                                   x7595
                                                                                   x7593
                                                                                   x7591))))
                                                                        g7590)
                                                                      (if cnd
                                                                        (letrec ((g7599
                                                                                  (letrec ((x7609
                                                                                            (car
                                                                                             args))
                                                                                           (x7608
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7607
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7606
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7604
                                                                                            (letrec ((x7605
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7605)))
                                                                                           (x7602
                                                                                            (letrec ((x7603
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7603)))
                                                                                           (x7600
                                                                                            (letrec ((x7601
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7601))))
                                                                                    (proc
                                                                                     x7609
                                                                                     x7608
                                                                                     x7607
                                                                                     x7606
                                                                                     x7604
                                                                                     x7602
                                                                                     x7600))))
                                                                          g7599)
                                                                        (letrec ((g7610
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7610)))))))))))
                                                g7565)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7611
                                                        (letrec ((x7613
                                                                  (list? l)))
                                                          (assert x7613)))
                                                       (g7612
                                                        (letrec ((x-cnd7614
                                                                  (null? l)))
                                                          (if x-cnd7614
                                                            #f
                                                            (letrec ((x-cnd7615
                                                                      (letrec ((x7616
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7616
                                                                         e))))
                                                              (if x-cnd7615
                                                                l
                                                                (letrec ((x7617
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7617))))))))
                                                g7612)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7618
                                                        (letrec ((x7619
                                                                  (letrec ((x7620
                                                                            (letrec ((x7621
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7621))))
                                                                    (cdr
                                                                     x7620))))
                                                          (cdr x7619))))
                                                g7618)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7622
                                                        (letrec ((x7623
                                                                  (letrec ((x7624
                                                                            (letrec ((x7625
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7625))))
                                                                    (cdr
                                                                     x7624))))
                                                          (car x7623))))
                                                g7622)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7626 (random 42)))
                                                g7626)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7627
                                                        (letrec ((x7629
                                                                  (number? x)))
                                                          (assert x7629)))
                                                       (g7628 (= x 0)))
                                                g7628)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7630
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7631
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7631))))
                                                g7630)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7632
                                                        (letrec ((x7633
                                                                  (cdr x)))
                                                          (car x7633))))
                                                g7632)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7634
                                                        (letrec ((val6900
                                                                  (letrec ((x7637
                                                                            (pair?
                                                                             l))
                                                                           (x7635
                                                                            (letrec ((x7636
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7636))))
                                                                    (and x7637
                                                                         x7635))))
                                                          (letrec ((g7638
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7638))))
                                                g7634)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7639
                                                        (letrec ((x7640
                                                                  (letrec ((x7641
                                                                            (letrec ((x7642
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7642))))
                                                                    (cdr
                                                                     x7641))))
                                                          (cdr x7640))))
                                                g7639)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7643
                                                        (letrec ((x-cnd7644
                                                                  (letrec ((x7645
                                                                            #\0))
                                                                    (char<=?
                                                                     x7645
                                                                     c))))
                                                          (if x-cnd7644
                                                            (letrec ((x7646
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7646))
                                                            #f))))
                                                g7643)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7647
                                                        (letrec ((x7649
                                                                  (list? l)))
                                                          (assert x7649)))
                                                       (g7648
                                                        (letrec ((x-cnd7650
                                                                  (null? l)))
                                                          (if x-cnd7650
                                                            #f
                                                            (letrec ((x-cnd7651
                                                                      (letrec ((x7652
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7652
                                                                         k))))
                                                              (if x-cnd7651
                                                                (car l)
                                                                (letrec ((x7653
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7653))))))))
                                                g7648)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7654 (if x #f #t)))
                                                g7654)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7655 (append l1 l2)))
                                                g7655)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7656
                                                        (letrec ((x7658
                                                                  (list? l)))
                                                          (assert x7658)))
                                                       (g7657
                                                        (letrec ((x-cnd7659
                                                                  (null? l)))
                                                          (if x-cnd7659
                                                            #f
                                                            (letrec ((x-cnd7660
                                                                      (letrec ((x7661
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7661
                                                                         e))))
                                                              (if x-cnd7660
                                                                l
                                                                (letrec ((x7662
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7662))))))))
                                                g7657)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7663
                                                        (letrec ((x7664
                                                                  (letrec ((x7665
                                                                            (letrec ((x7666
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7666))))
                                                                    (cdr
                                                                     x7665))))
                                                          (car x7664))))
                                                g7663)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7667
                                                        (letrec ((x7669
                                                                  (list? l)))
                                                          (assert x7669)))
                                                       (g7668
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7670
                                                                              (letrec ((x-cnd7671
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7671
                                                                                  0
                                                                                  (letrec ((x7672
                                                                                            (letrec ((x7673
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7673))))
                                                                                    (+
                                                                                     1
                                                                                     x7672))))))
                                                                      g7670))))
                                                          (letrec ((g7674
                                                                    (rec l)))
                                                            g7674))))
                                                g7668)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7675
                                                        (letrec ((x7678
                                                                  (char? c1)))
                                                          (assert x7678)))
                                                       (g7676
                                                        (letrec ((x7679
                                                                  (char? c2)))
                                                          (assert x7679)))
                                                       (g7677
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7680
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7680))))
                                                g7677)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7681
                                                        (letrec ((x7682
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7682))))
                                                g7681)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7683
                                                        (letrec ((x7684
                                                                  (letrec ((x7685
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7685))))
                                                          (cdr x7684))))
                                                g7683)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7686
                                                        (letrec ((x7688
                                                                  (list? l)))
                                                          (assert x7688)))
                                                       (g7687
                                                        (letrec ((x-cnd7689
                                                                  (null? l)))
                                                          (if x-cnd7689
                                                            #f
                                                            (letrec ((x-cnd7690
                                                                      (letrec ((x7691
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7691
                                                                         k))))
                                                              (if x-cnd7690
                                                                (car l)
                                                                (letrec ((x7692
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7692))))))))
                                                g7687)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7693
                                                        (letrec ((x7694
                                                                  (car x)))
                                                          (car x7694))))
                                                g7693)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7695
                                                        (letrec ((x7698
                                                                  (char? c1)))
                                                          (assert x7698)))
                                                       (g7696
                                                        (letrec ((x7699
                                                                  (char? c2)))
                                                          (assert x7699)))
                                                       (g7697
                                                        (letrec ((x7700
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7700))))
                                                g7697)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7701
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7702
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7702))))
                                                g7701)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7703
                                                        (letrec ((x7706
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7706)))
                                                       (g7704
                                                        (letrec ((x7707
                                                                  (list? l)))
                                                          (assert x7707)))
                                                       (g7705
                                                        (letrec ((x-cnd7708
                                                                  (null? l)))
                                                          (if x-cnd7708
                                                            #t
                                                            (letrec ((x-cnd7709
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7709
                                                                (letrec ((g7710
                                                                          (letrec ((x7712
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7712)))
                                                                         (g7711
                                                                          (letrec ((x7713
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7713))))
                                                                  g7711)
                                                                '()))))))
                                                g7705)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7714
                                                        (letrec ((x7716
                                                                  (number? x)))
                                                          (assert x7716)))
                                                       (g7715
                                                        (letrec ((x-cnd7717
                                                                  (< x 0)))
                                                          (if x-cnd7717
                                                            (- 0 x)
                                                            x))))
                                                g7715)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7718
                                                        (letrec ((x7721
                                                                  (char? c1)))
                                                          (assert x7721)))
                                                       (g7719
                                                        (letrec ((x7722
                                                                  (char? c2)))
                                                          (assert x7722)))
                                                       (g7720
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7723
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7723))))
                                                g7720)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7724
                                                        (letrec ((x7725
                                                                  (letrec ((x7726
                                                                            (letrec ((x7727
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7727))))
                                                                    (cdr
                                                                     x7726))))
                                                          (car x7725))))
                                                g7724)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7728 #f)) g7728)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7729
                                                        (letrec ((x7731
                                                                  (letrec ((x7732
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7732)))
                                                                 (x7730
                                                                  (gcd m n)))
                                                          (/ x7731 x7730))))
                                                g7729)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7733
                                                        (letrec ((x7735
                                                                  (number? x)))
                                                          (assert x7735)))
                                                       (g7734
                                                        (letrec ((x7736
                                                                  (<= x y)))
                                                          (not x7736))))
                                                g7734)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7737
                                                        (letrec ((x7741
                                                                  (list? l)))
                                                          (assert x7741)))
                                                       (g7738
                                                        (letrec ((x7742
                                                                  (number?
                                                                   index)))
                                                          (assert x7742)))
                                                       (g7739
                                                        (letrec ((x7743
                                                                  (letrec ((x7744
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7744))))
                                                          (assert x7743)))
                                                       (g7740
                                                        (letrec ((x-cnd7745
                                                                  (= index 0)))
                                                          (if x-cnd7745
                                                            (car l)
                                                            (letrec ((x7747
                                                                      (cdr l))
                                                                     (x7746
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7747
                                                               x7746))))))
                                                g7740)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7748
                                                        (letrec ((x-cnd7749
                                                                  (= b 0)))
                                                          (if x-cnd7749
                                                            a
                                                            (letrec ((x7750
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7750))))))
                                                g7748)))
                                           (block
                                            (lambda (x7217 y7218 color7219)
                                              (letrec ((g7751
                                                        (letrec ((x7752
                                                                  (letrec ((x7753
                                                                            (letrec ((x7754
                                                                                      (cons
                                                                                       color7219
                                                                                       '())))
                                                                              (cons
                                                                               y7218
                                                                               x7754))))
                                                                    (cons
                                                                     x7217
                                                                     x7753))))
                                                          (cons
                                                           'block
                                                           x7752))))
                                                g7751)))
                                           (block?
                                            (lambda (block7216)
                                              (letrec ((g7755
                                                        (letrec ((x7756
                                                                  (car
                                                                   block7216)))
                                                          (eq? x7756 'block))))
                                                g7755)))
                                           (block-x
                                            (lambda (block)
                                              (letrec ((g7757
                                                        (letrec ((x7758
                                                                  (cdr block)))
                                                          (car x7758))))
                                                g7757)))
                                           (block-y
                                            (lambda (block)
                                              (letrec ((g7759
                                                        (letrec ((x7760
                                                                  (letrec ((x7761
                                                                            (cdr
                                                                             block)))
                                                                    (cdr
                                                                     x7761))))
                                                          (car x7760))))
                                                g7759)))
                                           (block-color
                                            (lambda (block)
                                              (letrec ((g7762
                                                        (letrec ((x7763
                                                                  (letrec ((x7764
                                                                            (letrec ((x7765
                                                                                      (cdr
                                                                                       block)))
                                                                              (cdr
                                                                               x7765))))
                                                                    (cdr
                                                                     x7764))))
                                                          (car x7763))))
                                                g7762)))
                                           (tetra
                                            (lambda (center7224 blocks7225)
                                              (letrec ((g7766
                                                        (letrec ((x7767
                                                                  (letrec ((x7768
                                                                            (cons
                                                                             blocks7225
                                                                             '())))
                                                                    (cons
                                                                     center7224
                                                                     x7768))))
                                                          (cons
                                                           'tetra
                                                           x7767))))
                                                g7766)))
                                           (tetra?
                                            (lambda (tetra7223)
                                              (letrec ((g7769
                                                        (letrec ((x7770
                                                                  (car
                                                                   tetra7223)))
                                                          (eq? x7770 'tetra))))
                                                g7769)))
                                           (tetra-center
                                            (lambda (tetra)
                                              (letrec ((g7771
                                                        (letrec ((x7772
                                                                  (cdr tetra)))
                                                          (car x7772))))
                                                g7771)))
                                           (tetra-blocks
                                            (lambda (tetra)
                                              (letrec ((g7773
                                                        (letrec ((x7774
                                                                  (letrec ((x7775
                                                                            (cdr
                                                                             tetra)))
                                                                    (cdr
                                                                     x7775))))
                                                          (car x7774))))
                                                g7773)))
                                           (world
                                            (lambda (tetra7229 blocks7230)
                                              (letrec ((g7776
                                                        (letrec ((x7777
                                                                  (letrec ((x7778
                                                                            (cons
                                                                             blocks7230
                                                                             '())))
                                                                    (cons
                                                                     tetra7229
                                                                     x7778))))
                                                          (cons
                                                           'world
                                                           x7777))))
                                                g7776)))
                                           (world?
                                            (lambda (world7228)
                                              (letrec ((g7779
                                                        (letrec ((x7780
                                                                  (car
                                                                   world7228)))
                                                          (eq? x7780 'world))))
                                                g7779)))
                                           (world-tetra
                                            (lambda (world)
                                              (letrec ((g7781
                                                        (letrec ((x7782
                                                                  (cdr world)))
                                                          (car x7782))))
                                                g7781)))
                                           (world-blocks
                                            (lambda (world)
                                              (letrec ((g7783
                                                        (letrec ((x7784
                                                                  (letrec ((x7785
                                                                            (cdr
                                                                             world)))
                                                                    (cdr
                                                                     x7785))))
                                                          (car x7784))))
                                                g7783)))
                                           (posn
                                            (lambda (x7234 y7235)
                                              (letrec ((g7786
                                                        (letrec ((x7787
                                                                  (letrec ((x7788
                                                                            (cons
                                                                             y7235
                                                                             '())))
                                                                    (cons
                                                                     x7234
                                                                     x7788))))
                                                          (cons 'posn x7787))))
                                                g7786)))
                                           (posn?
                                            (lambda (posn7233)
                                              (letrec ((g7789
                                                        (letrec ((x7790
                                                                  (car
                                                                   posn7233)))
                                                          (eq? x7790 'posn))))
                                                g7789)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g7791
                                                        (letrec ((x7792
                                                                  (cdr posn)))
                                                          (car x7792))))
                                                g7791)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g7793
                                                        (letrec ((x7794
                                                                  (letrec ((x7795
                                                                            (cdr
                                                                             posn)))
                                                                    (cdr
                                                                     x7795))))
                                                          (car x7794))))
                                                g7793)))
                                           (COLOR/C symbol?)
                                           (POSN/C
                                            (lambda (j6975 k6976 v6974)
                                              (letrec ((g7796
                                                        (letrec ((checked6977
                                                                  (letrec ((x7797
                                                                            (car
                                                                             v6974)))
                                                                    (real?/c
                                                                     'j6975
                                                                     'k6976
                                                                     x7797))))
                                                          (letrec ((g7798
                                                                    (letrec ((checked6978
                                                                              (letrec ((x7799
                                                                                        (letrec ((x7800
                                                                                                  (cdr
                                                                                                   v6974)))
                                                                                          (car
                                                                                           x7800))))
                                                                                (real?/c
                                                                                 'j6975
                                                                                 'k6976
                                                                                 x7799))))
                                                                      (letrec ((g7801
                                                                                (letrec ((x7802
                                                                                          (letrec ((x7803
                                                                                                    (cons
                                                                                                     checked6978
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked6977
                                                                                             x7803))))
                                                                                  (cons
                                                                                   posn
                                                                                   x7802))))
                                                                        g7801))))
                                                            g7798))))
                                                g7796)))
                                           (BLOCK/C
                                            (lambda (j6981 k6982 v6980)
                                              (letrec ((g7804
                                                        (letrec ((checked6983
                                                                  (letrec ((x7805
                                                                            (car
                                                                             v6980)))
                                                                    (real?/c
                                                                     'j6981
                                                                     'k6982
                                                                     x7805))))
                                                          (letrec ((g7806
                                                                    (letrec ((checked6984
                                                                              (letrec ((x7807
                                                                                        (letrec ((x7808
                                                                                                  (cdr
                                                                                                   v6980)))
                                                                                          (car
                                                                                           x7808))))
                                                                                (real?/c
                                                                                 'j6981
                                                                                 'k6982
                                                                                 x7807))))
                                                                      (letrec ((g7809
                                                                                (letrec ((checked6985
                                                                                          (letrec ((x7810
                                                                                                    (letrec ((x7811
                                                                                                              (letrec ((x7812
                                                                                                                        (cdr
                                                                                                                         v6980)))
                                                                                                                (cdr
                                                                                                                 x7812))))
                                                                                                      (car
                                                                                                       x7811))))
                                                                                            (COLOR/C
                                                                                             'j6981
                                                                                             'k6982
                                                                                             x7810))))
                                                                                  (letrec ((g7813
                                                                                            (letrec ((x7814
                                                                                                      (letrec ((x7815
                                                                                                                (letrec ((x7816
                                                                                                                          (cons
                                                                                                                           checked6985
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   checked6984
                                                                                                                   x7816))))
                                                                                                        (cons
                                                                                                         checked6983
                                                                                                         x7815))))
                                                                                              (cons
                                                                                               block
                                                                                               x7814))))
                                                                                    g7813))))
                                                                        g7809))))
                                                            g7806))))
                                                g7804)))
                                           (BSET/C (listof BLOCK/C))
                                           (TETRA/C
                                            (lambda (j6988 k6989 v6987)
                                              (letrec ((g7817
                                                        (letrec ((checked6990
                                                                  (letrec ((x7818
                                                                            (car
                                                                             v6987)))
                                                                    (POSN/C
                                                                     'j6988
                                                                     'k6989
                                                                     x7818))))
                                                          (letrec ((g7819
                                                                    (letrec ((checked6991
                                                                              (letrec ((x7820
                                                                                        (letrec ((x7821
                                                                                                  (cdr
                                                                                                   v6987)))
                                                                                          (car
                                                                                           x7821))))
                                                                                (BSET/C
                                                                                 'j6988
                                                                                 'k6989
                                                                                 x7820))))
                                                                      (letrec ((g7822
                                                                                (letrec ((x7823
                                                                                          (letrec ((x7824
                                                                                                    (cons
                                                                                                     checked6991
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked6990
                                                                                             x7824))))
                                                                                  (cons
                                                                                   tetra
                                                                                   x7823))))
                                                                        g7822))))
                                                            g7819))))
                                                g7817)))
                                           (WORLD/C
                                            (lambda (j6994 k6995 v6993)
                                              (letrec ((g7825
                                                        (letrec ((checked6996
                                                                  (letrec ((x7826
                                                                            (car
                                                                             v6993)))
                                                                    (TETRA/C
                                                                     'j6994
                                                                     'k6995
                                                                     x7826))))
                                                          (letrec ((g7827
                                                                    (letrec ((checked6997
                                                                              (letrec ((x7828
                                                                                        (letrec ((x7829
                                                                                                  (cdr
                                                                                                   v6993)))
                                                                                          (car
                                                                                           x7829))))
                                                                                (BSET/C
                                                                                 'j6994
                                                                                 'k6995
                                                                                 x7828))))
                                                                      (letrec ((g7830
                                                                                (letrec ((x7831
                                                                                          (letrec ((x7832
                                                                                                    (cons
                                                                                                     checked6997
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked6996
                                                                                             x7832))))
                                                                                  (cons
                                                                                   world
                                                                                   x7831))))
                                                                        g7830))))
                                                            g7827))))
                                                g7825)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g7833
                                                        (letrec ((x-cnd7834
                                                                  (letrec ((x7836
                                                                            (posn-x
                                                                             p1))
                                                                           (x7835
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x7836
                                                                     x7835))))
                                                          (if x-cnd7834
                                                            (letrec ((x7838
                                                                      (posn-y
                                                                       p1))
                                                                     (x7837
                                                                      (posn-y
                                                                       p2)))
                                                              (= x7838 x7837))
                                                            #f))))
                                                g7833)))
                                           (block-size 20)
                                           (board-height 20)
                                           (board-width 10)
                                           (block=?
                                            (lambda (b1 b2)
                                              (letrec ((g7839
                                                        (letrec ((x-cnd7840
                                                                  (letrec ((x7842
                                                                            (block-x
                                                                             b1))
                                                                           (x7841
                                                                            (block-x
                                                                             b2)))
                                                                    (=
                                                                     x7842
                                                                     x7841))))
                                                          (if x-cnd7840
                                                            (letrec ((x7844
                                                                      (block-y
                                                                       b1))
                                                                     (x7843
                                                                      (block-y
                                                                       b2)))
                                                              (= x7844 x7843))
                                                            #f))))
                                                g7839)))
                                           (block-move
                                            (lambda (dx dy b)
                                              (letrec ((g7845
                                                        (letrec ((x7849
                                                                  (letrec ((x7850
                                                                            (block-x
                                                                             b)))
                                                                    (+
                                                                     dx
                                                                     x7850)))
                                                                 (x7847
                                                                  (letrec ((x7848
                                                                            (block-y
                                                                             b)))
                                                                    (+
                                                                     dy
                                                                     x7848)))
                                                                 (x7846
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x7849
                                                           x7847
                                                           x7846))))
                                                g7845)))
                                           (block-rotate-ccw
                                            (lambda (c b)
                                              (letrec ((g7851
                                                        (letrec ((x7858
                                                                  (letrec ((x7862
                                                                            (posn-x
                                                                             c))
                                                                           (x7859
                                                                            (letrec ((x7861
                                                                                      (posn-y
                                                                                       c))
                                                                                     (x7860
                                                                                      (block-y
                                                                                       b)))
                                                                              (-
                                                                               x7861
                                                                               x7860))))
                                                                    (+
                                                                     x7862
                                                                     x7859)))
                                                                 (x7853
                                                                  (letrec ((x7857
                                                                            (posn-y
                                                                             c))
                                                                           (x7854
                                                                            (letrec ((x7856
                                                                                      (block-x
                                                                                       b))
                                                                                     (x7855
                                                                                      (posn-x
                                                                                       c)))
                                                                              (-
                                                                               x7856
                                                                               x7855))))
                                                                    (+
                                                                     x7857
                                                                     x7854)))
                                                                 (x7852
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x7858
                                                           x7853
                                                           x7852))))
                                                g7851)))
                                           (block-rotate-cw
                                            (lambda (c b)
                                              (letrec ((g7863
                                                        (letrec ((x7864
                                                                  (letrec ((x7865
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (block-rotate-ccw
                                                                     c
                                                                     x7865))))
                                                          (block-rotate-ccw
                                                           c
                                                           x7864))))
                                                g7863)))
                                           (ormap
                                            (lambda (p? xs)
                                              (letrec ((g7866
                                                        (if cnd
                                                          (letrec ((g7867 #f))
                                                            g7867)
                                                          (letrec ((g7868
                                                                    (letrec ((x7871
                                                                              (letrec ((x7872
                                                                                        (car
                                                                                         xs)))
                                                                                (p?
                                                                                 x7872)))
                                                                             (x7869
                                                                              (letrec ((x7870
                                                                                        (cdr
                                                                                         xs)))
                                                                                (ormap
                                                                                 p?
                                                                                 x7870))))
                                                                      (or x7871
                                                                          x7869))))
                                                            g7868))))
                                                g7866)))
                                           (andmap
                                            (lambda (p? xs)
                                              (letrec ((g7873
                                                        (if cnd
                                                          (letrec ((g7874 #t))
                                                            g7874)
                                                          (letrec ((g7875
                                                                    (letrec ((x7878
                                                                              (letrec ((x7879
                                                                                        (car
                                                                                         xs)))
                                                                                (p?
                                                                                 x7879)))
                                                                             (x7876
                                                                              (letrec ((x7877
                                                                                        (cdr
                                                                                         xs)))
                                                                                (andmap
                                                                                 p?
                                                                                 x7877))))
                                                                      (and x7878
                                                                           x7876))))
                                                            g7875))))
                                                g7873)))
                                           (map
                                            (lambda (f xs)
                                              (letrec ((g7880
                                                        (if cnd
                                                          (letrec ((g7881
                                                                    null))
                                                            g7881)
                                                          (letrec ((g7882
                                                                    (letrec ((x7885
                                                                              (letrec ((x7886
                                                                                        (car
                                                                                         xs)))
                                                                                (f
                                                                                 x7886)))
                                                                             (x7883
                                                                              (letrec ((x7884
                                                                                        (cdr
                                                                                         xs)))
                                                                                (map
                                                                                 f
                                                                                 x7884))))
                                                                      (cons
                                                                       x7885
                                                                       x7883))))
                                                            g7882))))
                                                g7880)))
                                           (filter
                                            (lambda (p? xs)
                                              (letrec ((g7887
                                                        (if cnd
                                                          (letrec ((g7888
                                                                    null))
                                                            g7888)
                                                          (if cnd
                                                            (letrec ((g7889
                                                                      (letrec ((x7892
                                                                                (car
                                                                                 xs))
                                                                               (x7890
                                                                                (letrec ((x7891
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (filter
                                                                                   p?
                                                                                   x7891))))
                                                                        (cons
                                                                         x7892
                                                                         x7890))))
                                                              g7889)
                                                            (letrec ((g7893
                                                                      (letrec ((x7894
                                                                                (cdr
                                                                                 xs)))
                                                                        (filter
                                                                         p?
                                                                         x7894))))
                                                              g7893)))))
                                                g7887)))
                                           (append
                                            (lambda (l r)
                                              (letrec ((g7895
                                                        (if cnd
                                                          (letrec ((g7896 r))
                                                            g7896)
                                                          (letrec ((g7897
                                                                    (letrec ((x7900
                                                                              (car
                                                                               l))
                                                                             (x7898
                                                                              (letrec ((x7899
                                                                                        (cdr
                                                                                         l)))
                                                                                (append
                                                                                 x7899
                                                                                 r))))
                                                                      (cons
                                                                       x7900
                                                                       x7898))))
                                                            g7897))))
                                                g7895)))
                                           (length
                                            (lambda (xs)
                                              (letrec ((g7901
                                                        (if cnd
                                                          (letrec ((g7902 0))
                                                            g7902)
                                                          (letrec ((g7903
                                                                    (letrec ((x7904
                                                                              (letrec ((x7905
                                                                                        (cdr
                                                                                         xs)))
                                                                                (length
                                                                                 x7905))))
                                                                      (+
                                                                       1
                                                                       x7904))))
                                                            g7903))))
                                                g7901)))
                                           (foldr
                                            (lambda (f a xs)
                                              (letrec ((g7906
                                                        (if cnd
                                                          (letrec ((g7907 a))
                                                            g7907)
                                                          (letrec ((g7908
                                                                    (letrec ((x7911
                                                                              (car
                                                                               xs))
                                                                             (x7909
                                                                              (letrec ((x7910
                                                                                        (cdr
                                                                                         xs)))
                                                                                (foldr
                                                                                 f
                                                                                 a
                                                                                 x7910))))
                                                                      (f
                                                                       x7911
                                                                       x7909))))
                                                            g7908))))
                                                g7906)))
                                           (blocks-contains?
                                            (lambda (bs b)
                                              (letrec ((g7912
                                                        (letrec ((x7913
                                                                  (letrec ((x7915
                                                                            (c))
                                                                           (x7914
                                                                            (block=?
                                                                             b
                                                                             c)))
                                                                    (λ x7915
                                                                      x7914))))
                                                          (ormap x7913 bs))))
                                                g7912)))
                                           (blocks-subset?
                                            (lambda (bs1 bs2)
                                              (letrec ((g7916
                                                        (letrec ((x7917
                                                                  (letrec ((x7919
                                                                            (b))
                                                                           (x7918
                                                                            (blocks-contains?
                                                                             bs2
                                                                             b)))
                                                                    (λ x7919
                                                                      x7918))))
                                                          (andmap x7917 bs1))))
                                                g7916)))
                                           (blocks=?
                                            (lambda (bs1 bs2)
                                              (letrec ((g7920
                                                        (letrec ((x-cnd7921
                                                                  (blocks-subset?
                                                                   bs1
                                                                   bs2)))
                                                          (if x-cnd7921
                                                            (blocks-subset?
                                                             bs2
                                                             bs1)
                                                            #f))))
                                                g7920)))
                                           (blocks-intersect
                                            (lambda (bs1 bs2)
                                              (letrec ((g7922
                                                        (letrec ((x7923
                                                                  (letrec ((x7925
                                                                            (b))
                                                                           (x7924
                                                                            (blocks-contains?
                                                                             bs2
                                                                             b)))
                                                                    (λ x7925
                                                                      x7924))))
                                                          (filter x7923 bs1))))
                                                g7922)))
                                           (blocks-count
                                            (lambda (bs)
                                              (letrec ((g7926 (length bs)))
                                                g7926)))
                                           (blocks-move
                                            (lambda (dx dy bs)
                                              (letrec ((g7927
                                                        (letrec ((x7928
                                                                  (letrec ((x7930
                                                                            (b))
                                                                           (x7929
                                                                            (block-move
                                                                             dx
                                                                             dy
                                                                             b)))
                                                                    (λ x7930
                                                                      x7929))))
                                                          (map x7928 bs))))
                                                g7927)))
                                           (blocks-rotate-ccw
                                            (lambda (c bs)
                                              (letrec ((g7931
                                                        (letrec ((x7932
                                                                  (letrec ((x7934
                                                                            (b))
                                                                           (x7933
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (λ x7934
                                                                      x7933))))
                                                          (map x7932 bs))))
                                                g7931)))
                                           (blocks-rotate-cw
                                            (lambda (c bs)
                                              (letrec ((g7935
                                                        (letrec ((x7936
                                                                  (letrec ((x7938
                                                                            (b))
                                                                           (x7937
                                                                            (block-rotate-cw
                                                                             c
                                                                             b)))
                                                                    (λ x7938
                                                                      x7937))))
                                                          (map x7936 bs))))
                                                g7935)))
                                           (blocks-change-color
                                            (lambda (bs c)
                                              (letrec ((g7939
                                                        (letrec ((x7940
                                                                  (letrec ((x7944
                                                                            (b))
                                                                           (x7941
                                                                            (letrec ((x7943
                                                                                      (block-x
                                                                                       b))
                                                                                     (x7942
                                                                                      (block-y
                                                                                       b)))
                                                                              (block
                                                                               x7943
                                                                               x7942
                                                                               c))))
                                                                    (λ x7944
                                                                      x7941))))
                                                          (map x7940 bs))))
                                                g7939)))
                                           (blocks-row
                                            (lambda (bs i)
                                              (letrec ((g7945
                                                        (letrec ((x7946
                                                                  (letrec ((x7949
                                                                            (b))
                                                                           (x7947
                                                                            (letrec ((x7948
                                                                                      (block-y
                                                                                       b)))
                                                                              (=
                                                                               i
                                                                               x7948))))
                                                                    (λ x7949
                                                                      x7947))))
                                                          (filter x7946 bs))))
                                                g7945)))
                                           (full-row?
                                            (lambda (bs i)
                                              (letrec ((g7950
                                                        (letrec ((x7951
                                                                  (letrec ((x7952
                                                                            (blocks-row
                                                                             bs
                                                                             i)))
                                                                    (blocks-count
                                                                     x7952))))
                                                          (=
                                                           board-width
                                                           x7951))))
                                                g7950)))
                                           (blocks-overflow?
                                            (lambda (bs)
                                              (letrec ((g7953
                                                        (letrec ((x7954
                                                                  (letrec ((x7957
                                                                            (b))
                                                                           (x7955
                                                                            (letrec ((x7956
                                                                                      (block-y
                                                                                       b)))
                                                                              (<=
                                                                               x7956
                                                                               0))))
                                                                    (λ x7957
                                                                      x7955))))
                                                          (ormap x7954 bs))))
                                                g7953)))
                                           (blocks-union
                                            (lambda (bs1 bs2)
                                              (letrec ((g7958
                                                        (letrec ((x7959
                                                                  (letrec ((x7963
                                                                            (b
                                                                             bs))
                                                                           (x7960
                                                                            (if cnd
                                                                              (letrec ((g7961
                                                                                        bs))
                                                                                g7961)
                                                                              (letrec ((g7962
                                                                                        (cons
                                                                                         b
                                                                                         bs)))
                                                                                g7962))))
                                                                    (λ x7963
                                                                      x7960))))
                                                          (foldr
                                                           x7959
                                                           bs2
                                                           bs1))))
                                                g7958)))
                                           (blocks-max-y
                                            (lambda (bs)
                                              (letrec ((g7964
                                                        (letrec ((x7965
                                                                  (letrec ((x7968
                                                                            (b
                                                                             n))
                                                                           (x7966
                                                                            (letrec ((x7967
                                                                                      (block-y
                                                                                       b)))
                                                                              (max
                                                                               x7967
                                                                               n))))
                                                                    (λ x7968
                                                                      x7966))))
                                                          (foldr x7965 0 bs))))
                                                g7964)))
                                           (blocks-min-x
                                            (lambda (bs)
                                              (letrec ((g7969
                                                        (letrec ((x7970
                                                                  (letrec ((x7973
                                                                            (b
                                                                             n))
                                                                           (x7971
                                                                            (letrec ((x7972
                                                                                      (block-x
                                                                                       b)))
                                                                              (min
                                                                               x7972
                                                                               n))))
                                                                    (λ x7973
                                                                      x7971))))
                                                          (foldr
                                                           x7970
                                                           board-width
                                                           bs))))
                                                g7969)))
                                           (blocks-max-x
                                            (lambda (bs)
                                              (letrec ((g7974
                                                        (letrec ((x7975
                                                                  (letrec ((x7978
                                                                            (b
                                                                             n))
                                                                           (x7976
                                                                            (letrec ((x7977
                                                                                      (block-x
                                                                                       b)))
                                                                              (max
                                                                               x7977
                                                                               n))))
                                                                    (λ x7978
                                                                      x7976))))
                                                          (foldr x7975 0 bs))))
                                                g7974)))
                                           (eliminate-full-rows
                                            (lambda (bs)
                                              (letrec ((g7979
                                                        (elim-row
                                                         bs
                                                         board-height
                                                         0)))
                                                g7979)))
                                           (elim-row
                                            (lambda (bs i offset)
                                              (letrec ((g7980
                                                        (if cnd
                                                          (letrec ((g7981
                                                                    empty))
                                                            g7981)
                                                          (if cnd
                                                            (letrec ((g7982
                                                                      (letrec ((x7984
                                                                                (sub1
                                                                                 i))
                                                                               (x7983
                                                                                (add1
                                                                                 offset)))
                                                                        (elim-row
                                                                         bs
                                                                         x7984
                                                                         x7983))))
                                                              g7982)
                                                            (letrec ((g7985
                                                                      (letrec ((x7988
                                                                                (letrec ((x7989
                                                                                          (sub1
                                                                                           i)))
                                                                                  (elim-row
                                                                                   bs
                                                                                   x7989
                                                                                   offset)))
                                                                               (x7986
                                                                                (letrec ((x7987
                                                                                          (blocks-row
                                                                                           bs
                                                                                           i)))
                                                                                  (blocks-move
                                                                                   0
                                                                                   offset
                                                                                   x7987))))
                                                                        (blocks-union
                                                                         x7988
                                                                         x7986))))
                                                              g7985)))))
                                                g7980)))
                                           (tetra-move
                                            (lambda (dx dy t)
                                              (letrec ((g7990
                                                        (letrec ((x7993
                                                                  (letrec ((x7997
                                                                            (letrec ((x7998
                                                                                      (letrec ((x7999
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-x
                                                                                         x7999))))
                                                                              (+
                                                                               dx
                                                                               x7998)))
                                                                           (x7994
                                                                            (letrec ((x7995
                                                                                      (letrec ((x7996
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-y
                                                                                         x7996))))
                                                                              (+
                                                                               dy
                                                                               x7995))))
                                                                    (posn
                                                                     x7997
                                                                     x7994)))
                                                                 (x7991
                                                                  (letrec ((x7992
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-move
                                                                     dx
                                                                     dy
                                                                     x7992))))
                                                          (tetra
                                                           x7993
                                                           x7991))))
                                                g7990)))
                                           (tetra-rotate-ccw
                                            (lambda (t)
                                              (letrec ((g8000
                                                        (letrec ((x8004
                                                                  (tetra-center
                                                                   t))
                                                                 (x8001
                                                                  (letrec ((x8003
                                                                            (tetra-center
                                                                             t))
                                                                           (x8002
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-ccw
                                                                     x8003
                                                                     x8002))))
                                                          (tetra
                                                           x8004
                                                           x8001))))
                                                g8000)))
                                           (tetra-rotate-cw
                                            (lambda (t)
                                              (letrec ((g8005
                                                        (letrec ((x8009
                                                                  (tetra-center
                                                                   t))
                                                                 (x8006
                                                                  (letrec ((x8008
                                                                            (tetra-center
                                                                             t))
                                                                           (x8007
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-cw
                                                                     x8008
                                                                     x8007))))
                                                          (tetra
                                                           x8009
                                                           x8006))))
                                                g8005)))
                                           (tetra-overlaps-blocks?
                                            (lambda (t bs)
                                              (letrec ((g8010
                                                        (letrec ((x8011
                                                                  (letrec ((x8012
                                                                            (letrec ((x8013
                                                                                      (tetra-blocks
                                                                                       t)))
                                                                              (blocks-intersect
                                                                               x8013
                                                                               bs))))
                                                                    (false?
                                                                     x8012))))
                                                          (false? x8011))))
                                                g8010)))
                                           (tetra-change-color
                                            (lambda (t c)
                                              (letrec ((g8014
                                                        (letrec ((x8017
                                                                  (tetra-center
                                                                   t))
                                                                 (x8015
                                                                  (letrec ((x8016
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-change-color
                                                                     x8016
                                                                     c))))
                                                          (tetra
                                                           x8017
                                                           x8015))))
                                                g8014)))
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
                                              (letrec ((g8018
                                                        (letrec ((x8019
                                                                  (letrec ((x8025
                                                                            (posn
                                                                             xc
                                                                             yc))
                                                                           (x8020
                                                                            (letrec ((x8024
                                                                                      (block
                                                                                       x1
                                                                                       y1
                                                                                       color))
                                                                                     (x8023
                                                                                      (block
                                                                                       x2
                                                                                       y2
                                                                                       color))
                                                                                     (x8022
                                                                                      (block
                                                                                       x3
                                                                                       y3
                                                                                       color))
                                                                                     (x8021
                                                                                      (block
                                                                                       x4
                                                                                       y4
                                                                                       color)))
                                                                              (list
                                                                               x8024
                                                                               x8023
                                                                               x8022
                                                                               x8021))))
                                                                    (tetra
                                                                     x8025
                                                                     x8020))))
                                                          (tetra-move
                                                           3
                                                           0
                                                           x8019))))
                                                g8018)))
                                           (touchdown
                                            (lambda (w tetras)
                                              (letrec ((g8026
                                                        (letrec ((x8032
                                                                  (list-pick-random
                                                                   tetras))
                                                                 (x8027
                                                                  (letrec ((x8028
                                                                            (letrec ((x8030
                                                                                      (letrec ((x8031
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8031)))
                                                                                     (x8029
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (blocks-union
                                                                               x8030
                                                                               x8029))))
                                                                    (eliminate-full-rows
                                                                     x8028))))
                                                          (world
                                                           x8032
                                                           x8027))))
                                                g8026)))
                                           (world-jump-down
                                            (lambda (w)
                                              (letrec ((g8033
                                                        (if cnd
                                                          (letrec ((g8034 w))
                                                            g8034)
                                                          (letrec ((g8035
                                                                    (letrec ((x8036
                                                                              (letrec ((x8038
                                                                                        (letrec ((x8039
                                                                                                  (world-tetra
                                                                                                   w)))
                                                                                          (tetra-move
                                                                                           0
                                                                                           1
                                                                                           x8039)))
                                                                                       (x8037
                                                                                        (world-blocks
                                                                                         w)))
                                                                                (world
                                                                                 x8038
                                                                                 x8037))))
                                                                      (world-jump-down
                                                                       x8036))))
                                                            g8035))))
                                                g8033)))
                                           (landed-on-blocks?
                                            (lambda (w)
                                              (letrec ((g8040
                                                        (letrec ((x8042
                                                                  (letrec ((x8043
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     0
                                                                     1
                                                                     x8043)))
                                                                 (x8041
                                                                  (world-blocks
                                                                   w)))
                                                          (tetra-overlaps-blocks?
                                                           x8042
                                                           x8041))))
                                                g8040)))
                                           (landed-on-floor?
                                            (lambda (w)
                                              (letrec ((g8044
                                                        (letrec ((x8046
                                                                  (letrec ((x8047
                                                                            (letrec ((x8048
                                                                                      (world-tetra
                                                                                       w)))
                                                                              (tetra-blocks
                                                                               x8048))))
                                                                    (blocks-max-y
                                                                     x8047)))
                                                                 (x8045
                                                                  (sub1
                                                                   board-height)))
                                                          (= x8046 x8045))))
                                                g8044)))
                                           (landed?
                                            (lambda (w)
                                              (letrec ((g8049
                                                        (letrec ((val6904
                                                                  (landed-on-blocks?
                                                                   w)))
                                                          (letrec ((g8050
                                                                    (if val6904
                                                                      val6904
                                                                      (landed-on-floor?
                                                                       w))))
                                                            g8050))))
                                                g8049)))
                                           (next-world
                                            (lambda (w tetras)
                                              (letrec ((g8051
                                                        (if cnd
                                                          (letrec ((g8052
                                                                    (touchdown
                                                                     w
                                                                     tetras)))
                                                            g8052)
                                                          (letrec ((g8053
                                                                    (letrec ((x8055
                                                                              (letrec ((x8056
                                                                                        (world-tetra
                                                                                         w)))
                                                                                (tetra-move
                                                                                 0
                                                                                 1
                                                                                 x8056)))
                                                                             (x8054
                                                                              (world-blocks
                                                                               w)))
                                                                      (world
                                                                       x8055
                                                                       x8054))))
                                                            g8053))))
                                                g8051)))
                                           (try-new-tetra
                                            (lambda (w new-tetra)
                                              (letrec ((g8057
                                                        (if cnd
                                                          (letrec ((g8058 w))
                                                            g8058)
                                                          (letrec ((g8059
                                                                    (letrec ((x8060
                                                                              (world-blocks
                                                                               w)))
                                                                      (world
                                                                       new-tetra
                                                                       x8060))))
                                                            g8059))))
                                                g8057)))
                                           (world-move
                                            (lambda (dx dy w)
                                              (letrec ((g8061
                                                        (letrec ((x8062
                                                                  (letrec ((x8063
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     dx
                                                                     dy
                                                                     x8063))))
                                                          (try-new-tetra
                                                           w
                                                           x8062))))
                                                g8061)))
                                           (world-rotate-ccw
                                            (lambda (w)
                                              (letrec ((g8064
                                                        (letrec ((x8065
                                                                  (letrec ((x8066
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-ccw
                                                                     x8066))))
                                                          (try-new-tetra
                                                           w
                                                           x8065))))
                                                g8064)))
                                           (world-rotate-cw
                                            (lambda (w)
                                              (letrec ((g8067
                                                        (letrec ((x8068
                                                                  (letrec ((x8069
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-cw
                                                                     x8069))))
                                                          (try-new-tetra
                                                           w
                                                           x8068))))
                                                g8067)))
                                           (ghost-blocks
                                            (lambda (w)
                                              (letrec ((g8070
                                                        (letrec ((x8071
                                                                  (letrec ((x8072
                                                                            (letrec ((x8073
                                                                                      (world-jump-down
                                                                                       w)))
                                                                              (world-tetra
                                                                               x8073))))
                                                                    (tetra-change-color
                                                                     x8072
                                                                     'gray))))
                                                          (tetra-blocks
                                                           x8071))))
                                                g8070)))
                                           (world-key-move
                                            (lambda (w k)
                                              (letrec ((g8074
                                                        (if cnd
                                                          (letrec ((g8075
                                                                    (world-move
                                                                     neg-1
                                                                     0
                                                                     w)))
                                                            g8075)
                                                          (if cnd
                                                            (letrec ((g8076
                                                                      (world-move
                                                                       1
                                                                       0
                                                                       w)))
                                                              g8076)
                                                            (if cnd
                                                              (letrec ((g8077
                                                                        (world-jump-down
                                                                         w)))
                                                                g8077)
                                                              (if cnd
                                                                (letrec ((g8078
                                                                          (world-rotate-ccw
                                                                           w)))
                                                                  g8078)
                                                                (if cnd
                                                                  (letrec ((g8079
                                                                            (world-rotate-cw
                                                                             w)))
                                                                    g8079)
                                                                  (letrec ((g8080
                                                                            w))
                                                                    g8080))))))))
                                                g8074)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8081
                                                        (cons 'image '())))
                                                g8081)))
                                           (image?
                                            (lambda (image7238)
                                              (letrec ((g8082
                                                        (letrec ((x8083
                                                                  (car
                                                                   image7238)))
                                                          (eq? x8083 'image))))
                                                g8082)))
                                           (overlay
                                            (lambda (i₁ i₂)
                                              (letrec ((g8084 (image)))
                                                g8084)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8085 (image)))
                                                g8085)))
                                           (rectangle
                                            (lambda (w h m c)
                                              (letrec ((g8086 (image)))
                                                g8086)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8087 (image)))
                                                g8087)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8088 (image)))
                                                g8088)))
                                           (list-pick-random
                                            (lambda (xs)
                                              (letrec ((g8089
                                                        (if cnd
                                                          (letrec ((g8090
                                                                    (car xs)))
                                                            g8090)
                                                          (letrec ((g8091
                                                                    (letrec ((x8092
                                                                              (cdr
                                                                               xs)))
                                                                      (list-pick-random
                                                                       x8092))))
                                                            g8091))))
                                                g8089)))
                                           (neg-1 (random 10))
                                           (world->image
                                            (lambda (w)
                                              (letrec ((g8093
                                                        (letrec ((x8097
                                                                  (letrec ((x8098
                                                                            (letrec ((x8102
                                                                                      (letrec ((x8103
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8103)))
                                                                                     (x8099
                                                                                      (letrec ((x8101
                                                                                                (ghost-blocks
                                                                                                 w))
                                                                                               (x8100
                                                                                                (world-blocks
                                                                                                 w)))
                                                                                        (append
                                                                                         x8101
                                                                                         x8100))))
                                                                              (append
                                                                               x8102
                                                                               x8099))))
                                                                    (blocks->image
                                                                     x8098)))
                                                                 (x8094
                                                                  (letrec ((x8096
                                                                            (*
                                                                             board-width
                                                                             block-size))
                                                                           (x8095
                                                                            (*
                                                                             board-height
                                                                             block-size)))
                                                                    (empty-scene
                                                                     x8096
                                                                     x8095))))
                                                          (place-image
                                                           x8097
                                                           0
                                                           0
                                                           x8094))))
                                                g8093)))
                                           (blocks->image
                                            (lambda (bs)
                                              (letrec ((g8104
                                                        (letrec ((x8110
                                                                  (letrec ((x8114
                                                                            (b
                                                                             img))
                                                                           (x8111
                                                                            (if cnd
                                                                              (letrec ((g8112
                                                                                        (place-block
                                                                                         b
                                                                                         img)))
                                                                                g8112)
                                                                              (letrec ((g8113
                                                                                        img))
                                                                                g8113))))
                                                                    (λ x8114
                                                                      x8111)))
                                                                 (x8105
                                                                  (letrec ((x8108
                                                                            (letrec ((x8109
                                                                                      (*
                                                                                       board-width
                                                                                       block-size)))
                                                                              (add1
                                                                               x8109)))
                                                                           (x8106
                                                                            (letrec ((x8107
                                                                                      (*
                                                                                       board-height
                                                                                       block-size)))
                                                                              (add1
                                                                               x8107))))
                                                                    (empty-scene
                                                                     x8108
                                                                     x8106))))
                                                          (foldr
                                                           x8110
                                                           x8105
                                                           bs))))
                                                g8104)))
                                           (block->image
                                            (lambda (b)
                                              (letrec ((g8115
                                                        (letrec ((x8119
                                                                  (letrec ((x8122
                                                                            (add1
                                                                             block-size))
                                                                           (x8121
                                                                            (add1
                                                                             block-size))
                                                                           (x8120
                                                                            (block-color
                                                                             b)))
                                                                    (rectangle
                                                                     x8122
                                                                     x8121
                                                                     'solid
                                                                     x8120)))
                                                                 (x8116
                                                                  (letrec ((x8118
                                                                            (add1
                                                                             block-size))
                                                                           (x8117
                                                                            (add1
                                                                             block-size)))
                                                                    (rectangle
                                                                     x8118
                                                                     x8117
                                                                     'outline
                                                                     'black))))
                                                          (overlay
                                                           x8119
                                                           x8116))))
                                                g8115)))
                                           (place-block
                                            (lambda (b scene)
                                              (letrec ((g8123
                                                        (letrec ((x8132
                                                                  (block->image
                                                                   b))
                                                                 (x8128
                                                                  (letrec ((x8130
                                                                            (letrec ((x8131
                                                                                      (block-x
                                                                                       b)))
                                                                              (*
                                                                               x8131
                                                                               block-size)))
                                                                           (x8129
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8130
                                                                     x8129)))
                                                                 (x8124
                                                                  (letrec ((x8126
                                                                            (letrec ((x8127
                                                                                      (block-y
                                                                                       b)))
                                                                              (*
                                                                               x8127
                                                                               block-size)))
                                                                           (x8125
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8126
                                                                     x8125))))
                                                          (place-image
                                                           x8132
                                                           x8128
                                                           x8124
                                                           scene))))
                                                g8123)))
                                           (world0
                                            (lambda (tetras)
                                              (letrec ((g8133
                                                        (letrec ((x8134
                                                                  (list-pick-random
                                                                   tetras)))
                                                          (world x8134 null))))
                                                g8133))))
                                    (letrec ((g8135
                                              (letrec ((x8198
                                                        ((lambda (j7001
                                                                  k7002
                                                                  f7003)
                                                           (letrec ((g8199
                                                                     (lambda (g6999
                                                                              g7000)
                                                                       (letrec ((g8200
                                                                                 (letrec ((x8201
                                                                                           (letrec ((x8203
                                                                                                     (POSN/C
                                                                                                      j7001
                                                                                                      k7002
                                                                                                      g6999))
                                                                                                    (x8202
                                                                                                     (POSN/C
                                                                                                      j7001
                                                                                                      k7002
                                                                                                      g7000)))
                                                                                             (f7003
                                                                                              x8203
                                                                                              x8202))))
                                                                                   (boolean?/c
                                                                                    j7001
                                                                                    k7002
                                                                                    x8201))))
                                                                         g8200))))
                                                             g8199))
                                                         'module
                                                         'importer
                                                         posn=?))
                                                       (x8193
                                                        (letrec ((x8194
                                                                  (letrec ((x8197
                                                                            (input))
                                                                           (x8195
                                                                            (letrec ((x8196
                                                                                      (input)))
                                                                              (cons
                                                                               x8196
                                                                               '()))))
                                                                    (cons
                                                                     x8197
                                                                     x8195))))
                                                          (cons 'posn x8194)))
                                                       (x8188
                                                        (letrec ((x8189
                                                                  (letrec ((x8192
                                                                            (input))
                                                                           (x8190
                                                                            (letrec ((x8191
                                                                                      (input)))
                                                                              (cons
                                                                               x8191
                                                                               '()))))
                                                                    (cons
                                                                     x8192
                                                                     x8190))))
                                                          (cons 'posn x8189))))
                                                (x8198 x8193 x8188)))
                                             (g8136
                                              (any/c
                                               'module
                                               'importer
                                               COLOR/C))
                                             (g8137
                                              (any/c 'module 'importer POSN/C))
                                             (g8138
                                              (any/c
                                               'module
                                               'importer
                                               BLOCK/C))
                                             (g8139
                                              (any/c
                                               'module
                                               'importer
                                               TETRA/C))
                                             (g8140
                                              (any/c
                                               'module
                                               'importer
                                               WORLD/C))
                                             (g8141
                                              (any/c 'module 'importer BSET/C))
                                             (g8142
                                              (integer?
                                               'module
                                               'importer
                                               block-size))
                                             (g8143
                                              (integer?
                                               'module
                                               'importer
                                               board-width))
                                             (g8144
                                              (integer?
                                               'module
                                               'importer
                                               board-height))
                                             (g8145
                                              (letrec ((x8216
                                                        ((lambda (j7006
                                                                  k7007
                                                                  f7008)
                                                           (letrec ((g8217
                                                                     (lambda (g7004
                                                                              g7005)
                                                                       (letrec ((g8218
                                                                                 (letrec ((x8219
                                                                                           (letrec ((x8221
                                                                                                     (POSN/C
                                                                                                      j7006
                                                                                                      k7007
                                                                                                      g7004))
                                                                                                    (x8220
                                                                                                     (BLOCK/C
                                                                                                      j7006
                                                                                                      k7007
                                                                                                      g7005)))
                                                                                             (f7008
                                                                                              x8221
                                                                                              x8220))))
                                                                                   (BLOCK/C
                                                                                    j7006
                                                                                    k7007
                                                                                    x8219))))
                                                                         g8218))))
                                                             g8217))
                                                         'module
                                                         'importer
                                                         block-rotate-ccw))
                                                       (x8211
                                                        (letrec ((x8212
                                                                  (letrec ((x8215
                                                                            (input))
                                                                           (x8213
                                                                            (letrec ((x8214
                                                                                      (input)))
                                                                              (cons
                                                                               x8214
                                                                               '()))))
                                                                    (cons
                                                                     x8215
                                                                     x8213))))
                                                          (cons 'posn x8212)))
                                                       (x8204
                                                        (letrec ((x8205
                                                                  (letrec ((x8210
                                                                            (input))
                                                                           (x8206
                                                                            (letrec ((x8209
                                                                                      (input))
                                                                                     (x8207
                                                                                      (letrec ((x8208
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8208
                                                                                         '()))))
                                                                              (cons
                                                                               x8209
                                                                               x8207))))
                                                                    (cons
                                                                     x8210
                                                                     x8206))))
                                                          (cons
                                                           'block
                                                           x8205))))
                                                (x8216 x8211 x8204)))
                                             (g8146
                                              (letrec ((x8234
                                                        ((lambda (j7011
                                                                  k7012
                                                                  f7013)
                                                           (letrec ((g8235
                                                                     (lambda (g7009
                                                                              g7010)
                                                                       (letrec ((g8236
                                                                                 (letrec ((x8237
                                                                                           (letrec ((x8239
                                                                                                     (POSN/C
                                                                                                      j7011
                                                                                                      k7012
                                                                                                      g7009))
                                                                                                    (x8238
                                                                                                     (BLOCK/C
                                                                                                      j7011
                                                                                                      k7012
                                                                                                      g7010)))
                                                                                             (f7013
                                                                                              x8239
                                                                                              x8238))))
                                                                                   (BLOCK/C
                                                                                    j7011
                                                                                    k7012
                                                                                    x8237))))
                                                                         g8236))))
                                                             g8235))
                                                         'module
                                                         'importer
                                                         block-rotate-cw))
                                                       (x8229
                                                        (letrec ((x8230
                                                                  (letrec ((x8233
                                                                            (input))
                                                                           (x8231
                                                                            (letrec ((x8232
                                                                                      (input)))
                                                                              (cons
                                                                               x8232
                                                                               '()))))
                                                                    (cons
                                                                     x8233
                                                                     x8231))))
                                                          (cons 'posn x8230)))
                                                       (x8222
                                                        (letrec ((x8223
                                                                  (letrec ((x8228
                                                                            (input))
                                                                           (x8224
                                                                            (letrec ((x8227
                                                                                      (input))
                                                                                     (x8225
                                                                                      (letrec ((x8226
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8226
                                                                                         '()))))
                                                                              (cons
                                                                               x8227
                                                                               x8225))))
                                                                    (cons
                                                                     x8228
                                                                     x8224))))
                                                          (cons
                                                           'block
                                                           x8223))))
                                                (x8234 x8229 x8222)))
                                             (g8147
                                              (letrec ((x8254
                                                        ((lambda (j7016
                                                                  k7017
                                                                  f7018)
                                                           (letrec ((g8255
                                                                     (lambda (g7014
                                                                              g7015)
                                                                       (letrec ((g8256
                                                                                 (letrec ((x8257
                                                                                           (letrec ((x8259
                                                                                                     (BLOCK/C
                                                                                                      j7016
                                                                                                      k7017
                                                                                                      g7014))
                                                                                                    (x8258
                                                                                                     (BLOCK/C
                                                                                                      j7016
                                                                                                      k7017
                                                                                                      g7015)))
                                                                                             (f7018
                                                                                              x8259
                                                                                              x8258))))
                                                                                   (boolean?/c
                                                                                    j7016
                                                                                    k7017
                                                                                    x8257))))
                                                                         g8256))))
                                                             g8255))
                                                         'module
                                                         'importer
                                                         block=?))
                                                       (x8247
                                                        (letrec ((x8248
                                                                  (letrec ((x8253
                                                                            (input))
                                                                           (x8249
                                                                            (letrec ((x8252
                                                                                      (input))
                                                                                     (x8250
                                                                                      (letrec ((x8251
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8251
                                                                                         '()))))
                                                                              (cons
                                                                               x8252
                                                                               x8250))))
                                                                    (cons
                                                                     x8253
                                                                     x8249))))
                                                          (cons 'block x8248)))
                                                       (x8240
                                                        (letrec ((x8241
                                                                  (letrec ((x8246
                                                                            (input))
                                                                           (x8242
                                                                            (letrec ((x8245
                                                                                      (input))
                                                                                     (x8243
                                                                                      (letrec ((x8244
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8244
                                                                                         '()))))
                                                                              (cons
                                                                               x8245
                                                                               x8243))))
                                                                    (cons
                                                                     x8246
                                                                     x8242))))
                                                          (cons
                                                           'block
                                                           x8241))))
                                                (x8254 x8247 x8240)))
                                             (g8148
                                              (letrec ((x8269
                                                        ((lambda (j7022
                                                                  k7023
                                                                  f7024)
                                                           (letrec ((g8270
                                                                     (lambda (g7019
                                                                              g7020
                                                                              g7021)
                                                                       (letrec ((g8271
                                                                                 (letrec ((x8272
                                                                                           (letrec ((x8275
                                                                                                     (real?/c
                                                                                                      j7022
                                                                                                      k7023
                                                                                                      g7019))
                                                                                                    (x8274
                                                                                                     (real?/c
                                                                                                      j7022
                                                                                                      k7023
                                                                                                      g7020))
                                                                                                    (x8273
                                                                                                     (BLOCK/C
                                                                                                      j7022
                                                                                                      k7023
                                                                                                      g7021)))
                                                                                             (f7024
                                                                                              x8275
                                                                                              x8274
                                                                                              x8273))))
                                                                                   (BLOCK/C
                                                                                    j7022
                                                                                    k7023
                                                                                    x8272))))
                                                                         g8271))))
                                                             g8270))
                                                         'module
                                                         'importer
                                                         block-move))
                                                       (x8268 (input))
                                                       (x8267 (input))
                                                       (x8260
                                                        (letrec ((x8261
                                                                  (letrec ((x8266
                                                                            (input))
                                                                           (x8262
                                                                            (letrec ((x8265
                                                                                      (input))
                                                                                     (x8263
                                                                                      (letrec ((x8264
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8264
                                                                                         '()))))
                                                                              (cons
                                                                               x8265
                                                                               x8263))))
                                                                    (cons
                                                                     x8266
                                                                     x8262))))
                                                          (cons
                                                           'block
                                                           x8261))))
                                                (x8269 x8268 x8267 x8260)))
                                             (g8149
                                              (letrec ((x8284
                                                        ((lambda (j7027
                                                                  k7028
                                                                  f7029)
                                                           (letrec ((g8285
                                                                     (lambda (g7025
                                                                              g7026)
                                                                       (letrec ((g8286
                                                                                 (letrec ((x8287
                                                                                           (letrec ((x8289
                                                                                                     (BSET/C
                                                                                                      j7027
                                                                                                      k7028
                                                                                                      g7025))
                                                                                                    (x8288
                                                                                                     (BLOCK/C
                                                                                                      j7027
                                                                                                      k7028
                                                                                                      g7026)))
                                                                                             (f7029
                                                                                              x8289
                                                                                              x8288))))
                                                                                   (boolean?/c
                                                                                    j7027
                                                                                    k7028
                                                                                    x8287))))
                                                                         g8286))))
                                                             g8285))
                                                         'module
                                                         'importer
                                                         blocks-contains?))
                                                       (x8283 (input))
                                                       (x8276
                                                        (letrec ((x8277
                                                                  (letrec ((x8282
                                                                            (input))
                                                                           (x8278
                                                                            (letrec ((x8281
                                                                                      (input))
                                                                                     (x8279
                                                                                      (letrec ((x8280
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8280
                                                                                         '()))))
                                                                              (cons
                                                                               x8281
                                                                               x8279))))
                                                                    (cons
                                                                     x8282
                                                                     x8278))))
                                                          (cons
                                                           'block
                                                           x8277))))
                                                (x8284 x8283 x8276)))
                                             (g8150
                                              (letrec ((x8292
                                                        ((lambda (j7032
                                                                  k7033
                                                                  f7034)
                                                           (letrec ((g8293
                                                                     (lambda (g7030
                                                                              g7031)
                                                                       (letrec ((g8294
                                                                                 (letrec ((x8295
                                                                                           (letrec ((x8297
                                                                                                     (BSET/C
                                                                                                      j7032
                                                                                                      k7033
                                                                                                      g7030))
                                                                                                    (x8296
                                                                                                     (BSET/C
                                                                                                      j7032
                                                                                                      k7033
                                                                                                      g7031)))
                                                                                             (f7034
                                                                                              x8297
                                                                                              x8296))))
                                                                                   (boolean?/c
                                                                                    j7032
                                                                                    k7033
                                                                                    x8295))))
                                                                         g8294))))
                                                             g8293))
                                                         'module
                                                         'importer
                                                         blocks=?))
                                                       (x8291 (input))
                                                       (x8290 (input)))
                                                (x8292 x8291 x8290)))
                                             (g8151
                                              (letrec ((x8300
                                                        ((lambda (j7037
                                                                  k7038
                                                                  f7039)
                                                           (letrec ((g8301
                                                                     (lambda (g7035
                                                                              g7036)
                                                                       (letrec ((g8302
                                                                                 (letrec ((x8303
                                                                                           (letrec ((x8305
                                                                                                     (BSET/C
                                                                                                      j7037
                                                                                                      k7038
                                                                                                      g7035))
                                                                                                    (x8304
                                                                                                     (BSET/C
                                                                                                      j7037
                                                                                                      k7038
                                                                                                      g7036)))
                                                                                             (f7039
                                                                                              x8305
                                                                                              x8304))))
                                                                                   (boolean?/c
                                                                                    j7037
                                                                                    k7038
                                                                                    x8303))))
                                                                         g8302))))
                                                             g8301))
                                                         'module
                                                         'importer
                                                         blocks-subset?))
                                                       (x8299 (input))
                                                       (x8298 (input)))
                                                (x8300 x8299 x8298)))
                                             (g8152
                                              (letrec ((x8308
                                                        ((lambda (j7042
                                                                  k7043
                                                                  f7044)
                                                           (letrec ((g8309
                                                                     (lambda (g7040
                                                                              g7041)
                                                                       (letrec ((g8310
                                                                                 (letrec ((x8311
                                                                                           (letrec ((x8313
                                                                                                     (BSET/C
                                                                                                      j7042
                                                                                                      k7043
                                                                                                      g7040))
                                                                                                    (x8312
                                                                                                     (BSET/C
                                                                                                      j7042
                                                                                                      k7043
                                                                                                      g7041)))
                                                                                             (f7044
                                                                                              x8313
                                                                                              x8312))))
                                                                                   (BSET/C
                                                                                    j7042
                                                                                    k7043
                                                                                    x8311))))
                                                                         g8310))))
                                                             g8309))
                                                         'module
                                                         'importer
                                                         blocks-intersect))
                                                       (x8307 (input))
                                                       (x8306 (input)))
                                                (x8308 x8307 x8306)))
                                             (g8153
                                              (letrec ((x8315
                                                        ((lambda (j7046
                                                                  k7047
                                                                  f7048)
                                                           (letrec ((g8316
                                                                     (lambda (g7045)
                                                                       (letrec ((g8317
                                                                                 (letrec ((x8318
                                                                                           (letrec ((x8319
                                                                                                     (BSET/C
                                                                                                      j7046
                                                                                                      k7047
                                                                                                      g7045)))
                                                                                             (f7048
                                                                                              x8319))))
                                                                                   (real?/c
                                                                                    j7046
                                                                                    k7047
                                                                                    x8318))))
                                                                         g8317))))
                                                             g8316))
                                                         'module
                                                         'importer
                                                         blocks-count))
                                                       (x8314 (input)))
                                                (x8315 x8314)))
                                             (g8154
                                              (letrec ((x8321
                                                        ((lambda (j7050
                                                                  k7051
                                                                  f7052)
                                                           (letrec ((g8322
                                                                     (lambda (g7049)
                                                                       (letrec ((g8323
                                                                                 (letrec ((x8324
                                                                                           (letrec ((x8325
                                                                                                     (BSET/C
                                                                                                      j7050
                                                                                                      k7051
                                                                                                      g7049)))
                                                                                             (f7052
                                                                                              x8325))))
                                                                                   (boolean?/c
                                                                                    j7050
                                                                                    k7051
                                                                                    x8324))))
                                                                         g8323))))
                                                             g8322))
                                                         'module
                                                         'importer
                                                         blocks-overflow?))
                                                       (x8320 (input)))
                                                (x8321 x8320)))
                                             (g8155
                                              (letrec ((x8329
                                                        ((lambda (j7056
                                                                  k7057
                                                                  f7058)
                                                           (letrec ((g8330
                                                                     (lambda (g7053
                                                                              g7054
                                                                              g7055)
                                                                       (letrec ((g8331
                                                                                 (letrec ((x8332
                                                                                           (letrec ((x8335
                                                                                                     (real?/c
                                                                                                      j7056
                                                                                                      k7057
                                                                                                      g7053))
                                                                                                    (x8334
                                                                                                     (real?/c
                                                                                                      j7056
                                                                                                      k7057
                                                                                                      g7054))
                                                                                                    (x8333
                                                                                                     (BSET/C
                                                                                                      j7056
                                                                                                      k7057
                                                                                                      g7055)))
                                                                                             (f7058
                                                                                              x8335
                                                                                              x8334
                                                                                              x8333))))
                                                                                   (BSET/C
                                                                                    j7056
                                                                                    k7057
                                                                                    x8332))))
                                                                         g8331))))
                                                             g8330))
                                                         'module
                                                         'importer
                                                         blocks-move))
                                                       (x8328 (input))
                                                       (x8327 (input))
                                                       (x8326 (input)))
                                                (x8329 x8328 x8327 x8326)))
                                             (g8156
                                              (letrec ((x8342
                                                        ((lambda (j7061
                                                                  k7062
                                                                  f7063)
                                                           (letrec ((g8343
                                                                     (lambda (g7059
                                                                              g7060)
                                                                       (letrec ((g8344
                                                                                 (letrec ((x8345
                                                                                           (letrec ((x8347
                                                                                                     (POSN/C
                                                                                                      j7061
                                                                                                      k7062
                                                                                                      g7059))
                                                                                                    (x8346
                                                                                                     (BSET/C
                                                                                                      j7061
                                                                                                      k7062
                                                                                                      g7060)))
                                                                                             (f7063
                                                                                              x8347
                                                                                              x8346))))
                                                                                   (BSET/C
                                                                                    j7061
                                                                                    k7062
                                                                                    x8345))))
                                                                         g8344))))
                                                             g8343))
                                                         'module
                                                         'importer
                                                         blocks-rotate-cw))
                                                       (x8337
                                                        (letrec ((x8338
                                                                  (letrec ((x8341
                                                                            (input))
                                                                           (x8339
                                                                            (letrec ((x8340
                                                                                      (input)))
                                                                              (cons
                                                                               x8340
                                                                               '()))))
                                                                    (cons
                                                                     x8341
                                                                     x8339))))
                                                          (cons 'posn x8338)))
                                                       (x8336 (input)))
                                                (x8342 x8337 x8336)))
                                             (g8157
                                              (letrec ((x8354
                                                        ((lambda (j7066
                                                                  k7067
                                                                  f7068)
                                                           (letrec ((g8355
                                                                     (lambda (g7064
                                                                              g7065)
                                                                       (letrec ((g8356
                                                                                 (letrec ((x8357
                                                                                           (letrec ((x8359
                                                                                                     (POSN/C
                                                                                                      j7066
                                                                                                      k7067
                                                                                                      g7064))
                                                                                                    (x8358
                                                                                                     (BSET/C
                                                                                                      j7066
                                                                                                      k7067
                                                                                                      g7065)))
                                                                                             (f7068
                                                                                              x8359
                                                                                              x8358))))
                                                                                   (BSET/C
                                                                                    j7066
                                                                                    k7067
                                                                                    x8357))))
                                                                         g8356))))
                                                             g8355))
                                                         'module
                                                         'importer
                                                         blocks-rotate-ccw))
                                                       (x8349
                                                        (letrec ((x8350
                                                                  (letrec ((x8353
                                                                            (input))
                                                                           (x8351
                                                                            (letrec ((x8352
                                                                                      (input)))
                                                                              (cons
                                                                               x8352
                                                                               '()))))
                                                                    (cons
                                                                     x8353
                                                                     x8351))))
                                                          (cons 'posn x8350)))
                                                       (x8348 (input)))
                                                (x8354 x8349 x8348)))
                                             (g8158
                                              (letrec ((x8362
                                                        ((lambda (j7071
                                                                  k7072
                                                                  f7073)
                                                           (letrec ((g8363
                                                                     (lambda (g7069
                                                                              g7070)
                                                                       (letrec ((g8364
                                                                                 (letrec ((x8365
                                                                                           (letrec ((x8367
                                                                                                     (BSET/C
                                                                                                      j7071
                                                                                                      k7072
                                                                                                      g7069))
                                                                                                    (x8366
                                                                                                     (COLOR/C
                                                                                                      j7071
                                                                                                      k7072
                                                                                                      g7070)))
                                                                                             (f7073
                                                                                              x8367
                                                                                              x8366))))
                                                                                   (BSET/C
                                                                                    j7071
                                                                                    k7072
                                                                                    x8365))))
                                                                         g8364))))
                                                             g8363))
                                                         'module
                                                         'importer
                                                         blocks-change-color))
                                                       (x8361 (input))
                                                       (x8360 (input)))
                                                (x8362 x8361 x8360)))
                                             (g8159
                                              (letrec ((x8370
                                                        ((lambda (j7076
                                                                  k7077
                                                                  f7078)
                                                           (letrec ((g8371
                                                                     (lambda (g7074
                                                                              g7075)
                                                                       (letrec ((g8372
                                                                                 (letrec ((x8373
                                                                                           (letrec ((x8375
                                                                                                     (BSET/C
                                                                                                      j7076
                                                                                                      k7077
                                                                                                      g7074))
                                                                                                    (x8374
                                                                                                     (real?/c
                                                                                                      j7076
                                                                                                      k7077
                                                                                                      g7075)))
                                                                                             (f7078
                                                                                              x8375
                                                                                              x8374))))
                                                                                   (BSET/C
                                                                                    j7076
                                                                                    k7077
                                                                                    x8373))))
                                                                         g8372))))
                                                             g8371))
                                                         'module
                                                         'importer
                                                         blocks-row))
                                                       (x8369 (input))
                                                       (x8368 (input)))
                                                (x8370 x8369 x8368)))
                                             (g8160
                                              (letrec ((x8378
                                                        ((lambda (j7081
                                                                  k7082
                                                                  f7083)
                                                           (letrec ((g8379
                                                                     (lambda (g7079
                                                                              g7080)
                                                                       (letrec ((g8380
                                                                                 (letrec ((x8381
                                                                                           (letrec ((x8383
                                                                                                     (BSET/C
                                                                                                      j7081
                                                                                                      k7082
                                                                                                      g7079))
                                                                                                    (x8382
                                                                                                     (real?/c
                                                                                                      j7081
                                                                                                      k7082
                                                                                                      g7080)))
                                                                                             (f7083
                                                                                              x8383
                                                                                              x8382))))
                                                                                   (boolean?/c
                                                                                    j7081
                                                                                    k7082
                                                                                    x8381))))
                                                                         g8380))))
                                                             g8379))
                                                         'module
                                                         'importer
                                                         full-row?))
                                                       (x8377 (input))
                                                       (x8376 (input)))
                                                (x8378 x8377 x8376)))
                                             (g8161
                                              (letrec ((x8386
                                                        ((lambda (j7086
                                                                  k7087
                                                                  f7088)
                                                           (letrec ((g8387
                                                                     (lambda (g7084
                                                                              g7085)
                                                                       (letrec ((g8388
                                                                                 (letrec ((x8389
                                                                                           (letrec ((x8391
                                                                                                     (BSET/C
                                                                                                      j7086
                                                                                                      k7087
                                                                                                      g7084))
                                                                                                    (x8390
                                                                                                     (BSET/C
                                                                                                      j7086
                                                                                                      k7087
                                                                                                      g7085)))
                                                                                             (f7088
                                                                                              x8391
                                                                                              x8390))))
                                                                                   (BSET/C
                                                                                    j7086
                                                                                    k7087
                                                                                    x8389))))
                                                                         g8388))))
                                                             g8387))
                                                         'module
                                                         'importer
                                                         blocks-union))
                                                       (x8385 (input))
                                                       (x8384 (input)))
                                                (x8386 x8385 x8384)))
                                             (g8162
                                              (letrec ((x8393
                                                        ((lambda (j7090
                                                                  k7091
                                                                  f7092)
                                                           (letrec ((g8394
                                                                     (lambda (g7089)
                                                                       (letrec ((g8395
                                                                                 (letrec ((x8396
                                                                                           (letrec ((x8397
                                                                                                     (BSET/C
                                                                                                      j7090
                                                                                                      k7091
                                                                                                      g7089)))
                                                                                             (f7092
                                                                                              x8397))))
                                                                                   (real?/c
                                                                                    j7090
                                                                                    k7091
                                                                                    x8396))))
                                                                         g8395))))
                                                             g8394))
                                                         'module
                                                         'importer
                                                         blocks-max-x))
                                                       (x8392 (input)))
                                                (x8393 x8392)))
                                             (g8163
                                              (letrec ((x8399
                                                        ((lambda (j7094
                                                                  k7095
                                                                  f7096)
                                                           (letrec ((g8400
                                                                     (lambda (g7093)
                                                                       (letrec ((g8401
                                                                                 (letrec ((x8402
                                                                                           (letrec ((x8403
                                                                                                     (BSET/C
                                                                                                      j7094
                                                                                                      k7095
                                                                                                      g7093)))
                                                                                             (f7096
                                                                                              x8403))))
                                                                                   (real?/c
                                                                                    j7094
                                                                                    k7095
                                                                                    x8402))))
                                                                         g8401))))
                                                             g8400))
                                                         'module
                                                         'importer
                                                         blocks-min-x))
                                                       (x8398 (input)))
                                                (x8399 x8398)))
                                             (g8164
                                              (letrec ((x8405
                                                        ((lambda (j7098
                                                                  k7099
                                                                  f7100)
                                                           (letrec ((g8406
                                                                     (lambda (g7097)
                                                                       (letrec ((g8407
                                                                                 (letrec ((x8408
                                                                                           (letrec ((x8409
                                                                                                     (BSET/C
                                                                                                      j7098
                                                                                                      k7099
                                                                                                      g7097)))
                                                                                             (f7100
                                                                                              x8409))))
                                                                                   (real?/c
                                                                                    j7098
                                                                                    k7099
                                                                                    x8408))))
                                                                         g8407))))
                                                             g8406))
                                                         'module
                                                         'importer
                                                         blocks-max-y))
                                                       (x8404 (input)))
                                                (x8405 x8404)))
                                             (g8165
                                              (letrec ((x8411
                                                        ((lambda (j7102
                                                                  k7103
                                                                  f7104)
                                                           (letrec ((g8412
                                                                     (lambda (g7101)
                                                                       (letrec ((g8413
                                                                                 (letrec ((x8414
                                                                                           (letrec ((x8415
                                                                                                     (BSET/C
                                                                                                      j7102
                                                                                                      k7103
                                                                                                      g7101)))
                                                                                             (f7104
                                                                                              x8415))))
                                                                                   (BSET/C
                                                                                    j7102
                                                                                    k7103
                                                                                    x8414))))
                                                                         g8413))))
                                                             g8412))
                                                         'module
                                                         'importer
                                                         eliminate-full-rows))
                                                       (x8410 (input)))
                                                (x8411 x8410)))
                                             (g8166
                                              (letrec ((x8427
                                                        ((lambda (j7108
                                                                  k7109
                                                                  f7110)
                                                           (letrec ((g8428
                                                                     (lambda (g7105
                                                                              g7106
                                                                              g7107)
                                                                       (letrec ((g8429
                                                                                 (letrec ((x8430
                                                                                           (letrec ((x8433
                                                                                                     (integer?/c
                                                                                                      j7108
                                                                                                      k7109
                                                                                                      g7105))
                                                                                                    (x8432
                                                                                                     (integer?/c
                                                                                                      j7108
                                                                                                      k7109
                                                                                                      g7106))
                                                                                                    (x8431
                                                                                                     (TETRA/C
                                                                                                      j7108
                                                                                                      k7109
                                                                                                      g7107)))
                                                                                             (f7110
                                                                                              x8433
                                                                                              x8432
                                                                                              x8431))))
                                                                                   (TETRA/C
                                                                                    j7108
                                                                                    k7109
                                                                                    x8430))))
                                                                         g8429))))
                                                             g8428))
                                                         'module
                                                         'importer
                                                         tetra-move))
                                                       (x8426 (input))
                                                       (x8425 (input))
                                                       (x8416
                                                        (letrec ((x8417
                                                                  (letrec ((x8420
                                                                            (letrec ((x8421
                                                                                      (letrec ((x8424
                                                                                                (input))
                                                                                               (x8422
                                                                                                (letrec ((x8423
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8423
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8424
                                                                                         x8422))))
                                                                              (cons
                                                                               'posn
                                                                               x8421)))
                                                                           (x8418
                                                                            (letrec ((x8419
                                                                                      (input)))
                                                                              (cons
                                                                               x8419
                                                                               '()))))
                                                                    (cons
                                                                     x8420
                                                                     x8418))))
                                                          (cons
                                                           'tetra
                                                           x8417))))
                                                (x8427 x8426 x8425 x8416)))
                                             (g8167
                                              (letrec ((x8443
                                                        ((lambda (j7112
                                                                  k7113
                                                                  f7114)
                                                           (letrec ((g8444
                                                                     (lambda (g7111)
                                                                       (letrec ((g8445
                                                                                 (letrec ((x8446
                                                                                           (letrec ((x8447
                                                                                                     (TETRA/C
                                                                                                      j7112
                                                                                                      k7113
                                                                                                      g7111)))
                                                                                             (f7114
                                                                                              x8447))))
                                                                                   (TETRA/C
                                                                                    j7112
                                                                                    k7113
                                                                                    x8446))))
                                                                         g8445))))
                                                             g8444))
                                                         'module
                                                         'importer
                                                         tetra-rotate-ccw))
                                                       (x8434
                                                        (letrec ((x8435
                                                                  (letrec ((x8438
                                                                            (letrec ((x8439
                                                                                      (letrec ((x8442
                                                                                                (input))
                                                                                               (x8440
                                                                                                (letrec ((x8441
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8441
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8442
                                                                                         x8440))))
                                                                              (cons
                                                                               'posn
                                                                               x8439)))
                                                                           (x8436
                                                                            (letrec ((x8437
                                                                                      (input)))
                                                                              (cons
                                                                               x8437
                                                                               '()))))
                                                                    (cons
                                                                     x8438
                                                                     x8436))))
                                                          (cons
                                                           'tetra
                                                           x8435))))
                                                (x8443 x8434)))
                                             (g8168
                                              (letrec ((x8457
                                                        ((lambda (j7116
                                                                  k7117
                                                                  f7118)
                                                           (letrec ((g8458
                                                                     (lambda (g7115)
                                                                       (letrec ((g8459
                                                                                 (letrec ((x8460
                                                                                           (letrec ((x8461
                                                                                                     (TETRA/C
                                                                                                      j7116
                                                                                                      k7117
                                                                                                      g7115)))
                                                                                             (f7118
                                                                                              x8461))))
                                                                                   (TETRA/C
                                                                                    j7116
                                                                                    k7117
                                                                                    x8460))))
                                                                         g8459))))
                                                             g8458))
                                                         'module
                                                         'importer
                                                         tetra-rotate-cw))
                                                       (x8448
                                                        (letrec ((x8449
                                                                  (letrec ((x8452
                                                                            (letrec ((x8453
                                                                                      (letrec ((x8456
                                                                                                (input))
                                                                                               (x8454
                                                                                                (letrec ((x8455
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8455
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8456
                                                                                         x8454))))
                                                                              (cons
                                                                               'posn
                                                                               x8453)))
                                                                           (x8450
                                                                            (letrec ((x8451
                                                                                      (input)))
                                                                              (cons
                                                                               x8451
                                                                               '()))))
                                                                    (cons
                                                                     x8452
                                                                     x8450))))
                                                          (cons
                                                           'tetra
                                                           x8449))))
                                                (x8457 x8448)))
                                             (g8169
                                              (letrec ((x8472
                                                        ((lambda (j7121
                                                                  k7122
                                                                  f7123)
                                                           (letrec ((g8473
                                                                     (lambda (g7119
                                                                              g7120)
                                                                       (letrec ((g8474
                                                                                 (letrec ((x8475
                                                                                           (letrec ((x8477
                                                                                                     (TETRA/C
                                                                                                      j7121
                                                                                                      k7122
                                                                                                      g7119))
                                                                                                    (x8476
                                                                                                     (BSET/C
                                                                                                      j7121
                                                                                                      k7122
                                                                                                      g7120)))
                                                                                             (f7123
                                                                                              x8477
                                                                                              x8476))))
                                                                                   (boolean?/c
                                                                                    j7121
                                                                                    k7122
                                                                                    x8475))))
                                                                         g8474))))
                                                             g8473))
                                                         'module
                                                         'importer
                                                         tetra-overlaps-blocks?))
                                                       (x8463
                                                        (letrec ((x8464
                                                                  (letrec ((x8467
                                                                            (letrec ((x8468
                                                                                      (letrec ((x8471
                                                                                                (input))
                                                                                               (x8469
                                                                                                (letrec ((x8470
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8470
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8471
                                                                                         x8469))))
                                                                              (cons
                                                                               'posn
                                                                               x8468)))
                                                                           (x8465
                                                                            (letrec ((x8466
                                                                                      (input)))
                                                                              (cons
                                                                               x8466
                                                                               '()))))
                                                                    (cons
                                                                     x8467
                                                                     x8465))))
                                                          (cons 'tetra x8464)))
                                                       (x8462 (input)))
                                                (x8472 x8463 x8462)))
                                             (g8170
                                              (letrec ((x8489
                                                        ((lambda (j7135
                                                                  k7136
                                                                  f7137)
                                                           (letrec ((g8490
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
                                                                       (letrec ((g8491
                                                                                 (letrec ((x8492
                                                                                           (letrec ((x8503
                                                                                                     (COLOR/C
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7124))
                                                                                                    (x8502
                                                                                                     (real?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7125))
                                                                                                    (x8501
                                                                                                     (real?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7126))
                                                                                                    (x8500
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7127))
                                                                                                    (x8499
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7128))
                                                                                                    (x8498
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7129))
                                                                                                    (x8497
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7130))
                                                                                                    (x8496
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7131))
                                                                                                    (x8495
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7132))
                                                                                                    (x8494
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7133))
                                                                                                    (x8493
                                                                                                     (integer?/c
                                                                                                      j7135
                                                                                                      k7136
                                                                                                      g7134)))
                                                                                             (f7137
                                                                                              x8503
                                                                                              x8502
                                                                                              x8501
                                                                                              x8500
                                                                                              x8499
                                                                                              x8498
                                                                                              x8497
                                                                                              x8496
                                                                                              x8495
                                                                                              x8494
                                                                                              x8493))))
                                                                                   (TETRA/C
                                                                                    j7135
                                                                                    k7136
                                                                                    x8492))))
                                                                         g8491))))
                                                             g8490))
                                                         'module
                                                         'importer
                                                         build-tetra-blocks))
                                                       (x8488 (input))
                                                       (x8487 (input))
                                                       (x8486 (input))
                                                       (x8485 (input))
                                                       (x8484 (input))
                                                       (x8483 (input))
                                                       (x8482 (input))
                                                       (x8481 (input))
                                                       (x8480 (input))
                                                       (x8479 (input))
                                                       (x8478 (input)))
                                                (x8489
                                                 x8488
                                                 x8487
                                                 x8486
                                                 x8485
                                                 x8484
                                                 x8483
                                                 x8482
                                                 x8481
                                                 x8480
                                                 x8479
                                                 x8478)))
                                             (g8171
                                              (letrec ((x8514
                                                        ((lambda (j7140
                                                                  k7141
                                                                  f7142)
                                                           (letrec ((g8515
                                                                     (lambda (g7138
                                                                              g7139)
                                                                       (letrec ((g8516
                                                                                 (letrec ((x8517
                                                                                           (letrec ((x8519
                                                                                                     (TETRA/C
                                                                                                      j7140
                                                                                                      k7141
                                                                                                      g7138))
                                                                                                    (x8518
                                                                                                     (COLOR/C
                                                                                                      j7140
                                                                                                      k7141
                                                                                                      g7139)))
                                                                                             (f7142
                                                                                              x8519
                                                                                              x8518))))
                                                                                   (TETRA/C
                                                                                    j7140
                                                                                    k7141
                                                                                    x8517))))
                                                                         g8516))))
                                                             g8515))
                                                         'module
                                                         'importer
                                                         tetra-change-color))
                                                       (x8505
                                                        (letrec ((x8506
                                                                  (letrec ((x8509
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
                                                                           (x8507
                                                                            (letrec ((x8508
                                                                                      (input)))
                                                                              (cons
                                                                               x8508
                                                                               '()))))
                                                                    (cons
                                                                     x8509
                                                                     x8507))))
                                                          (cons 'tetra x8506)))
                                                       (x8504 (input)))
                                                (x8514 x8505 x8504)))
                                             (g8172
                                              (letrec ((x8534
                                                        ((lambda (j7145
                                                                  k7146
                                                                  f7147)
                                                           (letrec ((g8535
                                                                     (lambda (g7143
                                                                              g7144)
                                                                       (letrec ((g8536
                                                                                 (letrec ((x8537
                                                                                           (letrec ((x8539
                                                                                                     (WORLD/C
                                                                                                      j7145
                                                                                                      k7146
                                                                                                      g7143))
                                                                                                    (x8538
                                                                                                     (string?/c
                                                                                                      j7145
                                                                                                      k7146
                                                                                                      g7144)))
                                                                                             (f7147
                                                                                              x8539
                                                                                              x8538))))
                                                                                   (WORLD/C
                                                                                    j7145
                                                                                    k7146
                                                                                    x8537))))
                                                                         g8536))))
                                                             g8535))
                                                         'module
                                                         'importer
                                                         world-key-move))
                                                       (x8521
                                                        (letrec ((x8522
                                                                  (letrec ((x8525
                                                                            (letrec ((x8526
                                                                                      (letrec ((x8529
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
                                                                                                   'posn
                                                                                                   x8530)))
                                                                                               (x8527
                                                                                                (letrec ((x8528
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8528
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8529
                                                                                         x8527))))
                                                                              (cons
                                                                               'tetra
                                                                               x8526)))
                                                                           (x8523
                                                                            (letrec ((x8524
                                                                                      (input)))
                                                                              (cons
                                                                               x8524
                                                                               '()))))
                                                                    (cons
                                                                     x8525
                                                                     x8523))))
                                                          (cons 'world x8522)))
                                                       (x8520 (input)))
                                                (x8534 x8521 x8520)))
                                             (g8173
                                              (letrec ((x8554
                                                        ((lambda (j7150
                                                                  k7151
                                                                  f7152)
                                                           (letrec ((g8555
                                                                     (lambda (g7148
                                                                              g7149)
                                                                       (letrec ((g8556
                                                                                 (letrec ((x8557
                                                                                           (letrec ((x8561
                                                                                                     (WORLD/C
                                                                                                      j7150
                                                                                                      k7151
                                                                                                      g7148))
                                                                                                    (x8558
                                                                                                     (letrec ((x8559
                                                                                                               (letrec ((x8560
                                                                                                                         (listof
                                                                                                                          TETRA/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x8560))))
                                                                                                       (x8559
                                                                                                        j7150
                                                                                                        k7151
                                                                                                        g7149))))
                                                                                             (f7152
                                                                                              x8561
                                                                                              x8558))))
                                                                                   (WORLD/C
                                                                                    j7150
                                                                                    k7151
                                                                                    x8557))))
                                                                         g8556))))
                                                             g8555))
                                                         'module
                                                         'importer
                                                         next-world))
                                                       (x8541
                                                        (letrec ((x8542
                                                                  (letrec ((x8545
                                                                            (letrec ((x8546
                                                                                      (letrec ((x8549
                                                                                                (letrec ((x8550
                                                                                                          (letrec ((x8553
                                                                                                                    (input))
                                                                                                                   (x8551
                                                                                                                    (letrec ((x8552
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x8552
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x8553
                                                                                                             x8551))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x8550)))
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
                                                                               'tetra
                                                                               x8546)))
                                                                           (x8543
                                                                            (letrec ((x8544
                                                                                      (input)))
                                                                              (cons
                                                                               x8544
                                                                               '()))))
                                                                    (cons
                                                                     x8545
                                                                     x8543))))
                                                          (cons 'world x8542)))
                                                       (x8540 (input)))
                                                (x8554 x8541 x8540)))
                                             (g8174
                                              (letrec ((x8575
                                                        ((lambda (j7154
                                                                  k7155
                                                                  f7156)
                                                           (letrec ((g8576
                                                                     (lambda (g7153)
                                                                       (letrec ((g8577
                                                                                 (letrec ((x8578
                                                                                           (letrec ((x8579
                                                                                                     (WORLD/C
                                                                                                      j7154
                                                                                                      k7155
                                                                                                      g7153)))
                                                                                             (f7156
                                                                                              x8579))))
                                                                                   (BSET/C
                                                                                    j7154
                                                                                    k7155
                                                                                    x8578))))
                                                                         g8577))))
                                                             g8576))
                                                         'module
                                                         'importer
                                                         ghost-blocks))
                                                       (x8562
                                                        (letrec ((x8563
                                                                  (letrec ((x8566
                                                                            (letrec ((x8567
                                                                                      (letrec ((x8570
                                                                                                (letrec ((x8571
                                                                                                          (letrec ((x8574
                                                                                                                    (input))
                                                                                                                   (x8572
                                                                                                                    (letrec ((x8573
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x8573
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x8574
                                                                                                             x8572))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x8571)))
                                                                                               (x8568
                                                                                                (letrec ((x8569
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8569
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8570
                                                                                         x8568))))
                                                                              (cons
                                                                               'tetra
                                                                               x8567)))
                                                                           (x8564
                                                                            (letrec ((x8565
                                                                                      (input)))
                                                                              (cons
                                                                               x8565
                                                                               '()))))
                                                                    (cons
                                                                     x8566
                                                                     x8564))))
                                                          (cons
                                                           'world
                                                           x8563))))
                                                (x8575 x8562)))
                                             (g8175
                                              (letrec ((x8581
                                                        ((lambda (j7158
                                                                  k7159
                                                                  f7160)
                                                           (letrec ((g8582
                                                                     (lambda (g7157)
                                                                       (letrec ((g8583
                                                                                 (letrec ((x8584
                                                                                           (letrec ((x8585
                                                                                                     (any/c
                                                                                                      j7158
                                                                                                      k7159
                                                                                                      g7157)))
                                                                                             (f7160
                                                                                              x8585))))
                                                                                   (boolean?/c
                                                                                    j7158
                                                                                    k7159
                                                                                    x8584))))
                                                                         g8583))))
                                                             g8582))
                                                         'module
                                                         'importer
                                                         image?))
                                                       (x8580 (input)))
                                                (x8581 x8580)))
                                             (g8176
                                              (letrec ((x8588
                                                        ((lambda (j7163
                                                                  k7164
                                                                  f7165)
                                                           (letrec ((g8589
                                                                     (lambda (g7161
                                                                              g7162)
                                                                       (letrec ((g8590
                                                                                 (letrec ((x8591
                                                                                           (letrec ((x8593
                                                                                                     (image?
                                                                                                      j7163
                                                                                                      k7164
                                                                                                      g7161))
                                                                                                    (x8592
                                                                                                     (image?
                                                                                                      j7163
                                                                                                      k7164
                                                                                                      g7162)))
                                                                                             (f7165
                                                                                              x8593
                                                                                              x8592))))
                                                                                   (image?
                                                                                    j7163
                                                                                    k7164
                                                                                    x8591))))
                                                                         g8590))))
                                                             g8589))
                                                         'module
                                                         'importer
                                                         overlay))
                                                       (x8587 (input))
                                                       (x8586 (input)))
                                                (x8588 x8587 x8586)))
                                             (g8177
                                              (letrec ((x8597
                                                        ((lambda (j7169
                                                                  k7170
                                                                  f7171)
                                                           (letrec ((g8598
                                                                     (lambda (g7166
                                                                              g7167
                                                                              g7168)
                                                                       (letrec ((g8599
                                                                                 (letrec ((x8600
                                                                                           (letrec ((x8603
                                                                                                     (real?/c
                                                                                                      j7169
                                                                                                      k7170
                                                                                                      g7166))
                                                                                                    (x8602
                                                                                                     (real?/c
                                                                                                      j7169
                                                                                                      k7170
                                                                                                      g7167))
                                                                                                    (x8601
                                                                                                     (string?/c
                                                                                                      j7169
                                                                                                      k7170
                                                                                                      g7168)))
                                                                                             (f7171
                                                                                              x8603
                                                                                              x8602
                                                                                              x8601))))
                                                                                   (image?
                                                                                    j7169
                                                                                    k7170
                                                                                    x8600))))
                                                                         g8599))))
                                                             g8598))
                                                         'module
                                                         'importer
                                                         circle))
                                                       (x8596 (input))
                                                       (x8595 (input))
                                                       (x8594 (input)))
                                                (x8597 x8596 x8595 x8594)))
                                             (g8178
                                              (letrec ((x8608
                                                        ((lambda (j7176
                                                                  k7177
                                                                  f7178)
                                                           (letrec ((g8609
                                                                     (lambda (g7172
                                                                              g7173
                                                                              g7174
                                                                              g7175)
                                                                       (letrec ((g8610
                                                                                 (letrec ((x8611
                                                                                           (letrec ((x8615
                                                                                                     (real?/c
                                                                                                      j7176
                                                                                                      k7177
                                                                                                      g7172))
                                                                                                    (x8614
                                                                                                     (real?/c
                                                                                                      j7176
                                                                                                      k7177
                                                                                                      g7173))
                                                                                                    (x8613
                                                                                                     (COLOR/C
                                                                                                      j7176
                                                                                                      k7177
                                                                                                      g7174))
                                                                                                    (x8612
                                                                                                     (COLOR/C
                                                                                                      j7176
                                                                                                      k7177
                                                                                                      g7175)))
                                                                                             (f7178
                                                                                              x8615
                                                                                              x8614
                                                                                              x8613
                                                                                              x8612))))
                                                                                   (image?
                                                                                    j7176
                                                                                    k7177
                                                                                    x8611))))
                                                                         g8610))))
                                                             g8609))
                                                         'module
                                                         'importer
                                                         rectangle))
                                                       (x8607 (input))
                                                       (x8606 (input))
                                                       (x8605 (input))
                                                       (x8604 (input)))
                                                (x8608
                                                 x8607
                                                 x8606
                                                 x8605
                                                 x8604)))
                                             (g8179
                                              (letrec ((x8620
                                                        ((lambda (j7183
                                                                  k7184
                                                                  f7185)
                                                           (letrec ((g8621
                                                                     (lambda (g7179
                                                                              g7180
                                                                              g7181
                                                                              g7182)
                                                                       (letrec ((g8622
                                                                                 (letrec ((x8623
                                                                                           (letrec ((x8627
                                                                                                     (image/c
                                                                                                      j7183
                                                                                                      k7184
                                                                                                      g7179))
                                                                                                    (x8626
                                                                                                     (real?/c
                                                                                                      j7183
                                                                                                      k7184
                                                                                                      g7180))
                                                                                                    (x8625
                                                                                                     (real?/c
                                                                                                      j7183
                                                                                                      k7184
                                                                                                      g7181))
                                                                                                    (x8624
                                                                                                     (image/c
                                                                                                      j7183
                                                                                                      k7184
                                                                                                      g7182)))
                                                                                             (f7185
                                                                                              x8627
                                                                                              x8626
                                                                                              x8625
                                                                                              x8624))))
                                                                                   (image/c
                                                                                    j7183
                                                                                    k7184
                                                                                    x8623))))
                                                                         g8622))))
                                                             g8621))
                                                         'module
                                                         'importer
                                                         place-image))
                                                       (x8619 (input))
                                                       (x8618 (input))
                                                       (x8617 (input))
                                                       (x8616 (input)))
                                                (x8620
                                                 x8619
                                                 x8618
                                                 x8617
                                                 x8616)))
                                             (g8180
                                              (letrec ((x8630
                                                        ((lambda (j7188
                                                                  k7189
                                                                  f7190)
                                                           (letrec ((g8631
                                                                     (lambda (g7186
                                                                              g7187)
                                                                       (letrec ((g8632
                                                                                 (letrec ((x8633
                                                                                           (letrec ((x8635
                                                                                                     (real?/c
                                                                                                      j7188
                                                                                                      k7189
                                                                                                      g7186))
                                                                                                    (x8634
                                                                                                     (real?/c
                                                                                                      j7188
                                                                                                      k7189
                                                                                                      g7187)))
                                                                                             (f7190
                                                                                              x8635
                                                                                              x8634))))
                                                                                   (image?
                                                                                    j7188
                                                                                    k7189
                                                                                    x8633))))
                                                                         g8632))))
                                                             g8631))
                                                         'module
                                                         'importer
                                                         empty-scene))
                                                       (x8629 (input))
                                                       (x8628 (input)))
                                                (x8630 x8629 x8628)))
                                             (g8181
                                              (letrec ((x8637
                                                        ((lambda (j7192
                                                                  k7193
                                                                  f7194)
                                                           (letrec ((g8638
                                                                     (lambda (g7191)
                                                                       (letrec ((g8639
                                                                                 (letrec ((x8640
                                                                                           (letrec ((x8641
                                                                                                     (letrec ((x8642
                                                                                                               (letrec ((x8643
                                                                                                                         (listof
                                                                                                                          TETRA/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x8643))))
                                                                                                       (x8642
                                                                                                        j7192
                                                                                                        k7193
                                                                                                        g7191))))
                                                                                             (f7194
                                                                                              x8641))))
                                                                                   (TETRA/C
                                                                                    j7192
                                                                                    k7193
                                                                                    x8640))))
                                                                         g8639))))
                                                             g8638))
                                                         'module
                                                         'importer
                                                         list-pick-random))
                                                       (x8636 (input)))
                                                (x8637 x8636)))
                                             (g8182
                                              (integer?/c
                                               'module
                                               'importer
                                               neg-1))
                                             (g8183
                                              (letrec ((x8657
                                                        ((lambda (j7196
                                                                  k7197
                                                                  f7198)
                                                           (letrec ((g8658
                                                                     (lambda (g7195)
                                                                       (letrec ((g8659
                                                                                 (letrec ((x8660
                                                                                           (letrec ((x8661
                                                                                                     (WORLD/C
                                                                                                      j7196
                                                                                                      k7197
                                                                                                      g7195)))
                                                                                             (f7198
                                                                                              x8661))))
                                                                                   (image/c
                                                                                    j7196
                                                                                    k7197
                                                                                    x8660))))
                                                                         g8659))))
                                                             g8658))
                                                         'module
                                                         'importer
                                                         world->image))
                                                       (x8644
                                                        (letrec ((x8645
                                                                  (letrec ((x8648
                                                                            (letrec ((x8649
                                                                                      (letrec ((x8652
                                                                                                (letrec ((x8653
                                                                                                          (letrec ((x8656
                                                                                                                    (input))
                                                                                                                   (x8654
                                                                                                                    (letrec ((x8655
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x8655
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x8656
                                                                                                             x8654))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x8653)))
                                                                                               (x8650
                                                                                                (letrec ((x8651
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8651
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8652
                                                                                         x8650))))
                                                                              (cons
                                                                               'tetra
                                                                               x8649)))
                                                                           (x8646
                                                                            (letrec ((x8647
                                                                                      (input)))
                                                                              (cons
                                                                               x8647
                                                                               '()))))
                                                                    (cons
                                                                     x8648
                                                                     x8646))))
                                                          (cons
                                                           'world
                                                           x8645))))
                                                (x8657 x8644)))
                                             (g8184
                                              (letrec ((x8663
                                                        ((lambda (j7200
                                                                  k7201
                                                                  f7202)
                                                           (letrec ((g8664
                                                                     (lambda (g7199)
                                                                       (letrec ((g8665
                                                                                 (letrec ((x8666
                                                                                           (letrec ((x8667
                                                                                                     (BSET/C
                                                                                                      j7200
                                                                                                      k7201
                                                                                                      g7199)))
                                                                                             (f7202
                                                                                              x8667))))
                                                                                   (image/c
                                                                                    j7200
                                                                                    k7201
                                                                                    x8666))))
                                                                         g8665))))
                                                             g8664))
                                                         'module
                                                         'importer
                                                         blocks->image))
                                                       (x8662 (input)))
                                                (x8663 x8662)))
                                             (g8185
                                              (letrec ((x8675
                                                        ((lambda (j7204
                                                                  k7205
                                                                  f7206)
                                                           (letrec ((g8676
                                                                     (lambda (g7203)
                                                                       (letrec ((g8677
                                                                                 (letrec ((x8678
                                                                                           (letrec ((x8679
                                                                                                     (BLOCK/C
                                                                                                      j7204
                                                                                                      k7205
                                                                                                      g7203)))
                                                                                             (f7206
                                                                                              x8679))))
                                                                                   (image/c
                                                                                    j7204
                                                                                    k7205
                                                                                    x8678))))
                                                                         g8677))))
                                                             g8676))
                                                         'module
                                                         'importer
                                                         block->image))
                                                       (x8668
                                                        (letrec ((x8669
                                                                  (letrec ((x8674
                                                                            (input))
                                                                           (x8670
                                                                            (letrec ((x8673
                                                                                      (input))
                                                                                     (x8671
                                                                                      (letrec ((x8672
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8672
                                                                                         '()))))
                                                                              (cons
                                                                               x8673
                                                                               x8671))))
                                                                    (cons
                                                                     x8674
                                                                     x8670))))
                                                          (cons
                                                           'block
                                                           x8669))))
                                                (x8675 x8668)))
                                             (g8186
                                              (letrec ((x8688
                                                        ((lambda (j7209
                                                                  k7210
                                                                  f7211)
                                                           (letrec ((g8689
                                                                     (lambda (g7207
                                                                              g7208)
                                                                       (letrec ((g8690
                                                                                 (letrec ((x8691
                                                                                           (letrec ((x8693
                                                                                                     (BLOCK/C
                                                                                                      j7209
                                                                                                      k7210
                                                                                                      g7207))
                                                                                                    (x8692
                                                                                                     (image/c
                                                                                                      j7209
                                                                                                      k7210
                                                                                                      g7208)))
                                                                                             (f7211
                                                                                              x8693
                                                                                              x8692))))
                                                                                   (image/c
                                                                                    j7209
                                                                                    k7210
                                                                                    x8691))))
                                                                         g8690))))
                                                             g8689))
                                                         'module
                                                         'importer
                                                         place-block))
                                                       (x8681
                                                        (letrec ((x8682
                                                                  (letrec ((x8687
                                                                            (input))
                                                                           (x8683
                                                                            (letrec ((x8686
                                                                                      (input))
                                                                                     (x8684
                                                                                      (letrec ((x8685
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8685
                                                                                         '()))))
                                                                              (cons
                                                                               x8686
                                                                               x8684))))
                                                                    (cons
                                                                     x8687
                                                                     x8683))))
                                                          (cons 'block x8682)))
                                                       (x8680 (input)))
                                                (x8688 x8681 x8680)))
                                             (g8187
                                              (letrec ((x8695
                                                        ((lambda (j7213
                                                                  k7214
                                                                  f7215)
                                                           (letrec ((g8696
                                                                     (lambda (g7212)
                                                                       (letrec ((g8697
                                                                                 (letrec ((x8698
                                                                                           (letrec ((x8699
                                                                                                     (letrec ((x8700
                                                                                                               (letrec ((x8701
                                                                                                                         (listof
                                                                                                                          TETRA/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x8701))))
                                                                                                       (x8700
                                                                                                        j7213
                                                                                                        k7214
                                                                                                        g7212))))
                                                                                             (f7215
                                                                                              x8699))))
                                                                                   (WORLD/C
                                                                                    j7213
                                                                                    k7214
                                                                                    x8698))))
                                                                         g8697))))
                                                             g8696))
                                                         'module
                                                         'importer
                                                         world0))
                                                       (x8694 (input)))
                                                (x8695 x8694))))
                                      g8187))))
                          g7252))))
              g7250)))
    g7249))
